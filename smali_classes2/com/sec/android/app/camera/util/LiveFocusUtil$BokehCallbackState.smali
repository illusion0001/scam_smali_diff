.class public final enum Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;
.super Ljava/lang/Enum;
.source "LiveFocusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/LiveFocusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BokehCallbackState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

.field public static final enum ERROR_DISTANCE_TOO_CLOSE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

.field public static final enum ERROR_DISTANCE_TOO_FAR:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

.field public static final enum ERROR_INVALID_DEPTH:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

.field public static final enum ERROR_LENS_PARTIALLY_COVERED:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

.field public static final enum ERROR_LOW_LIGHT_CONDITION:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

.field public static final enum ERROR_NO_FACE_DETECTED:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

.field public static final enum NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

.field public static final enum SUCCESS:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;


# instance fields
.field private final mMetadata:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    new-instance v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    const/4 v2, 0x1

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v2, v1}, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->SUCCESS:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    new-instance v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    const/4 v3, 0x2

    const-string v4, "ERROR_INVALID_DEPTH"

    invoke-direct {v0, v4, v3, v2}, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_INVALID_DEPTH:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    new-instance v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    const/4 v4, 0x3

    const-string v5, "ERROR_DISTANCE_TOO_FAR"

    const/16 v6, 0xb

    invoke-direct {v0, v5, v4, v6}, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_DISTANCE_TOO_FAR:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    new-instance v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    const/4 v5, 0x4

    const-string v6, "ERROR_DISTANCE_TOO_CLOSE"

    const/16 v7, 0xc

    invoke-direct {v0, v6, v5, v7}, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_DISTANCE_TOO_CLOSE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    new-instance v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    const/4 v6, 0x5

    const-string v7, "ERROR_LENS_PARTIALLY_COVERED"

    const/16 v8, 0x15

    invoke-direct {v0, v7, v6, v8}, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_LENS_PARTIALLY_COVERED:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    new-instance v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    const/4 v7, 0x6

    const-string v8, "ERROR_LOW_LIGHT_CONDITION"

    const/16 v9, 0x1f

    invoke-direct {v0, v8, v7, v9}, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_LOW_LIGHT_CONDITION:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    new-instance v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    const/4 v8, 0x7

    const-string v9, "ERROR_NO_FACE_DETECTED"

    const/16 v10, 0x29

    invoke-direct {v0, v9, v8, v10}, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_NO_FACE_DETECTED:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    sget-object v9, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    aput-object v9, v0, v1

    sget-object v1, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->SUCCESS:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_INVALID_DEPTH:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_DISTANCE_TOO_FAR:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_DISTANCE_TOO_CLOSE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_LENS_PARTIALLY_COVERED:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_LOW_LIGHT_CONDITION:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_NO_FACE_DETECTED:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->$VALUES:[Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->mMetadata:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->mMetadata:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->$VALUES:[Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    return-object v0
.end method
