.class public final enum Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;
.super Ljava/lang/Enum;
.source "QrCodeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/QrCodeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QrViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum CALENDAR:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum CONTACTS:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum EMAIL:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum ESIM_GALAXY_WEARABLE:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum ESIM_SIM_CARD_MANAGER:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum FACEBOOK:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum INSTAGRAM:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum ISBN:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum MAP:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum NONE:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum PHONE_NUMBER:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum PLAY_STORE:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum PRODUCT:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum SAMSUNG_CMC:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum SAMSUNG_HEALTH:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum SAMSUNG_IOT:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum SAMSUNG_PAY:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum SMS:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum TEXT:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum URL:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

.field public static final enum WIFI:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->NONE:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/4 v2, 0x1

    const-string v3, "URL"

    invoke-direct {v0, v3, v2}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->URL:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/4 v3, 0x2

    const-string v4, "PLAY_STORE"

    invoke-direct {v0, v4, v3}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->PLAY_STORE:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/4 v4, 0x3

    const-string v5, "PHONE_NUMBER"

    invoke-direct {v0, v5, v4}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->PHONE_NUMBER:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/4 v5, 0x4

    const-string v6, "TEXT"

    invoke-direct {v0, v6, v5}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->TEXT:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/4 v6, 0x5

    const-string v7, "SMS"

    invoke-direct {v0, v7, v6}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SMS:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/4 v7, 0x6

    const-string v8, "EMAIL"

    invoke-direct {v0, v8, v7}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->EMAIL:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/4 v8, 0x7

    const-string v9, "CONTACTS"

    invoke-direct {v0, v9, v8}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->CONTACTS:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/16 v9, 0x8

    const-string v10, "CALENDAR"

    invoke-direct {v0, v10, v9}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->CALENDAR:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/16 v10, 0x9

    const-string v11, "WIFI"

    invoke-direct {v0, v11, v10}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->WIFI:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/16 v11, 0xa

    const-string v12, "MAP"

    invoke-direct {v0, v12, v11}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->MAP:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/16 v12, 0xb

    const-string v13, "SAMSUNG_PAY"

    invoke-direct {v0, v13, v12}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_PAY:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/16 v13, 0xc

    const-string v14, "SAMSUNG_IOT"

    invoke-direct {v0, v14, v13}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_IOT:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/16 v14, 0xd

    const-string v15, "SAMSUNG_HEALTH"

    invoke-direct {v0, v15, v14}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_HEALTH:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/16 v15, 0xe

    const-string v14, "SAMSUNG_CMC"

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_CMC:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const-string v14, "ESIM_GALAXY_WEARABLE"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->ESIM_GALAXY_WEARABLE:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const-string v14, "ESIM_SIM_CARD_MANAGER"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->ESIM_SIM_CARD_MANAGER:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const-string v14, "INSTAGRAM"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->INSTAGRAM:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const-string v14, "FACEBOOK"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->FACEBOOK:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const-string v14, "PRODUCT"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->PRODUCT:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const-string v14, "ISBN"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->ISBN:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v14, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->NONE:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    aput-object v14, v0, v1

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->URL:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->PLAY_STORE:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->PHONE_NUMBER:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->TEXT:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SMS:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->EMAIL:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->CONTACTS:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->CALENDAR:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->WIFI:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->MAP:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_PAY:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_IOT:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_HEALTH:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_CMC:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->ESIM_GALAXY_WEARABLE:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->ESIM_SIM_CARD_MANAGER:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->INSTAGRAM:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->FACEBOOK:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->PRODUCT:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->ISBN:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->$VALUES:[Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->$VALUES:[Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object v0
.end method
