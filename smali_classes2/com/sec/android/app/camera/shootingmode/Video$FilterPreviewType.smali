.class final enum Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;
.super Ljava/lang/Enum;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FilterPreviewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

.field public static final enum FILTER:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

.field public static final enum MY_FILTER:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

.field public static final enum NONE:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->NONE:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    const/4 v2, 0x1

    const-string v3, "FILTER"

    invoke-direct {v0, v3, v2}, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->FILTER:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    const/4 v3, 0x2

    const-string v4, "MY_FILTER"

    invoke-direct {v0, v4, v3}, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->MY_FILTER:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    sget-object v4, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->NONE:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->FILTER:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->MY_FILTER:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    return-object v0
.end method
