.class final Lcom/sec/android/app/camera/util/LinkAction$2;
.super Ljava/util/HashMap;
.source "LinkAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/LinkAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/google/zxing/client/result/ParsedResultType;",
        "Lcom/sec/android/app/camera/util/LinkAction$LinkActor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->TEL:Lcom/google/zxing/client/result/ParsedResultType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$OjJq4hwlvHa90iC-V3LufFcorSc;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$OjJq4hwlvHa90iC-V3LufFcorSc;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/LinkAction$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$JH3HvqlPL49tNJXSNXkstXw3uns;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$JH3HvqlPL49tNJXSNXkstXw3uns;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/LinkAction$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$E5_Wt1DA3tXBSpn19_quCyF58Pw;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$E5_Wt1DA3tXBSpn19_quCyF58Pw;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/LinkAction$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$IhgI5PyIHkaLl70KfdmeF1fitss;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$IhgI5PyIHkaLl70KfdmeF1fitss;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/LinkAction$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$UWi3tkSnG_NFQHc2RQQFz6ymHFk;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$UWi3tkSnG_NFQHc2RQQFz6ymHFk;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/LinkAction$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->IOT:Lcom/google/zxing/client/result/ParsedResultType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$uxw7O6m7nGANreMMjPjINK1Wakg;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$uxw7O6m7nGANreMMjPjINK1Wakg;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/LinkAction$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$b7KfJcxrOhzfugcIyH4d3bVWxP8;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$b7KfJcxrOhzfugcIyH4d3bVWxP8;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/LinkAction$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->GEO:Lcom/google/zxing/client/result/ParsedResultType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$pE9B22rbv0CP6vKACpRSHqfKYl4;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$pE9B22rbv0CP6vKACpRSHqfKYl4;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/LinkAction$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->WIFI:Lcom/google/zxing/client/result/ParsedResultType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$HaS1zZpRZVYJVYsO1X6Ehon82yk;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$HaS1zZpRZVYJVYsO1X6Ehon82yk;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/LinkAction$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->TEXT:Lcom/google/zxing/client/result/ParsedResultType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$kcTkhYZEA6RkZmWqwTo3oaLXgXw;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$kcTkhYZEA6RkZmWqwTo3oaLXgXw;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/LinkAction$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$ue6PNpg6E4t9EwUY7qzGtFnyxEs;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$ue6PNpg6E4t9EwUY7qzGtFnyxEs;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/LinkAction$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->ISBN:Lcom/google/zxing/client/result/ParsedResultType;

    sget-object v1, Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$FQ1QwvJpr4wSJpcrULLyG6ggt4I;->INSTANCE:Lcom/sec/android/app/camera/util/-$$Lambda$LinkAction$2$FQ1QwvJpr4wSJpcrULLyG6ggt4I;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/LinkAction$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->access$1000(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->access$900(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic lambda$new$10(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->access$000(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic lambda$new$11(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->access$000(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic lambda$new$2(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->access$800(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic lambda$new$3(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->access$700(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic lambda$new$4(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->access$600(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic lambda$new$5(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->access$500(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic lambda$new$6(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->access$400(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic lambda$new$7(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->access$300(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic lambda$new$8(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->access$200(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic lambda$new$9(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->access$100(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method
