.class Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$1;
.super Ljava/lang/Object;
.source "SuperSlowMotion.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startSuperSlowBlackOverlayAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    const-string p1, "SuperSlowMotion"

    const-string v0, "endBlinkBlackScreenSuperSlowAnimation"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlay()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
