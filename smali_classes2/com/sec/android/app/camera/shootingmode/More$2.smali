.class Lcom/sec/android/app/camera/shootingmode/More$2;
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

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    const-string p1, "MoreMode"

    const-string v0, "mainViewFadeIn onAnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$300(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$400(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$500(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeShortcutController()Lcom/sec/android/app/camera/interfaces/ShootingModeShortcutController;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeShortcutController;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$600(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$600(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$700(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$700(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$800(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$800(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$900(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/More;->access$1000(Lcom/sec/android/app/camera/shootingmode/More;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    const-string p1, "MoreMode"

    const-string v0, "mainViewFadeIn onAnimationStart"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$300(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$400(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$1100(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLText;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLText;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$1200(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$1300(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/More;->access$300(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More$2;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/More;->access$1400(Lcom/sec/android/app/camera/shootingmode/More;)V

    const-string p0, "1019"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    const-string p0, "101"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    return-void
.end method
