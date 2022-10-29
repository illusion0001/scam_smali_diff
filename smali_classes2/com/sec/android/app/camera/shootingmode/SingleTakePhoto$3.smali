.class Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SingleTakePhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->startProgressBarAnimation()V
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

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$3;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$3;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$700(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/samsung/android/glview/GLImage;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$3;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$700(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/samsung/android/glview/GLImage;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$3;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$700(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/samsung/android/glview/GLImage;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void
.end method
