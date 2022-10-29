.class final Lcom/sec/android/app/camera/util/QrCodeUtil$2;
.super Ljava/util/HashMap;
.source "QrCodeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/QrCodeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;",
        "Lcom/sec/android/app/camera/util/QrCodeUtil$PopUpTextUpdater;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->URL:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$PyEd6oRjV5Fsen368HJn5aE_N6w;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$PyEd6oRjV5Fsen368HJn5aE_N6w;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->PLAY_STORE:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$N_ADGs5qL7qtLrZm-1qG9X0lVhY;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$N_ADGs5qL7qtLrZm-1qG9X0lVhY;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->PHONE_NUMBER:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$mgdMcLkpaj0NCwVicfepMmO74j0;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$mgdMcLkpaj0NCwVicfepMmO74j0;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->TEXT:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$7obU7MitcJO_VIo36_8NeItezdo;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$7obU7MitcJO_VIo36_8NeItezdo;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SMS:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$nKQDgOQXRXPN9Dk5EPwclfJdPEg;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$nKQDgOQXRXPN9Dk5EPwclfJdPEg;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->EMAIL:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$zFgZtlA7VbiL39LAD4Y68xRoGCE;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$zFgZtlA7VbiL39LAD4Y68xRoGCE;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->CONTACTS:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$h_2rSqxpEj5ueHvc-TGB9_pcqV4;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$h_2rSqxpEj5ueHvc-TGB9_pcqV4;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->CALENDAR:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$DkmyGDO2GfEdV27dZNeaQb6MX4k;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$DkmyGDO2GfEdV27dZNeaQb6MX4k;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->WIFI:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$B18oxmohTL6LOcRzH7eUJn7qE6c;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$B18oxmohTL6LOcRzH7eUJn7qE6c;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->MAP:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$ly2TuUiJWHjQGJwnerNcsaHbZSA;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$ly2TuUiJWHjQGJwnerNcsaHbZSA;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_PAY:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$j-_gUlbpcXOImKSOUEF_3XleyJ8;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$j-_gUlbpcXOImKSOUEF_3XleyJ8;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_IOT:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$-pDkilR0zMJzCtXhpyr87dQJtS8;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$-pDkilR0zMJzCtXhpyr87dQJtS8;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_HEALTH:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$vXnRxTWgZ_PsFYboQEcDMQN6dl0;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$vXnRxTWgZ_PsFYboQEcDMQN6dl0;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_CMC:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$wXHsMY0u8ci1H5lillVfrGVH790;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$wXHsMY0u8ci1H5lillVfrGVH790;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->ESIM_GALAXY_WEARABLE:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$oK4bjYH3LEi2vygwRW52HLNYV2o;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$oK4bjYH3LEi2vygwRW52HLNYV2o;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->ESIM_SIM_CARD_MANAGER:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$Xu7J-1umO42MjY8BH4pHvNeEN2Y;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$Xu7J-1umO42MjY8BH4pHvNeEN2Y;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->INSTAGRAM:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$Uh6DjW8z_EmbFNP_vjMxMoEqCXM;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$Uh6DjW8z_EmbFNP_vjMxMoEqCXM;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->FACEBOOK:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$E78QzYr9zaTTF6jmnsD36O0Sj5k;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$E78QzYr9zaTTF6jmnsD36O0Sj5k;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->PRODUCT:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$ujh0aGxHQRSzOdnp7wlsWqc3I58;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$ujh0aGxHQRSzOdnp7wlsWqc3I58;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->ISBN:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$E-GzWPhKyj43e9Gnn5rjeyQ76rc;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$QrCodeUtil$2$E-GzWPhKyj43e9Gnn5rjeyQ76rc;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$1900(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$1800(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$10(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$900(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$11(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$800(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$12(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$700(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$13(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$600(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$14(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$500(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$15(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$400(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$16(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$300(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$17(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$200(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$18(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$100(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$19(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$000(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$2(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$1700(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$3(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$1600(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$4(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$1500(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$5(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$1400(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$6(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$1300(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$7(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$1200(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$8(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$1100(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$9(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->access$1000(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method
