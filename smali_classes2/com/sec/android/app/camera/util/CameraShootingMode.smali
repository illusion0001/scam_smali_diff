.class public Lcom/sec/android/app/camera/util/CameraShootingMode;
.super Ljava/lang/Object;
.source "CameraShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;,
        Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;,
        Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;
    }
.end annotation


# static fields
.field public static final COMMAND_ID:I = 0x0

.field public static final ENABLE:I = 0x3

.field public static final INFO:I = 0x6

.field public static final MORE_MODE:I = 0x4

.field public static final ORDER:I = 0x5

.field public static final PAIR_MODE_NOT_FOUND:I = -0x1

.field public static final SUPPORT_BACK:I = 0x2

.field public static final SUPPORT_FRONT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraShootingMode"

.field private static final mCommandIdShootingModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mShootingModeBackCameraIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mShootingModeIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mShootingModeMapLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeIdMap:Ljava/util/Map;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$2;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_AUTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$3;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$4;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$5;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SELECTIVE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$6;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$7;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$8;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$8;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$9;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$9;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_FOOD:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$10;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$10;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SPORTS:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$11;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$11;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$12;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$12;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$13;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$13;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$14;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$14;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_INSTAGRAM:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$15;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$15;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$16;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$16;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$17;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$17;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_DIRECTORS_VIEW:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$18;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$18;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$19;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$19;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance v2, Lcom/sec/android/app/camera/util/CameraShootingMode$20;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$20;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addShootingModeInfo()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Ljava/util/Map;)I
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getOrder(Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Ljava/util/Map;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Ljava/util/Map;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isInformation(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Ljava/util/Map;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isBigInformation(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeBackCameraIdMap:Ljava/util/Map;

    return-object v0
.end method

.method private static addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V
    .locals 10

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    new-instance v9, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;Lcom/sec/android/app/camera/util/CameraShootingMode$1;)V

    invoke-interface {v1, p0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static addShootingModeInfo()V
    .locals 7

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PHOTO:Ljava/util/Map;

    const-string v2, "back"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PHOTO:Ljava/util/Map;

    const-string v4, "front"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PHOTO:Ljava/util/Map;

    const-string v6, "Photo"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SELFIE_FOCUS:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SELFIE_FOCUS:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SELFIE_FOCUS:Ljava/util/Map;

    const-string v6, "Selfie focus"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PRO:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PRO:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PRO:Ljava/util/Map;

    const-string v6, "Pro"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PANORAMA:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PANORAMA:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PANORAMA:Ljava/util/Map;

    const-string v6, "Panorama"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SELECTIVE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SELECTIVE_FOCUS:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SELECTIVE_FOCUS:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SELECTIVE_FOCUS:Ljava/util/Map;

    const-string v6, "Selective focus"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SLOW_MOTION:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SLOW_MOTION:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SLOW_MOTION:Ljava/util/Map;

    const-string v6, "Slow motion"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SUPER_SLOW_MOTION:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SUPER_SLOW_MOTION:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SUPER_SLOW_MOTION:Ljava/util/Map;

    const-string v6, "Super slow motion"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_HYPER_LAPSE:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_HYPER_LAPSE:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_HYPER_LAPSE:Ljava/util/Map;

    const-string v6, "Hyperlapse"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_NIGHT:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_NIGHT:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_NIGHT:Ljava/util/Map;

    const-string v6, "Night"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_FOOD:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_FOOD:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_FOOD:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_FOOD:Ljava/util/Map;

    const-string v6, "Food"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_WIDE_SELFIE:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_WIDE_SELFIE:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_WIDE_SELFIE:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_WIDE_SELFIE:Ljava/util/Map;

    const-string v6, "Wide selfie"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SPORTS:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SPORTS:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SPORTS:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SPORTS:Ljava/util/Map;

    const-string v6, "Sports"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_LIVE_FOCUS:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_LIVE_FOCUS:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_LIVE_FOCUS:Ljava/util/Map;

    const-string v6, "Live focus"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_VIDEO:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_VIDEO:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_VIDEO:Ljava/util/Map;

    const-string v6, "Video"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PRO_VIDEO:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PRO_VIDEO:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PRO_VIDEO:Ljava/util/Map;

    const-string v6, "Pro video"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_INSTAGRAM:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_INSTAGRAM:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_INSTAGRAM:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_INSTAGRAM:Ljava/util/Map;

    const-string v6, "Instagram"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Ljava/util/Map;

    const-string v6, "Live focus video"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_DIRECTORS_VIEW:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_DIRECTORS_VIEW:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_DIRECTORS_VIEW:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_DIRECTORS_VIEW:Ljava/util/Map;

    const-string v6, "Directors view"

    invoke-static {v0, v6, v1, v3, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingId(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Ljava/util/Map;

    const-string v4, "Single take photo"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/sec/android/app/camera/interfaces/CommandId;

    const/16 v1, 0x23

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v2

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_MORE:Ljava/util/Map;

    const-string v4, "More"

    invoke-static {v0, v4, v2, v1, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addInfo(Lcom/sec/android/app/camera/interfaces/CommandId;Ljava/lang/String;Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;Ljava/util/Map;)V

    return-void
.end method

.method private static addShootingModeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move-object v4, p0

    move p0, v3

    :goto_0
    if-ge p0, v2, :cond_2

    aget-object v5, p1, p0

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    aget-object v8, v7, v3

    invoke-static {v4, v8}, Lcom/sec/android/app/camera/util/CameraShootingMode;->modeStrContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    aget-object v8, v7, v3

    invoke-static {p2, v8}, Lcom/sec/android/app/camera/util/CameraShootingMode;->modeStrContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x5

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4, v7}, Lcom/sec/android/app/camera/util/CameraShootingMode;->orderCountUp(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    return-void
.end method

.method private static addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V
    .locals 15

    move-object/from16 v0, p1

    const-string v1, "front"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "back"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v3, "enable"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "more"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz p3, :cond_2

    if-eqz v4, :cond_5

    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_5

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v6, :cond_5

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v1, "order"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const-string v1, "info"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v7, p0

    move-object/from16 v8, p2

    invoke-static/range {v7 .. v14}, Lcom/sec/android/app/camera/util/CameraShootingMode;->strAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public static checkInstagramPackage(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    const/16 v1, 0x1f

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isSupported(IZ)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isSupported(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_INSTAGRAM:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isEnable(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result v1

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isInstagramSharingSupported(Landroid/content/Context;)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkInstagramPackage isRearInstagramEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isInstagramInstalled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CameraShootingMode"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_INSTAGRAM:Ljava/util/Map;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_INSTAGRAM:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {p0, v1, v3, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->setEnable(Landroid/content/Context;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    return v0

    :cond_1
    return v3
.end method

.method private static getBackCameraId(Lcom/sec/android/app/camera/interfaces/CommandId;I)I
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$1300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    const-string v1, "CameraShootingMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackCameraId : Cannot find corresponding id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/CommandId;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", lensType : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, -0x1

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static getBackShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;
    .locals 3

    if-eqz p0, :cond_7

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/16 v0, 0x12

    if-eq p0, v0, :cond_3

    const/16 v0, 0x14

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.provideo"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, ""

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.singletakephoto"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_DIRECTORS_VIEW:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.directorsview"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.livefocusvideo"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_INSTAGRAM:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.instagram"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_FOOD:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.food"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.hyperlapse"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :pswitch_8
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.slowmotion"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :pswitch_9
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SELECTIVE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.selectivefocus"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.superslowmotion"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.livefocus"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SPORTS:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.sports"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.night"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.panorama"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.pro"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :cond_6
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.video"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    :cond_7
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v2, "com.sec.android.app.camera.shootingmode.photo"

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;ILjava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCameraFacingByCommandId(Lcom/sec/android/app/camera/interfaces/CommandId;I)I
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string p1, "CameraShootingMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCameraFacingByCommandId : Can\'t find "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/CommandId;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " at depot"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return p1

    :cond_1
    sget-object p1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getCameraId(Lcom/sec/android/app/camera/interfaces/CommandId;II)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p0, p2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getBackCameraId(Lcom/sec/android/app/camera/interfaces/CommandId;I)I

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getFrontCameraId(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    move-result p0

    return p0
.end method

.method public static getCaptureSize(Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "CameraShootingMode"

    if-eqz p0, :cond_1

    const-string v2, "capture-size"

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Don\'t have a predefined capture size."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string p0, "ShootingMode feature is null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getCommandId(I)Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 5

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$200(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)I

    move-result v4

    if-ne v4, p0, :cond_1

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$400(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)I

    move-result v3

    if-ne v3, p0, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$500(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommandId : Can\'t find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " at depot"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraShootingMode"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/camera/interfaces/CommandId;->EMPTY:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static getDefaultOrder(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PRO:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PANORAMA:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_FOOD:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_FOOD:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_WIDE_SELFIE:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_WIDE_SELFIE:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_NIGHT:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SPORTS:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SPORTS:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_DIRECTORS_VIEW:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_DIRECTORS_VIEW:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SUPER_SLOW_MOTION:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SLOW_MOTION:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_HYPER_LAPSE:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PRO_VIDEO:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_INSTAGRAM:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_INSTAGRAM:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SELFIE_FOCUS:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_SELECTIVE_FOCUS:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SELECTIVE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_LIVE_FOCUS:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PHOTO:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_VIDEO:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_MORE:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;ZLjava/lang/Boolean;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultShootingModeCommandId()Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-object v0
.end method

.method private static getFrontCameraId(Lcom/sec/android/app/camera/interfaces/CommandId;)I
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$500(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$1400(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getFrontShootingModeData(I)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;
    .locals 4

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_FRONT_CAMERA_DYNAMIC_FOV:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p0, :cond_6

    if-eq p0, v1, :cond_5

    const/4 v2, 0x7

    if-eq p0, v2, :cond_4

    const/16 v2, 0x12

    if-eq p0, v2, :cond_3

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-eq p0, v2, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    return-object v3

    :pswitch_0
    new-instance v1, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v3, "com.sec.android.app.camera.shootingmode.provideo"

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IILjava/lang/String;)V

    return-object v1

    :pswitch_1
    new-instance v1, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v3, ""

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IILjava/lang/String;)V

    return-object v1

    :pswitch_2
    new-instance v0, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v3, "com.sec.android.app.camera.shootingmode.singletakephoto"

    invoke-direct {v0, v2, p0, v1, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IILjava/lang/String;)V

    return-object v0

    :pswitch_3
    new-instance v1, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v3, "com.sec.android.app.camera.shootingmode.livefocusvideo"

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IILjava/lang/String;)V

    return-object v1

    :pswitch_4
    new-instance v1, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_INSTAGRAM:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v3, "com.sec.android.app.camera.shootingmode.instagram"

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IILjava/lang/String;)V

    return-object v1

    :pswitch_5
    new-instance v1, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v3, "com.sec.android.app.camera.shootingmode.selfieFocus"

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IILjava/lang/String;)V

    return-object v1

    :pswitch_6
    new-instance v1, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v3, "com.sec.android.app.camera.shootingmode.hyperlapse"

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IILjava/lang/String;)V

    return-object v1

    :pswitch_7
    new-instance v1, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v3, "com.sec.android.app.camera.shootingmode.slowmotion"

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IILjava/lang/String;)V

    return-object v1

    :pswitch_8
    new-instance v1, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SELECTIVE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v3, "com.sec.android.app.camera.shootingmode.selectivefocus"

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IILjava/lang/String;)V

    return-object v1

    :cond_1
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_FRONT_DUAL_PORTRAIT:Z

    if-eqz v0, :cond_2

    new-instance v3, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    const/16 v1, 0x16

    const-string v2, "com.sec.android.app.camera.shootingmode.livefocus"

    invoke-direct {v3, v0, p0, v1, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IILjava/lang/String;)V

    :cond_2
    return-object v3

    :cond_3
    new-instance v1, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v3, "com.sec.android.app.camera.shootingmode.night"

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IILjava/lang/String;)V

    return-object v1

    :cond_4
    new-instance v1, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_WIDE_SELFIE:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v3, "com.sec.android.app.camera.shootingmode.wideselfie"

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IILjava/lang/String;)V

    return-object v1

    :cond_5
    new-instance v1, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v3, "com.sec.android.app.camera.shootingmode.video"

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IILjava/lang/String;)V

    return-object v1

    :cond_6
    new-instance v1, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    const-string v3, "com.sec.android.app.camera.shootingmode.photo"

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IILjava/lang/String;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getId(Lcom/sec/android/app/camera/interfaces/CommandId;Z)I
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_0

    if-eqz p1, :cond_1

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$400(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_1
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$200(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_2
    sget-object p1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$500(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_4

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$400(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_4
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v2

    if-ne v2, p0, :cond_3

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$200(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_5
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInfo(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInformationOrder(Lcom/sec/android/app/camera/interfaces/CommandId;)Ljava/lang/Integer;
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_1

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$600(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Ljava/lang/Integer;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$500(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$600(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Ljava/lang/Integer;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getMoreOrderString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "more_shooting_mode_order_list_support_1000149"

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "shooting_mode_order_list_support_1000149"

    invoke-static {p0, v5, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addShootingModeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getDefaultOrder(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->removeShootingModeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->setMoreOrder(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->setMoreOrder(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getOrder(Ljava/util/Map;)I
    .locals 4

    const/4 v0, -0x1

    const-string v1, "CameraShootingMode"

    if-eqz p0, :cond_1

    const-string v2, "order"

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "Don\'t have an order value."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string p0, "ShootingMode feature is null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getOrderString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "shooting_mode_order_list_support_1000149"

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-static {v4, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "more_shooting_mode_order_list_support_1000149"

    invoke-static {p0, v5, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addShootingModeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getDefaultOrder(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->removeShootingModeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->setOrder(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {v4, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->setOrder(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPairMode(IZ)I
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    if-eqz p1, :cond_1

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$400(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)I

    move-result v3

    if-ne v3, p0, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$200(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_1
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$200(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)I

    move-result v3

    if-ne v3, p0, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$400(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_2
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getPairMode(Lcom/sec/android/app/camera/interfaces/CommandId;Z)Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    if-eqz p1, :cond_1

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$500(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$500(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getPreviewSize(Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "CameraShootingMode"

    if-eqz p0, :cond_1

    const-string v2, "preview-size"

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Don\'t have a predefined preview size."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string p0, "ShootingMode feature is null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static getShootingId(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeIdMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getShootingModeCommandId(Lcom/sec/android/app/camera/interfaces/CommandId;Z)Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 5

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v3

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v4

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    if-eq v3, p0, :cond_3

    :cond_1
    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$500(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    if-eq v3, p0, :cond_3

    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_0

    :cond_3
    sget-object v3, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$700(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$700(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v2

    if-eqz p1, :cond_4

    if-eqz v3, :cond_4

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$500(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_4
    if-nez p1, :cond_5

    if-eqz v2, :cond_5

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_5
    if-eqz v3, :cond_6

    if-nez v2, :cond_6

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$500(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_6
    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_7
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getShootingModeCommandIdByActivityName(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 5

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$800(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$900(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$500(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getDefaultShootingModeCommandId()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getShootingModeCommandIdByModeName(Ljava/lang/String;Z)Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$1000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v2

    if-eqz p1, :cond_2

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$500(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_3
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$500(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getDefaultShootingModeCommandId()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getShootingModeNameByModeId(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$200(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)I

    move-result v3

    if-ne v3, p0, :cond_1

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$1000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$400(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)I

    move-result v3

    if-ne v3, p0, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$1000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "Photo"

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getSimpleOrderString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PHOTO:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_VIDEO:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isBigInformation(Ljava/util/Map;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "big-info"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isEnable(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CommandId;)Z
    .locals 6

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getMoreOrderString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getOrderString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-eqz v5, :cond_2

    aget-object v5, v4, v1

    if-eqz v5, :cond_2

    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    aget-object v3, v4, v1

    invoke-static {v3}, Lcom/sec/android/app/camera/interfaces/CommandId;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/interfaces/CommandId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p0, 0x3

    aget-object p0, v4, p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Obtained invalid string "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraShootingMode"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v1
.end method

.method private static isInformation(Ljava/util/Map;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "info"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static isInstagramSharingSupported(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.instagram.share.ADD_TO_STORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "CameraShootingMode"

    const-string v2, "isInstagramSharingSupported : Instagram storyIntent resolveActivity null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "com.instagram.android"

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/PackageUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMoreMode(Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getCommandId(I)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result p0

    return p0
.end method

.method public static isMoreMode(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CommandId;)Z
    .locals 5

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p1, :cond_1

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$700(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p1

    :cond_1
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$500(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$700(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p1

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getMoreOrderString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CommandId;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static isMoreMode(Ljava/util/Map;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "more"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupported(IZ)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getCommandId(I)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isSupported(Lcom/sec/android/app/camera/interfaces/CommandId;Z)Z

    move-result p0

    return p0
.end method

.method public static isSupported(Lcom/sec/android/app/camera/interfaces/CommandId;Z)Z
    .locals 6

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;->access$300(Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v4

    if-ne v4, p0, :cond_4

    if-eqz p1, :cond_2

    sget-object p0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$700(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object p0

    if-eqz p0, :cond_1

    move v3, v5

    :cond_1
    monitor-exit v0

    return v3

    :cond_2
    sget-object p0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$700(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object p0

    if-eqz p0, :cond_3

    move v3, v5

    :cond_3
    monitor-exit v0

    return v3

    :cond_4
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;->access$500(Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v4

    if-ne v4, p0, :cond_0

    if-eqz p1, :cond_6

    sget-object p0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$700(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$FrontShootingModeData;

    move-result-object p0

    if-eqz p0, :cond_5

    move v3, v5

    :cond_5
    monitor-exit v0

    return v3

    :cond_6
    sget-object p0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$700(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$000(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;)Lcom/sec/android/app/camera/util/CameraShootingMode$BackShootingModeData;

    move-result-object p0

    if-eqz p0, :cond_7

    move v3, v5

    :cond_7
    monitor-exit v0

    return v3

    :cond_8
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isSupported(Ljava/lang/String;Lcom/sec/android/app/camera/interfaces/CommandId;)Z
    .locals 6

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-eqz v5, :cond_3

    aget-object v5, v4, v1

    if-eqz v5, :cond_3

    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x3

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    aget-object v3, v4, v5

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/sec/android/app/camera/interfaces/CommandId;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/android/app/camera/interfaces/CommandId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    return v5

    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Obtained invalid string "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraShootingMode"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public static isSupported(Ljava/util/Map;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "front"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_1
    const-string p1, "back"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const-string p1, "enable"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static modeStrContains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static orderCountUp(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->orderCountUp(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeShootingModeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move-object v4, p0

    move p0, v3

    :goto_0
    if-ge p0, v2, :cond_1

    aget-object v5, v1, p0

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-static {p1, v5}, Lcom/sec/android/app/camera/util/CameraShootingMode;->modeStrContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    if-eq v6, v7, :cond_0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public static resetShootingModeInfo()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/sec/android/app/camera/util/CameraShootingMode;->addShootingModeInfo()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setEnable(Landroid/content/Context;Ljava/util/Map;Lcom/sec/android/app/camera/interfaces/CommandId;Z)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enable"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getMoreOrderString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getOrderString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/interfaces/CommandId;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/android/app/camera/util/CameraShootingMode;->modeStrContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/interfaces/CommandId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->modeStrContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v3

    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ","

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/interfaces/CommandId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->modeStrContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v14, 0x0

    if-nez v2, :cond_1

    const-string v2, "front"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v2, "back"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v2, "more"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v2, "order"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v2, "info"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v3, v11

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v10}, Lcom/sec/android/app/camera/util/CameraShootingMode;->strAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    array-length v1, v13

    :goto_1
    if-ge v14, v1, :cond_3

    aget-object v2, v13, v14

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    array-length v1, v13

    :goto_2
    if-ge v14, v1, :cond_3

    aget-object v2, v13, v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/interfaces/CommandId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->modeStrContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v1, p2

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->setMoreOrder(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->setOrder(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_5
    move-object/from16 v1, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/interfaces/CommandId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraShootingMode"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setMoreMode(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/util/CameraShootingMode;->mCommandIdShootingModeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->access$1102(Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;Z)Z

    return-void
.end method

.method public static setMoreOrder(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "more_shooting_mode_order_list_support_1000149"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setOrder(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "shooting_mode_order_list_support_1000149"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static strAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
