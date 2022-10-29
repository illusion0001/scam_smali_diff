.class synthetic Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;
.super Ljava/lang/Object;
.source "LiveFocusVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->values()[Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->START:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    sget-object v3, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->CANCEL:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->STOP:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->RESUME:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->PAUSE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->values()[Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    :try_start_6
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->STARTED:Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->FINISHED:Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->CANCELED:Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->values()[Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    :try_start_9
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STARTED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STOPPED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->CANCELLED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->values()[Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    :try_start_c
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    sget-object v3, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_LIVE_FOCUS_VIDEO_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    sget-object v3, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_LIVE_FOCUS_VIDEO_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->values()[Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    :try_start_e
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method
