.class Lcom/sec/android/app/camera/shootingmode/Pro$3;
.super Ljava/util/HashMap;
.source "Pro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Pro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;",
        "Lcom/sec/android/app/camera/shootingmode/Pro$DetailSettingUpdater;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Pro;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Pro;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Pro$3$QPUeI09aE54io0mG8OLTXE2OCfs;

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Pro$3$QPUeI09aE54io0mG8OLTXE2OCfs;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;)V

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/camera/shootingmode/Pro$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Pro$3$sw2BeBuiR0gpmhjfV-8vZ81W7IQ;

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Pro$3$sw2BeBuiR0gpmhjfV-8vZ81W7IQ;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;)V

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/camera/shootingmode/Pro$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ISO:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Pro$3$FM0osWlJVLYqvgbQXFtI_vGBfTQ;

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Pro$3$FM0osWlJVLYqvgbQXFtI_vGBfTQ;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;)V

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/camera/shootingmode/Pro$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Pro$3$1UjXo5BsdrViMrgFj3zT5iZX-Cw;

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Pro$3$1UjXo5BsdrViMrgFj3zT5iZX-Cw;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;)V

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/camera/shootingmode/Pro$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Pro$3$hTuhRyTFITry_CtN6tXWD3ETNHI;

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Pro$3$hTuhRyTFITry_CtN6tXWD3ETNHI;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;)V

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/camera/shootingmode/Pro$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/sec/android/app/camera/shootingmode/Pro;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1000(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/sec/android/app/camera/shootingmode/Pro;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$900(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/sec/android/app/camera/shootingmode/Pro;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$800(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    return-void
.end method

.method static synthetic lambda$new$3(Lcom/sec/android/app/camera/shootingmode/Pro;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$700(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    return-void
.end method

.method static synthetic lambda$new$4(Lcom/sec/android/app/camera/shootingmode/Pro;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$600(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    return-void
.end method
