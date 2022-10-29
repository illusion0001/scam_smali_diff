.class Lcom/sec/android/app/camera/shootingmode/More$7;
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

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$7;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More$7;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/More;->access$000(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;->start()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More$7;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$2002(Lcom/sec/android/app/camera/shootingmode/More;Z)Z

    return-void
.end method
