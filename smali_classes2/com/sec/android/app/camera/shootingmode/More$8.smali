.class Lcom/sec/android/app/camera/shootingmode/More$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "More.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/More;->showEditGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/More;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/More;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$8;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More$8;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/More;->access$900(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->resetScale()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More$8;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/More;->access$900(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method
