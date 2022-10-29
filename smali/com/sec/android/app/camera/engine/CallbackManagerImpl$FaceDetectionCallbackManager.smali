.class Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$FaceDetectionInfoCallback;
.implements Lcom/samsung/android/camera/core2/MakerInterface$SwFaceDetectionEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceDetectionCallbackManager"
.end annotation


# instance fields
.field private mFaceDetectionListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;

.field private mSwFaceDetectionListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->mFaceDetectionListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->mSwFaceDetectionListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V

    return-void
.end method

.method private getRect(Z[Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .locals 3
    .param p2    # [Landroid/hardware/camera2/params/Face;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    array-length v0, p2

    new-array v0, v0, [Landroid/graphics/Rect;

    array-length v1, p2

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2100(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p3, p1, p0}, Lcom/sec/android/app/camera/util/Util;->getNormalizedMatrix(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Matrix;

    move-result-object v2

    :cond_1
    const/4 p0, 0x0

    :goto_0
    array-length p1, p2

    if-ge p0, p1, :cond_3

    new-instance p1, Landroid/graphics/Rect;

    aget-object p3, p2, p0

    invoke-virtual {p3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object p1, v0, p0

    if-eqz v2, :cond_2

    aget-object p1, p2, p0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    aget-object p1, v0, p0

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private handleFaceRect([Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2100(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onFaceDetection([Landroid/graphics/Rect;Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public synthetic lambda$onFaceDetection$0$CallbackManagerImpl$FaceDetectionCallbackManager([Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->mFaceDetectionListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;->onFaceDetection([Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2300(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2200(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->HW:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->handleFaceRect([Landroid/graphics/Rect;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onSwFaceDetection$1$CallbackManagerImpl$FaceDetectionCallbackManager([Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->mSwFaceDetectionListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;->onSwFaceDetection([Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2200(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2300(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->SW:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2300(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->BOTH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->handleFaceRect([Landroid/graphics/Rect;Z)V

    :cond_2
    return-void
.end method

.method public onFaceDetection(Ljava/lang/Long;Lcom/samsung/android/camera/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;)V
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;->getFaces()[Landroid/hardware/camera2/params/Face;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;->getCropRegion()Landroid/graphics/Rect;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->getRect(Z[Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$FaceDetectionCallbackManager$ULkEiQt0APUQbDos9OJuoGew1gc;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$FaceDetectionCallbackManager$ULkEiQt0APUQbDos9OJuoGew1gc;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;[Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSwFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 2
    .param p1    # [Landroid/hardware/camera2/params/Face;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->getRect(Z[Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$FaceDetectionCallbackManager$DV0PeKD8a7TuRNlBB4bY4VDGA4M;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$FaceDetectionCallbackManager$DV0PeKD8a7TuRNlBB4bY4VDGA4M;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;[Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->mFaceDetectionListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;

    return-void
.end method

.method setSwFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->mSwFaceDetectionListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;

    return-void
.end method
