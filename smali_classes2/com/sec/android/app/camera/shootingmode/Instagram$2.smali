.class Lcom/sec/android/app/camera/shootingmode/Instagram$2;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "Instagram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Instagram;->launchInstagram(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Instagram;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$isVideo:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Instagram;ZLandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Instagram;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram$2;->val$isVideo:Z

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Instagram$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram$2;->val$isVideo:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Instagram;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->STOP:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->access$200(Lcom/sec/android/app/camera/shootingmode/Instagram;Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    :cond_0
    return-void
.end method

.method public onDismissError()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram$2;->val$isVideo:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Instagram;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->STOP:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->access$200(Lcom/sec/android/app/camera/shootingmode/Instagram;Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    :cond_0
    return-void
.end method

.method public onDismissSucceeded()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Instagram;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->access$300(Lcom/sec/android/app/camera/shootingmode/Instagram;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram$2;->val$intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Instagram;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->access$300(Lcom/sec/android/app/camera/shootingmode/Instagram;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    const v0, 0x7f010002

    const v1, 0x7f010003

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Instagram"

    const-string v0, "Activity is not found"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
