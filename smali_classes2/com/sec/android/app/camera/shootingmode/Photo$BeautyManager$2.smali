.class Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$2;
.super Ljava/util/HashMap;
.source "Photo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/sec/android/app/camera/interfaces/CommandId;",
        "Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$2;->this$1:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SKIN_TONE:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_CHEEK:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_RESHAPE_CHEEK_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_CHIN:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_RESHAPE_CHIN_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_NOSE:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_RESHAPE_NOSE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_LIPS:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_RESHAPE_LIP_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SKIN_COLOR:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_SKIN_COLOR_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SLIM_FACE:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_SLIM_FACE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SMOOTHNESS:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_BEAUTY_SMOOTHNESS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_BRIGHTEN:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_BEAUTY_BRIGHTEN_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_LIVE_BEAUTY_MANUAL_RESHAPE:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_LARGE_EYES:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_RESHAPE_EYES_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_LARGE_EYES:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_LARGE_EYES_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
