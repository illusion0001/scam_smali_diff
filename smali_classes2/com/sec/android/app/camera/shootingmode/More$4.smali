.class Lcom/sec/android/app/camera/shootingmode/More$4;
.super Ljava/lang/Object;
.source "More.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView$AnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/More;->makeDragViewGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/More;

.field final synthetic val$first:[Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/More;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$4;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/More$4;->val$first:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$4;->val$first:[Z

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    const-string v0, "MoreMode"

    if-eqz p1, :cond_1

    const-string p1, "first onAnimationEnd."

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$4;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$1600(Lcom/sec/android/app/camera/shootingmode/More;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$4;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$1600(Lcom/sec/android/app/camera/shootingmode/More;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$4;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$1600(Lcom/sec/android/app/camera/shootingmode/More;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$4;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/shootingmode/More;->access$1602(Lcom/sec/android/app/camera/shootingmode/More;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$4;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$1600(Lcom/sec/android/app/camera/shootingmode/More;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$4;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$1600(Lcom/sec/android/app/camera/shootingmode/More;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/More$4$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/More$4$1;-><init>(Lcom/sec/android/app/camera/shootingmode/More$4;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More$4;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/More;->access$1600(Lcom/sec/android/app/camera/shootingmode/More;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    const-string p1, "second onAnimationEnd."

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More$4;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    const/16 p1, 0x3e8

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$1700(Lcom/sec/android/app/camera/shootingmode/More;I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const-string p0, "MoreMode"

    const-string p1, "onAnimationStart."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
