.class synthetic Lcom/sec/android/app/camera/shootingmode/ProVideo$3;
.super Ljava/lang/Object;
.source "ProVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/ProVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CommandId;->values()[Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->VIDEO_ISO_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CommandId;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/CommandId;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/CommandId;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CommandId;->VIDEO_COLOR_TUNE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/CommandId;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

    sget-object v6, Lcom/sec/android/app/camera/interfaces/CommandId;->VIDEO_WHITE_BALANCE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/CommandId;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CommandId;->VIDEO_MANUAL_FOCUS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/interfaces/CommandId;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->values()[Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    :try_start_6
    sget-object v6, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    sget-object v7, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->START:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v6, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    sget-object v7, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->CANCEL:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v6, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    sget-object v7, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->STOP:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v6, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    sget-object v7, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->RESUME:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v6, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    sget-object v7, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->PAUSE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v4, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    sget-object v6, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result v6

    aput v5, v4, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->values()[Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    :try_start_c
    sget-object v4, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->STARTED:Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v4, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->FINISHED:Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v4, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->CANCELED:Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->values()[Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    :try_start_f
    sget-object v4, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STARTED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v4, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STOPPED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v4, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->CANCELLED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->values()[Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    :try_start_12
    sget-object v4, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->values()[Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    :try_start_13
    sget-object v4, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->MULTI_AF_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method
