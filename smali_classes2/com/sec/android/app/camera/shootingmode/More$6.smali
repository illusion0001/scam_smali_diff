.class Lcom/sec/android/app/camera/shootingmode/More$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "More.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/More;->showDragHelpAnimation()V
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

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$6;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$6;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$600(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$6;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$600(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$6;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$700(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$6;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$700(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$6;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$800(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$6;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$800(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$6;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$900(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$6;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$300(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More$6;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/More;->access$500(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    const/16 p1, 0x100

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    return-void
.end method
