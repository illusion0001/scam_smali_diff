.class public Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;
.super Ljava/lang/Object;
.source "CameraShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/CameraShootingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShootingModeInfo"
.end annotation


# instance fields
.field private final mBackData:Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

.field private final mBigInformation:Z

.field private final mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

.field private final mFrontData:Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

.field private final mInformation:Ljava/lang/Integer;

.field private mIsMoreMode:Z

.field private final mModeName:Ljava/lang/String;

.field private final mOrder:I


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    iput-object p2, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mModeName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mBackData:Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    iput-object p4, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mFrontData:Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    invoke-static {p5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->access$1500(Ljava/util/Map;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mOrder:I

    invoke-static {p5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->access$1600(Ljava/util/Map;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mIsMoreMode:Z

    invoke-static {p5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->access$1700(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mInformation:Ljava/lang/Integer;

    invoke-static {p5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->access$1800(Ljava/util/Map;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mBigInformation:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;Lcom/sec/android/app/camera/util/CameraShootingMode$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mBackData:Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mFrontData:Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mModeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mIsMoreMode:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mInformation:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-object p0
.end method


# virtual methods
.method public getCommandId()Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-object p0
.end method

.method public isBackSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mBackData:Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBigInformationSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mBigInformation:Z

    return p0
.end method

.method public isFrontSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mFrontData:Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInformationSupported()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mInformation:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMoreMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->mIsMoreMode:Z

    return-void
.end method
