.class synthetic Lcom/sec/android/app/camera/shootingmode/Photo$2;
.super Ljava/lang/Object;
.source "Photo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Photo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$CaptureEvent:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->values()[Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    sget-object v2, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->STARTED:Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    sget-object v3, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->FINISHED:Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->CANCELED:Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->values()[Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    :try_start_3
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->values()[Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$CaptureEvent:[I

    :try_start_5
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$CaptureEvent:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->CAPTURE_STARTED:Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$CaptureEvent:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->SHUTTER_RECEIVED:Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$CaptureEvent:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->CAPTURE_COMPLETED:Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v3, 0x4

    :try_start_8
    sget-object v4, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$CaptureEvent:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->CAPTURE_CANCELLED:Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/4 v4, 0x5

    :try_start_9
    sget-object v5, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$CaptureEvent:[I

    sget-object v6, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->CAPTURE_INTERRUPTED:Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->values()[Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    :try_start_a
    sget-object v5, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->MOTION_PHOTO:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SENSOR_CROP:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SCENE_OPTIMIZER_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->COMPOSITION_GUIDE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    return-void
.end method
