.class Lcom/sec/android/app/camera/shootingmode/More$5;
.super Ljava/lang/Object;
.source "More.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/More;->makeInformationList()Lcom/samsung/android/glview/GLGridList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/More;

.field final synthetic val$list:Lcom/samsung/android/glview/GLGridList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/More;Lcom/samsung/android/glview/GLGridList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More$5;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/More$5;->val$list:Lcom/samsung/android/glview/GLGridList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More$5;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/More;->access$1800(Lcom/sec/android/app/camera/shootingmode/More;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 9

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/More$5;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/More;->access$1800(Lcom/sec/android/app/camera/shootingmode/More;)Landroid/util/SparseArray;

    move-result-object p2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getInfo(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShootingModeInfo;->isBigInformationSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    const p1, 0x7f0701d0

    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    if-eqz v8, :cond_1

    const p1, 0x7f0701cc

    goto :goto_1

    :cond_1
    const p1, 0x7f0701cd

    :goto_1
    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result p1

    move v6, p1

    new-instance p1, Lcom/sec/android/app/camera/widget/gl/ShootingModeInformationViewGroup;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/More$5;->this$0:Lcom/sec/android/app/camera/shootingmode/More;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/More;->access$1900(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/widget/gl/ShootingModeInformationViewGroup;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/interfaces/CommandId;Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More$5;->val$list:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/ShootingModeInformationViewGroup;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    return-object p1

    :cond_2
    return-object p2
.end method

.method public reset()V
    .locals 0

    return-void
.end method
