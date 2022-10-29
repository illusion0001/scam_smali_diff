.class Lcom/sec/android/app/camera/shootingmode/Panorama$3;
.super Ljava/lang/Object;
.source "Panorama.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Panorama;->startSideButtonAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Panorama;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Panorama;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Panorama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Panorama;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->access$600(Lcom/sec/android/app/camera/shootingmode/Panorama;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    const/4 p1, 0x6

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

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
