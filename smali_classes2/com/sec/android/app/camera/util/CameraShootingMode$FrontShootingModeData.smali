.class Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;
.super Ljava/lang/Object;
.source "CameraShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/CameraShootingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrontShootingModeData"
.end annotation


# instance fields
.field private final mActivityName:Ljava/lang/String;

.field private final mCameraId:I

.field private final mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

.field private final mShootingModeId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandId;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    iput p2, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->mShootingModeId:I

    iput p3, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->mCameraId:I

    iput-object p4, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->mActivityName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->mCameraId:I

    return p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->mShootingModeId:I

    return p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->mActivityName:Ljava/lang/String;

    return-object p0
.end method
