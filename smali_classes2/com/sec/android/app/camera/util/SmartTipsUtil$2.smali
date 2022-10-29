.class final Lcom/sec/android/app/camera/util/SmartTipsUtil$2;
.super Ljava/util/HashMap;
.source "SmartTipsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/SmartTipsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_AR_DOODLE_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_CLOSE_UP_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_DOCUMENT_SCAN:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_DUAL_SHOT:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_LAUNCH_ZOOM_BAR:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_LIVE_FOCUS:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_MY_FILTER_ENTER:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_MY_FILTER_CREATE_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_QUICK_LAUNCH:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_CAPTURE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_TONE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SHOT_SUGGESTION_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SUPER_RESOLUTION_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ULTRA_WIDE_FOCUSED:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ZOOM_IN_MIC:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
