.class final Lcom/sec/android/app/camera/engine/BeautyController$4;
.super Ljava/util/HashMap;
.source "BeautyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/BeautyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;",
        "Lcom/samsung/android/camera/core2/MakerPrivateKey<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BEAUTY_BRIGHTEN:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_BEAUTY_SMOOTHNESS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->BEAUTY_SMOOTHNESS_LEVEL:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/BeautyController$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_BEAUTY_BRIGHTEN_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->BEAUTY_BRIGHTEN_LEVEL:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/BeautyController$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->BEAUTY_FACE_RETOUCH_LEVEL:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/BeautyController$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_LIVE_BEAUTY_MANUAL_RESHAPE:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_RESHAPE_CHEEK_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->BEAUTY_RESHAPE_CHEEK_LEVEL:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/BeautyController$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_RESHAPE_CHIN_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->BEAUTY_RESHAPE_CHIN_LEVEL:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/BeautyController$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_RESHAPE_EYES_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->BEAUTY_RESHAPE_EYE_LEVEL:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/BeautyController$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_RESHAPE_LIP_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->BEAUTY_RESHAPE_LIP_LEVEL:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/BeautyController$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_RESHAPE_NOSE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->BEAUTY_RESHAPE_NOSE_LEVEL:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/BeautyController$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_SKIN_COLOR_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->BEAUTY_FACE_COLOR_LEVEL:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/BeautyController$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_LARGE_EYES_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->BEAUTY_EYE_ENLARGE_LEVEL:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/BeautyController$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_SLIM_FACE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->BEAUTY_SLIM_FACE_LEVEL:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/BeautyController$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_SMART_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->SMART_BEAUTY_LEVEL:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/BeautyController$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
