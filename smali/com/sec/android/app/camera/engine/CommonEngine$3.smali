.class synthetic Lcom/sec/android/app/camera/engine/CommonEngine$3;
.super Ljava/lang/Object;
.source "CommonEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$Engine$CaptureType:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$Engine$State:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$TakePictureType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->values()[Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$TakePictureType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$TakePictureType:[I

    sget-object v2, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->SINGLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$TakePictureType:[I

    sget-object v3, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->PROCESSING_INSTANT:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$TakePictureType:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->PROCESSING_POST:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->values()[Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    :try_start_3
    sget-object v3, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SAVE_AS_FLIPPED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->DUAL_CAPTURE_IN_LIVE_FOCUS:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->STORAGE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v3, 0x4

    :try_start_6
    sget-object v4, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->HDR_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/4 v4, 0x5

    :try_start_7
    sget-object v5, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->HDR_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->values()[Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$CaptureType:[I

    :try_start_8
    sget-object v5, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$CaptureType:[I

    sget-object v6, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$CaptureType:[I

    sget-object v6, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SMART_SCAN_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$CaptureType:[I

    sget-object v6, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->STITCHING_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v2, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$CaptureType:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->POST_PROCESSING_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->ordinal()I

    move-result v5

    aput v3, v2, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v2, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$CaptureType:[I

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->ordinal()I

    move-result v3

    aput v4, v2, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/Engine$State;->values()[Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$State:[I

    :try_start_d
    sget-object v2, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$State:[I

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$State;->CONNECTING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/Engine$State;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$State:[I

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Engine$State;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method
