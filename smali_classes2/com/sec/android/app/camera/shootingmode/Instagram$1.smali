.class Lcom/sec/android/app/camera/shootingmode/Instagram$1;
.super Ljava/lang/Object;
.source "Instagram.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Instagram;->hideInstagramLogoWithAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Instagram;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Instagram;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Instagram;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Instagram;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->access$100(Lcom/sec/android/app/camera/shootingmode/Instagram;)Lcom/samsung/android/glview/GLImage;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

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
