.class synthetic Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;
.super Ljava/lang/Object;
.source "MakerConnectionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$RecordingDrMode:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$SensorFlipMode:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$SsmMode:[I

.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$VdisMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->values()[Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$SsmMode:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$SsmMode:[I

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->SINGLE:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$SsmMode:[I

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->MULTI:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$SsmMode:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->SINGLE_FRC:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$SsmMode:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->MULTI_FRC:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;->values()[Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$SensorFlipMode:[I

    :try_start_4
    sget-object v4, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$SensorFlipMode:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;->FLIP_MODE_VERTICAL:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$SensorFlipMode:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;->FLIP_MODE_HORIZONTAL:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$SensorFlipMode:[I

    sget-object v5, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;->FLIP_MODE_HORIZONTAL_VERTICAL:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v2, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$SensorFlipMode:[I

    sget-object v4, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;->FLIP_MODE_NONE:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;->ordinal()I

    move-result v4

    aput v3, v2, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->values()[Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$RecordingDrMode:[I

    :try_start_8
    sget-object v2, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$RecordingDrMode:[I

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->SDR:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$RecordingDrMode:[I

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->HDR10:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->values()[Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$VdisMode:[I

    :try_start_a
    sget-object v2, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$VdisMode:[I

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_NORMAL:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$ConnectionInfo$VdisMode:[I

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_CENTER_CROP:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
