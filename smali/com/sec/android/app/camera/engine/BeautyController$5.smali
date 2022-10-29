.class final Lcom/sec/android/app/camera/engine/BeautyController$5;
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

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SELFIE_FOCUS_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->BEAUTY_FACE_RETOUCH_LEVEL:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/BeautyController$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SELFIE_FOCUS_SKIN_COLOR_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->BEAUTY_FACE_COLOR_LEVEL:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/BeautyController$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
