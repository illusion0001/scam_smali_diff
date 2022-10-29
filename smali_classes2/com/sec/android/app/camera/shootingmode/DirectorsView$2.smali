.class Lcom/sec/android/app/camera/shootingmode/DirectorsView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DirectorsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showThumbnailList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/DirectorsView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/DirectorsView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/DirectorsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/DirectorsView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->access$200(Lcom/sec/android/app/camera/shootingmode/DirectorsView;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/DirectorsView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->access$100(Lcom/sec/android/app/camera/shootingmode/DirectorsView;)Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->setVisibility(I)V

    return-void
.end method
