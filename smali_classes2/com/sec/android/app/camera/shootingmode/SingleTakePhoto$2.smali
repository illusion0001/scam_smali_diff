.class Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$2;
.super Ljava/lang/Object;
.source "SingleTakePhoto.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;)V
    .locals 0

    return-void
.end method

.method public onCreateDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;)V
    .locals 0

    return-void
.end method

.method public onDismissDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;)V
    .locals 0

    return-void
.end method

.method public onNegativeButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;)V
    .locals 0

    return-void
.end method

.method public onPositiveButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;->SINGLE_TAKE_STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$200(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->changeShootingMode(IZ)Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$600(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeShortcutController()Lcom/sec/android/app/camera/interfaces/ShootingModeShortcutController;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeShortcutController;->translateList(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$600(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setMainButtonResource(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    :cond_0
    return-void
.end method
