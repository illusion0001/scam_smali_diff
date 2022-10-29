.class Lcom/sec/android/app/camera/shootingmode/More$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "More.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/More;->hideDragHelpAnimation(I)V
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

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$1;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "MoreMode"

    const-string v1, "dragHelperFadeOut onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$1;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$100(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More$1;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/More;->access$000(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$1;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$100(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More$1;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/More;->access$200(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLText;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method
