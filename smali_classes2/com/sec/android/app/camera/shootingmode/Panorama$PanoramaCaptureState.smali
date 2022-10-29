.class final enum Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;
.super Ljava/lang/Enum;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Panorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PanoramaCaptureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

.field public static final enum CAPTURING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

.field public static final enum IDLE:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

.field public static final enum STARTING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

.field public static final enum STOPPING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->IDLE:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    const/4 v2, 0x1

    const-string v3, "STARTING"

    invoke-direct {v0, v3, v2}, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->STARTING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    const/4 v3, 0x2

    const-string v4, "CAPTURING"

    invoke-direct {v0, v4, v3}, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    const/4 v4, 0x3

    const-string v5, "STOPPING"

    invoke-direct {v0, v5, v4}, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->STOPPING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    sget-object v5, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->IDLE:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->STARTING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->STOPPING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    return-object v0
.end method
