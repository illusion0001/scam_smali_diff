.class final Lcom/sec/android/app/camera/util/SmartTipsUtil$1;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_AR_DOODLE_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const-string v1, "pref_smart_tips_ar_doodle_not_used_count"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const-string v1, "pref_smart_tips_burst_shot_guide_on_quick_take_not_used_count"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_CLOSE_UP_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const-string v1, "pref_smart_tips_close_up_suggestion_not_used_count"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_DOCUMENT_SCAN:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const-string v1, "pref_smart_tips_document_scan_not_used_count"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_DUAL_SHOT:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const-string v1, "pref_smart_tips_dual_shot_not_used_count"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_LAUNCH_ZOOM_BAR:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const-string v1, "pref_launch_zoom_bar_not_used_count"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_LIVE_FOCUS:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const-string v1, "pref_smart_tips_live_focus_not_used_count"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_MY_FILTER_CREATE_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const-string v1, "pref_smart_tips_my_filter_create_button_not_used_count"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_MY_FILTER_ENTER:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const-string v1, "pref_smart_tips_my_filter_enter_not_used_count"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_QUICK_LAUNCH:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const-string v1, "pref_smart_tips_quick_launch_not_used_count"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_CAPTURE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const-string v1, "pref_smart_tips_selfie_capture_not_used_count"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_TONE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const-string v1, "pref_smart_tips_selfie_tone_guide_not_used_count"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SHOT_SUGGESTION_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const-string v1, "pref_smart_tips_shot_suggestion_guide_not_used_count"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SUPER_RESOLUTION_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const-string v1, "pref_smart_tips_super_resolution_suggestion_not_used_count"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ULTRA_WIDE_FOCUSED:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const-string v1, "pref_smart_tips_ultra_wide_focused_not_used_count"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ZOOM_IN_MIC:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const-string v1, "pref_smart_tips_zoom_in_mic_not_used_count"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
