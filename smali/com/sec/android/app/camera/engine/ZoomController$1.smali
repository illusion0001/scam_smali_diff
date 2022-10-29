.class synthetic Lcom/sec/android/app/camera/engine/ZoomController$1;
.super Ljava/lang/Object;
.source "ZoomController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/ZoomController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->values()[Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/camera/engine/ZoomController$1;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/engine/ZoomController$1;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
