.class Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;
.super Ljava/lang/Object;
.source "WideSelfie.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCaptureGuideAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd, mCaptureCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WideSelfie"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationRepeat, mAnimationIndex : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WideSelfie"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$400(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$400(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    const/16 v2, 0xd

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x6

    move p1, v1

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v3, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$302(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)I

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$500(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    move-result v0

    if-eq v0, p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$310(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$308(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$502(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    move-result p1

    if-eq p1, v2, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$308(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$310(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$502(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z

    :goto_2
    move p1, v1

    :goto_3
    const/16 v0, 0xe

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$600(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    move-result p1

    if-gez p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$302(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)I

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$600(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    move-result p0

    aget-object p0, p1, p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
