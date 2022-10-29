.class Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;
.super Ljava/lang/Object;
.source "CameraShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/CameraShootingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackShootingModeData"
.end annotation


# instance fields
.field private final mActivityName:Ljava/lang/String;

.field private final mCameraIdList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

.field private final mShootingModeId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    iput p2, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->mShootingModeId:I

    invoke-static {}, Lcom/sec/android/app/camera/util/CameraShootingMode;->access$1900()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->mCameraIdList:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->mActivityName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->mCameraIdList:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->mShootingModeId:I

    return p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->mActivityName:Ljava/lang/String;

    return-object p0
.end method
