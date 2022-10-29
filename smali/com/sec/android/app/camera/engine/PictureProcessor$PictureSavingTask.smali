.class Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;
.super Ljava/lang/Object;
.source "PictureProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/PictureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureSavingTask"
.end annotation


# instance fields
.field private mBurstCaptureCount:I

.field private mBurstCaptureGroupId:I

.field private final mDateTaken:J

.field private final mDirectory:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;

.field private final mFilePath:Ljava/lang/String;

.field private final mInfo:Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;

.field private final mIsMotionPhotoEnabled:Z

.field private mOrientation:I

.field private final mPicture:Ljava/nio/ByteBuffer;

.field private mSize:Landroid/util/Size;

.field private final mStorage:I

.field private final mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/lang/String;Ljava/lang/String;JILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mIsMotionPhotoEnabled:Z

    iput-object p7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p7}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getPictureSavingStorage(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    iput-object p3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSize:Landroid/util/Size;

    iput p6, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mInfo:Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/nio/ByteBuffer;Landroid/util/Size;JIIILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mIsMotionPhotoEnabled:Z

    iput p7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    iput p8, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    iput-object p9, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p9}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getPictureSavingStorage(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    iget p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    invoke-static {p1}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->getFileName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSize:Landroid/util/Size;

    iput p6, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mInfo:Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/nio/ByteBuffer;Landroid/util/Size;JILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mIsMotionPhotoEnabled:Z

    iput-object p7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p7}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getPictureSavingStorage(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    iget p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    invoke-static {p1}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->getFileName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSize:Landroid/util/Size;

    iput p6, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mInfo:Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/nio/ByteBuffer;Landroid/util/Size;JILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    iput v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mIsMotionPhotoEnabled:Z

    iput-object p7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p7}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getPictureSavingStorage(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    invoke-direct {p0, p7}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->getDirectoryName(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->getFileName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSize:Landroid/util/Size;

    iput p6, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    iput-object p8, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mInfo:Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;

    return-void
.end method

.method private getDirectoryName(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->SMART_SCAN:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$400(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$400(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    invoke-static {p0}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFileName()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/sec/android/app/camera/engine/PictureProcessor$1;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$PictureSavingType:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const-string p0, "smart_scan_temp_image"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported picture saving type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/ImageUtils;->createFileName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "%03d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getFileExtension(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/Util;->regenerateFileNameIfExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->createFileName(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getFileExtension(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/Util;->regenerateFileNameIfExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMimeType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/engine/PictureProcessor$1;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$PictureSavingType:[I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "image/gif"

    return-object p0

    :cond_1
    const-string p0, "image/x-adobe-dng"

    return-object p0

    :cond_2
    const-string p0, "image/heic"

    return-object p0

    :cond_3
    const-string p0, "image/jpeg"

    return-object p0
.end method

.method private getWideLensCorrectionSefData()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mInfo:Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;

    const/4 v1, 0x0

    const-string v2, "PictureProcessor"

    if-nez v0, :cond_0

    const-string p0, "getWideLensCorrectionSefData : Returned because PictureDataInfo is invalid"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_CONFIG_SWLENS_DISTORTION_CORRECTION"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    const-string p0, "getWideLensCorrectionSefData : Returned because featureArray is invalid"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mInfo:Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v5}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$500(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWideLensCorrection()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mInfo:Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;->getProcessedOption()I

    move-result v6

    sget-object v7, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->CONTROL_RUNNING_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v4, v7}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/engine/CommonEngine;->getSamsungSensorInfoSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getWideLensCorrectionSefData : featureArray="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", wideLensCorrection="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", cameraId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", sensorName="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", processedOption="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    aget-object v8, v0, v7

    invoke-static {p0, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p0, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    and-int/lit8 p0, v6, 0x1

    if-eq p0, v7, :cond_4

    :cond_3
    sget-object p0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v4, p0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWideLensCorrectionSefData : sefData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_4
    return-object v1
.end method

.method private insertToDB(Landroid/content/ContentValues;)V
    .locals 8
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PictureProcessor"

    const-string v1, "InsertToDB"

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture - InsertToDB : Start["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CameraPerformance"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Landroid/media/ExifInterface;

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "Orientation"

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/ExifUtil;->convertExifOrientationToMediaOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    new-instance v1, Landroid/util/Size;

    const-string v5, "ImageWidth"

    invoke-virtual {v4, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "ImageLength"

    invoke-virtual {v4, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v1, v5, v6}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSize:Landroid/util/Size;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v7, v4

    move-object v4, v1

    move-object v1, v7

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertToDB : Could not read exif tags - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0, p1, v4}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->setContentValues(Landroid/content/ContentValues;Landroid/media/ExifInterface;)V

    iget-boolean v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mIsMotionPhotoEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->HEIF:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    if-ne v1, v4, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->store(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$700(Lcom/sec/android/app/camera/engine/PictureProcessor;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/StorageUtils;->getContentUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    if-nez p1, :cond_2

    const-string p1, "InsertToDB : fileUri is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<GATE-M>PICTURE_TAKEN : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " </GATE-M>"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GATE"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Capture - InsertToDB : End["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method private insertToDBForBurstCapture()V
    .locals 10

    const-string v0, "InsertToDBForBurstCapture"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture - InsertToDBForBurstCapture : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraPerformance"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$600(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$600(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$600(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/Stack;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ContentValues;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "PictureProcessor"

    const-string v7, "insertToDBForBurstCapture : bulkInsert - start"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v7}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$700(Lcom/sec/android/app/camera/engine/PictureProcessor;)Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertToDBForBurstCapture : bulkInsert - end["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms] , return value of bulkInsert "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "burstShot"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v4}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$700(Lcom/sec/android/app/camera/engine/PictureProcessor;)Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    invoke-static {v3, v5}, Lcom/sec/android/app/camera/util/StorageUtils;->getContentUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string p0, "insertToDBForBurstCapture : fileUri is null"

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$600(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/Stack;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Stack;->removeAllElements()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture - InsertToDBForBurstCapture : End["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method private insertToDBForRawImage(Landroid/content/ContentValues;)V
    .locals 6

    const-string v0, "PictureProcessor"

    const-string v1, "InsertToDBForRawImage"

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture - InsertToDBForRawImage : Start["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CameraPerformance"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->setContentValues(Landroid/content/ContentValues;Landroid/media/ExifInterface;)V

    :try_start_0
    const-string v1, "DB Insert"

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    const-string v1, "insertToDBForRawImage : DB Insert - start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$700(Lcom/sec/android/app/camera/engine/PictureProcessor;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/StorageUtils;->getContentUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    const-string p1, "insertToDBForRawImage : DB Insert - end"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p1, "insertToDBForRawImage : ContentResolver insert failed"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    goto :goto_1

    :catch_1
    :try_start_2
    const-string p1, "insertToDBForRawImage : Not enough space in database"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$400(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    const v1, 0x7f11031d

    const/4 v4, 0x0

    invoke-static {p1, v1, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    if-nez p0, :cond_0

    const-string p0, "InsertToDBForRawImage : fileUri is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Capture - InsertToDBForRawImage : End["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void

    :goto_2
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    throw p0
.end method

.method private saveBurstJpegImage()Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/util/ImageUtils;->writeImage(Ljava/lang/String;Ljava/lang/String;JLjava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string v0, "saveBurstJpegImage : failed to writing image to file."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->setContentValues(Landroid/content/ContentValues;Landroid/media/ExifInterface;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$600(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/Stack;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method private saveImage()Z
    .locals 7

    const-string v0, "saveImage"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture - SaveImage : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraPerformance"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/sec/android/app/camera/util/ImageUtils;->writeImage(Ljava/lang/String;Ljava/lang/String;JLjava/nio/ByteBuffer;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capture - SaveImage : End["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/LastContentData;->clearPictureData()V

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string v0, "SaveImage : failed to writing image to file."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$500(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->insertToDB(Landroid/content/ContentValues;)V

    return v1
.end method

.method private saveRawImage()Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture - SaveRawImage : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraPerformance"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveRawImage : Write to file - start, filename="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PictureProcessor"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-static {v0, v4, v5, v6, v7}, Lcom/sec/android/app/camera/util/ImageUtils;->writeImage(Ljava/lang/String;Ljava/lang/String;JLjava/nio/ByteBuffer;)Z

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveRawImage : Write to file - end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Capture - SaveRawImage : End["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string p0, "saveRawImage : failed to writing image to file."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->insertToDBForRawImage(Landroid/content/ContentValues;)V

    const/4 p0, 0x1

    return p0
.end method

.method private saveSmartScanImage()Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture - saveSmartScanImage : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraPerformance"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/sec/android/app/camera/util/ImageUtils;->writeImage(Ljava/lang/String;Ljava/lang/String;JLjava/nio/ByteBuffer;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capture - saveSmartScanImage : End["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/LastContentData;->clearPictureData()V

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string v0, "saveSmartScanImage : failed to writing image to file."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private setContentValues(Landroid/content/ContentValues;Landroid/media/ExifInterface;)V
    .locals 7
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    const-string v1, "_display_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "date_modified"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mime_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/StorageUtils;->replaceSDStoragePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_data"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "width"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "height"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "orientation"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v0, v1, [F

    const-string v2, "longitude"

    const-string v3, "latitude"

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    aget p2, v0, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    aget p2, v0, v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$400(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->isLocationAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_1
    :goto_0
    sget-object p2, Lcom/sec/android/app/camera/engine/PictureProcessor$1;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$PictureSavingType:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v0

    aget p2, p2, v0

    if-eq p2, v4, :cond_4

    if-eq p2, v1, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-static {p2, v0, v1}, Lcom/sec/android/app/camera/util/SemExtendedFormatUtils;->insertUTCToSEF(Ljava/io/File;J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$400(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/android/app/camera/util/SemExtendedFormatUtils;->insertMobileCountryCodeDataToSEF(Landroid/content/Context;Ljava/io/File;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getAgifBurstCaptureController()Lcom/sec/android/app/camera/engine/AgifCaptureController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->prepareDBUpdate(Landroid/content/ContentValues;Ljava/io/File;)V

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-static {p2, v0, v1}, Lcom/sec/android/app/camera/util/SemExtendedFormatUtils;->insertUTCToSEF(Ljava/io/File;J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$400(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/android/app/camera/util/SemExtendedFormatUtils;->insertMobileCountryCodeDataToSEF(Landroid/content/Context;Ljava/io/File;)V

    iget v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    invoke-static {p2, v0}, Lcom/sec/android/app/camera/util/SemExtendedFormatUtils;->insertBurstInfoToSEF(Ljava/io/File;I)V

    iget p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "burst_group_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "group_type"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_4
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-static {p2, v0, v1}, Lcom/sec/android/app/camera/util/SemExtendedFormatUtils;->insertUTCToSEF(Ljava/io/File;J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$400(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/android/app/camera/util/SemExtendedFormatUtils;->insertMobileCountryCodeDataToSEF(Landroid/content/Context;Ljava/io/File;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->getWideLensCorrectionSefData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/16 v1, 0xb60

    const-string v2, "UltraWide_PhotoEditor_Data"

    invoke-static {p2, v2, v0, v1}, Lcom/sec/android/app/camera/util/SemExtendedFormatUtils;->addData(Ljava/io/File;Ljava/lang/String;[BI)I

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$800(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$800(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;->onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)V

    :cond_6
    :goto_1
    new-instance p2, Ljava/io/File;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p2, "_size"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$PictureProcessor$PictureSavingTask()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onPictureSavingFailed()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$run$1$PictureProcessor$PictureSavingTask(Lcom/sec/android/app/camera/engine/LastContentData;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onPictureSaved(Lcom/sec/android/app/camera/interfaces/Engine$ContentData;Z)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 13

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/LastContentData;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$500(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/LastContentData;->clearPictureData()V

    move v11, v2

    move-object v8, v3

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/engine/PictureProcessor$1;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$PictureSavingType:[I

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_0
    move v12, v4

    move v4, v2

    move v2, v12

    goto :goto_3

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->saveSmartScanImage()Z

    move-result v1

    move v4, v2

    :goto_1
    move v2, v1

    goto :goto_3

    :pswitch_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->insertToDB(Landroid/content/ContentValues;)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->saveRawImage()Z

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    :goto_2
    move v4, v2

    goto :goto_3

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$600(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->insertToDBForBurstCapture()V

    goto :goto_2

    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->saveBurstJpegImage()Z

    return-void

    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->insertToDB(Landroid/content/ContentValues;)V

    goto :goto_3

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->saveImage()Z

    move-result v1

    goto :goto_1

    :goto_3
    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$400(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/util/BroadcastUtil;->sendNewPictureBroadcast(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_3
    move-object v8, v3

    move v11, v4

    :goto_4
    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureProcessor$PictureSavingTask$TOgza_B_5Y6MXhQzDd5SnvXHe4s;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureProcessor$PictureSavingTask$TOgza_B_5Y6MXhQzDd5SnvXHe4s;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    iget v6, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    sget-object v9, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->IMAGE:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    iget v10, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    move-object v1, v0

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/camera/engine/LastContentData;->updateLastContentData(Ljava/nio/ByteBuffer;Ljava/lang/String;JILandroid/net/Uri;Landroid/net/Uri;Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureProcessor$PictureSavingTask$78ovb4fRAPGBNIIm1kjkEyEp7Q8;

    invoke-direct {v2, p0, v0, v11}, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureProcessor$PictureSavingTask$78ovb4fRAPGBNIIm1kjkEyEp7Q8;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;Lcom/sec/android/app/camera/engine/LastContentData;Z)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
