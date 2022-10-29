.class Lcom/sec/android/app/camera/shootingmode/More$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "More.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/More$4;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/shootingmode/More$4;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/More$4;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$4$1;->this$1:Lcom/sec/android/app/camera/shootingmode/More$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$4$1;->this$1:Lcom/sec/android/app/camera/shootingmode/More$4;

    iget-object p1, p1, Lcom/sec/android/app/camera/shootingmode/More$4;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$000(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;->start()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More$4$1;->this$1:Lcom/sec/android/app/camera/shootingmode/More$4;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More$4;->val$first:[Z

    const/4 p1, 0x0

    aput-boolean p1, p0, p1

    return-void
.end method
