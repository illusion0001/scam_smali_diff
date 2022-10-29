.class Lcom/sec/android/app/camera/shootingmode/More$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "More.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/More;->showInformation()V
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

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$9;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More$9;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/More;->access$1500(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$9;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$100(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More$9;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/More;->access$1500(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$9;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$1500(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More$9;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/More;->access$1500(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    return-void
.end method
