.class final Lcom/sec/android/app/camera/util/IntelligentUtil$2;
.super Ljava/util/HashMap;
.source "IntelligentUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/IntelligentUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;->EVENT_SHAKE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/IntelligentUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;->EVENT_SHAKE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/IntelligentUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;->EVENT_DIRTY_LENS:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/IntelligentUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;->EVENT_CLOSED_EYES:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/IntelligentUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;->EVENT_BLURRED_FACE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/IntelligentUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;->EVENT_BACK_LIGHT:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/IntelligentUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
