.class Lcom/sec/android/app/camera/shootingmode/HyperLapse$1;
.super Ljava/lang/Object;
.source "HyperLapse.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/HyperLapse;->startNightHelpGuideAnimation(Lcom/samsung/android/glview/GLView;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/HyperLapse;

.field final synthetic val$glView:Lcom/samsung/android/glview/GLView;

.field final synthetic val$translateAbsoluteX:F

.field final synthetic val$translateAbsoluteY:F


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/HyperLapse;Lcom/samsung/android/glview/GLView;FF)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse$1;->this$0:Lcom/sec/android/app/camera/shootingmode/HyperLapse;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse$1;->val$glView:Lcom/samsung/android/glview/GLView;

    iput p3, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse$1;->val$translateAbsoluteX:F

    iput p4, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse$1;->val$translateAbsoluteY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse$1;->val$glView:Lcom/samsung/android/glview/GLView;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse$1;->val$translateAbsoluteX:F

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse$1;->val$translateAbsoluteY:F

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FF)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse$1;->this$0:Lcom/sec/android/app/camera/shootingmode/HyperLapse;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->access$000(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method
