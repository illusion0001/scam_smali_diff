.class Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$3;
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

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$3;->this$1:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_WHOLE_BODY:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_BODY_WHOLE_BODY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_HEAD:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_BODY_HEAD_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_SHOULDERS:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_BODY_SHOULDERS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_WAIST:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_BODY_WAIST_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_HIPS:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_BODY_HIPS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_LEGS_THICKNESS:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_BODY_LEGS_THICKNESS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_LEGS_LENGTH:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_BODY_LEGS_LENGTH_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
