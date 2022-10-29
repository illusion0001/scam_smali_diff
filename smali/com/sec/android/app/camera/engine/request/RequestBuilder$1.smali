.class final Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;
.super Ljava/util/HashMap;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/request/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/sec/android/app/camera/engine/request/RequestId;",
        "Lcom/sec/android/app/camera/engine/request/RequestBuilder$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->OPEN_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$gyTwCl4jnqdTU2hWPdKLqEW_jdc;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$gyTwCl4jnqdTU2hWPdKLqEW_jdc;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->HANDLE_CAMERA_ERROR:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$kJ2IzEBuNqbW3k9j1X4dajx9s1I;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$kJ2IzEBuNqbW3k9j1X4dajx9s1I;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CLOSE_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$dil7qhFJuwIUp88YnBtiEiw9Mg4;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$dil7qhFJuwIUp88YnBtiEiw9Mg4;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->INITIALIZE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$YGZQIloI2JHilxwTl5X45rQUbnA;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$YGZQIloI2JHilxwTl5X45rQUbnA;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->UPDATE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$UbZE-7e-a46B-wO4wxePNsrNmLw;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$UbZE-7e-a46B-wO4wxePNsrNmLw;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$Y0Q1wcO0eDImS4ZDzc6xU9_ij58;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$Y0Q1wcO0eDImS4ZDzc6xU9_ij58;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_EXTRA_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$Ybm9403B6kmZrJ3YVI9kIfmt4FY;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$Ybm9403B6kmZrJ3YVI9kIfmt4FY;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$yFlDCDQJf0jAArJcfbWMJgzaQXI;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$yFlDCDQJf0jAArJcfbWMJgzaQXI;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$3UpQ49HwBm1hdOChYcIP60bcozI;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$3UpQ49HwBm1hdOChYcIP60bcozI;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$wIk2Kd78OhkYS082RSSrAea12vU;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$wIk2Kd78OhkYS082RSSrAea12vU;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CONNECT_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$id3VfghgE2RNo16mByKpzxwKdKY;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$id3VfghgE2RNo16mByKpzxwKdKY;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_SWITCH_CAMERA_PREPARED:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$NwNPTriMbFfH7V9paTxg8QEHPZA;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$NwNPTriMbFfH7V9paTxg8QEHPZA;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_START_VIDEO_RECORDING_PREPARED:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$8-NWZS2AifsN5NELqSB6a4gk08U;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$8-NWZS2AifsN5NELqSB6a4gk08U;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_CHANGE_SHOOTING_MODE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$SveiElcWXdcoNVwgSSwRRKbahfg;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$SveiElcWXdcoNVwgSSwRRKbahfg;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$TvWdCjqf9Nc6PHFV0N1jGHDh5Jw;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$TvWdCjqf9Nc6PHFV0N1jGHDh5Jw;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$4zncpUrOLjJ-gGRORy3T4PusLyQ;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$4zncpUrOLjJ-gGRORy3T4PusLyQ;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$5cIXEaE41kpWc2DcLTUy2DLQFLk;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$5cIXEaE41kpWc2DcLTUy2DLQFLk;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->APPLY_SETTINGS:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$UGfR5n7_VAQuHXtiAKjGWz5RkXA;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$UGfR5n7_VAQuHXtiAKjGWz5RkXA;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_LAST_SETTINGS_APPLIED:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$g0_8N5ADTqU7m7MCjqSms2AZdE0;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$g0_8N5ADTqU7m7MCjqSms2AZdE0;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->RESTART_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$32ktMf2Q8wWSybM_EtG2f11wuuU;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$32ktMf2Q8wWSybM_EtG2f11wuuU;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$Lco55vNH66p1Z4ISP5hDJpExnjA;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$Lco55vNH66p1Z4ISP5hDJpExnjA;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_AE_AF_TRIGGER_STATE_CHANGED:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$_BRBVs0zTphth1eQ0oywthD2a3c;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$_BRBVs0zTphth1eQ0oywthD2a3c;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$nMUOF0LgB9oBmVP2plPxWzW-Fq4;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$nMUOF0LgB9oBmVP2plPxWzW-Fq4;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$r9uuGiXN-87HTrpZVsfDSasjuwY;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$r9uuGiXN-87HTrpZVsfDSasjuwY;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$_u2BqN0Hq7gkopzLfrrBwpGpI4Q;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$_u2BqN0Hq7gkopzLfrrBwpGpI4Q;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$Po_WtXHqxNb7MRIHRyLNohW9VRA;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$Po_WtXHqxNb7MRIHRyLNohW9VRA;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$y-iUZKOcPNBd-0QQiZS4esloDME;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$y-iUZKOcPNBd-0QQiZS4esloDME;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$XqqvSM_ex0-GwcLSDZeMojZbB0o;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$XqqvSM_ex0-GwcLSDZeMojZbB0o;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$aqEd_s_5JffywKiHrGoexTBtRHU;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$aqEd_s_5JffywKiHrGoexTBtRHU;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$IwUCiAq-hyFGFNPZsfY04tufwxs;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$IwUCiAq-hyFGFNPZsfY04tufwxs;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$V81G52luswyR99mPsIOuPa_Wsns;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$V81G52luswyR99mPsIOuPa_Wsns;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$NLqdFGJr6i_2wsRELt1zTuH9VTI;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$NLqdFGJr6i_2wsRELt1zTuH9VTI;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_TAKE_PICTURE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$qMe77Aon7-7kKhzradUmJaWwX4Q;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$qMe77Aon7-7kKhzradUmJaWwX4Q;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_POST_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$isKwER1X_6BUwKhGmnBTGfah7g8;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$isKwER1X_6BUwKhGmnBTGfah7g8;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_TAKE_POST_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$U1izZfPS7LCDjLkbFRorG7ndljI;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$U1izZfPS7LCDjLkbFRorG7ndljI;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_TAKE_POST_PROCESSING_PICTURE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$fFc0-U_jUcLIC9_DDboy9wwuVLg;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$fFc0-U_jUcLIC9_DDboy9wwuVLg;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$UsElM4SCe2_s_VKljSgfbITplaU;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$UsElM4SCe2_s_VKljSgfbITplaU;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$Timj6CmL-rQxONo7ypJ6UzzjugE;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$Timj6CmL-rQxONo7ypJ6UzzjugE;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$RcdlzdRRFsRHV05TiUn1Xl-BJQA;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$RcdlzdRRFsRHV05TiUn1Xl-BJQA;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_VIDEO_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$4gknDc1nEywko1n40MmbOUcqt3w;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$4gknDc1nEywko1n40MmbOUcqt3w;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$_cPIVfyv7wpY2XgKgcWdNxxU0OQ;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$_cPIVfyv7wpY2XgKgcWdNxxU0OQ;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$zosQTxL5vyql_IAxT0jO69EcwQw;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$zosQTxL5vyql_IAxT0jO69EcwQw;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$quTHHY5NtmpewgMefvCRNj1EA7k;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$quTHHY5NtmpewgMefvCRNj1EA7k;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$S-8Brd2NvUEKfBWuNejG65142Rw;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$S-8Brd2NvUEKfBWuNejG65142Rw;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$mt9OGCtEj9Q1-36BUS-Tpx6cc5k;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$mt9OGCtEj9Q1-36BUS-Tpx6cc5k;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$YuBcGcA1a6IERBlbZ77r4TSiCQY;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$YuBcGcA1a6IERBlbZ77r4TSiCQY;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PAUSE_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$aDejn4GRTG3ibqNIx1_m1zM0RQY;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$aDejn4GRTG3ibqNIx1_m1zM0RQY;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->RESUME_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$7spnmpJu-CLazPWGaCtqBxxF0lM;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$7spnmpJu-CLazPWGaCtqBxxF0lM;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$16jtjHfPhkGp_6auWF69l5MOvFE;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$16jtjHfPhkGp_6auWF69l5MOvFE;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_AUTO_FOCUS:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$9mFX3Vmb4dhwC1XrACQJDgMM6qM;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$9mFX3Vmb4dhwC1XrACQJDgMM6qM;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_AUTO_FOCUS:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$15k2gPFlHlwuADlBeqYujH7GC8s;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$15k2gPFlHlwuADlBeqYujH7GC8s;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_PRIVATE_SETTING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$DErK_Gthkk-oRQevEwvSIVg6eVA;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$DErK_Gthkk-oRQevEwvSIVg6eVA;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SCREEN_FLASH:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$vyo1jxlBKwobG2RClzDBmT2cTk4;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$vyo1jxlBKwobG2RClzDBmT2cTk4;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$kLPw43fY_l_T0RpB5243xO2Py6k;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$kLPw43fY_l_T0RpB5243xO2Py6k;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SUPER_SLOW_MOTION_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$gcmS0yzdFaLc-JRNBnwurnR2X8w;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$gcmS0yzdFaLc-JRNBnwurnR2X8w;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_SUPER_SLOW_MOTION_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$zI-iLc6qs8lqHogZHnE-1k1dz1A;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$zI-iLc6qs8lqHogZHnE-1k1dz1A;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_SUPER_SLOW_MOTION_RECORDING_FPS:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$e-jB6RNPO0omdPYmSWMRXTfMkvI;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$e-jB6RNPO0omdPYmSWMRXTfMkvI;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_PRIVATE_COMMAND:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$3jQ5R5tW3XKWz4LOjlAv0P2jwnw;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$3jQ5R5tW3XKWz4LOjlAv0P2jwnw;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_PREPARE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$9L8f9hCjw02P4HeUUzfixIjQ_g8;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$9L8f9hCjw02P4HeUUzfixIjQ_g8;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_BACKGROUND_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$ImBJlAo7vOe0thdeX1ENpY9Drco;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$ImBJlAo7vOe0thdeX1ENpY9Drco;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_ORIENTATION:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$Jtvq8qIwFHrwqSuZXw62pGxhTv0;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$Jtvq8qIwFHrwqSuZXw62pGxhTv0;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SHUTTER_TIMER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$Zige8IZLvChMkmyYvQoSQVHcywA;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$Zige8IZLvChMkmyYvQoSQVHcywA;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->RELEASE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$xTHPP04DQAHwYGPnch0gWrO6fOg;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$xTHPP04DQAHwYGPnch0gWrO6fOg;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_BACKGROUND_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$XOO0dVB2sWuZ5Ab6Gd70RjgU0Qk;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$XOO0dVB2sWuZ5Ab6Gd70RjgU0Qk;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$BZTv-QnRu_1E85A1BOF707rzmdg;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestBuilder$1$BZTv-QnRu_1E85A1BOF707rzmdg;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;->size()I

    move-result p0

    invoke-static {}, Lcom/sec/android/app/camera/engine/request/RequestId;->values()[Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v0

    array-length v0, v0

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestBuilder : RequestId size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/app/camera/engine/request/RequestId;->values()[Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Map size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$new$0(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 7

    new-instance v6, Lcom/sec/android/app/camera/engine/request/OpenCameraRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/engine/request/OpenCameraRequest;-><init>(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object v6
.end method

.method static synthetic lambda$new$1(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/HandleCameraErrorRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/HandleCameraErrorRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$10(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p4, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p4
.end method

.method static synthetic lambda$new$11(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/NotifySwitchCameraPreparedRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/NotifySwitchCameraPreparedRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$12(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/NotifyStartVideoRecordingPreparedRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/NotifyStartVideoRecordingPreparedRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$13(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/NotifyChangeShootingModeCompletedRequest;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/NotifyChangeShootingModeCompletedRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Z)V

    return-object p0
.end method

.method static synthetic lambda$new$14(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$15(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartPreviewRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartPreviewRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$16(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopPreviewRequest;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/StopPreviewRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Z)V

    return-object p0
.end method

.method static synthetic lambda$new$17(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/ApplySettingsRequest;

    check-cast p4, Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/ApplySettingsRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-object p0
.end method

.method static synthetic lambda$new$18(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/WaitLastSettingsAppliedRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/WaitLastSettingsAppliedRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$19(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/RestartPreviewRequest;

    check-cast p4, Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/RestartPreviewRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-object p0
.end method

.method static synthetic lambda$new$2(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 7

    new-instance v6, Lcom/sec/android/app/camera/engine/request/CloseCameraRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/engine/request/CloseCameraRequest;-><init>(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object v6
.end method

.method static synthetic lambda$new$20(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Z)V

    return-object p0
.end method

.method static synthetic lambda$new$21(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/WaitAeAfTriggerStateChangedRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/WaitAeAfTriggerStateChangedRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$22(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/TakePictureRequest;

    check-cast p4, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/TakePictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method static synthetic lambda$new$23(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;

    check-cast p4, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method static synthetic lambda$new$24(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/TakeBurstPictureRequest;

    check-cast p4, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/TakeBurstPictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method static synthetic lambda$new$25(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopBurstPictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StopBurstPictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$26(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/TakeAgifBurstPictureRequest;

    check-cast p4, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/TakeAgifBurstPictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method static synthetic lambda$new$27(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopAgifBurstPictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StopAgifBurstPictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$28(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartStitchingCaptureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartStitchingCaptureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$29(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopStitchingCaptureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StopStitchingCaptureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$3(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/InitializeMakerRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/InitializeMakerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$30(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/CancelStitchingCaptureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/CancelStitchingCaptureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$31(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/CancelTakePictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/CancelTakePictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$32(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$33(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/TakePostProcessingPictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/TakePostProcessingPictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$34(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/CancelTakePostProcessingPictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/CancelTakePostProcessingPictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$35(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/WaitTakePostProcessingPictureCompletedRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/WaitTakePostProcessingPictureCompletedRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$36(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartSingleTakePictureRequest;

    check-cast p4, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/StartSingleTakePictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method static synthetic lambda$new$37(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopSingleTakePictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StopSingleTakePictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$38(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/CancelSingleTakePictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/CancelSingleTakePictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$39(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$4(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/UpdateMakerRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/UpdateMakerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$40(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/PrepareMediaRecorderRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/PrepareMediaRecorderRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$41(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartVideoPreviewRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartVideoPreviewRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$42(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Z)V

    return-object p0
.end method

.method static synthetic lambda$new$43(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartVideoRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartVideoRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$44(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopVideoRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StopVideoRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$45(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/CancelVideoRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/CancelVideoRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$46(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;

    check-cast p4, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method static synthetic lambda$new$47(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/ResumeVideoRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/ResumeVideoRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$48(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/TakeVideoSnapshotRequest;

    check-cast p4, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/TakeVideoSnapshotRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method static synthetic lambda$new$49(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartAutoFocusRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartAutoFocusRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$5(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/WaitPreviewSurfaceRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/WaitPreviewSurfaceRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$50(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/CancelAutoFocusRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/CancelAutoFocusRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$51(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/SetPrivateSettingRequest;

    check-cast p4, Lcom/sec/android/app/camera/engine/request/MakerPrivateSetting;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/SetPrivateSettingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/sec/android/app/camera/engine/request/MakerPrivateSetting;)V

    return-object p0
.end method

.method static synthetic lambda$new$52(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartScreenFlashRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartScreenFlashRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$53(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/TakePreviewSnapShotRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/TakePreviewSnapShotRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$54(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartSuperSlowMotionRecordingRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/StartSuperSlowMotionRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$55(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/CancelSuperSlowMotionRecordingRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/CancelSuperSlowMotionRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$56(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/ChangeSuperSlowMotionRecordingFPSRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/ChangeSuperSlowMotionRecordingFPSRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$57(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/SetPrivateCommandRequest;

    check-cast p4, Lcom/samsung/android/camera/core2/MakerPrivateCommand;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/SetPrivateCommandRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/samsung/android/camera/core2/MakerPrivateCommand;)V

    return-object p0
.end method

.method static synthetic lambda$new$58(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/CancelPrepareTakePictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/CancelPrepareTakePictureRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$59(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartBackgroundRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartBackgroundRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$6(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/WaitExtraPreviewSurfaceRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/WaitExtraPreviewSurfaceRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$60(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/SetOrientationRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/SetOrientationRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$61(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartShutterTimerRequest;

    check-cast p4, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/StartShutterTimerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;)V

    return-object p0
.end method

.method static synthetic lambda$new$62(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/ReleaseMediaRecorderRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/ReleaseMediaRecorderRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$63(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StopBackgroundRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StopBackgroundRecordingRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$64(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/WaitRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/WaitRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$7(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/ChangePreviewSurfaceSizeRequest;

    check-cast p4, Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/ChangePreviewSurfaceSizeRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/sec/android/app/camera/interfaces/Resolution;)V

    return-object p0
.end method

.method static synthetic lambda$new$8(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$9(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/engine/request/StartConnectingMakerRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/StartConnectingMakerRequest;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-object p0
.end method
