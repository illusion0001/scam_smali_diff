.class public Lcom/sec/android/app/camera/engine/request/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraHolder"


# instance fields
.field private mAvailableZoomValueListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCamDeviceList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/camera/core2/CamDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mCamDeviceManager:Lcom/samsung/android/camera/core2/device/CamDeviceManager;

.field private mCapabilityList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/camera/engine/request/CapabilityImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mSeamlessZoomValueArray:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCapabilityList:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mAvailableZoomValueListMap:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCamDeviceList:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceManager;->getManager(Landroid/content/Context;)Lcom/samsung/android/camera/core2/device/CamDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCamDeviceManager:Lcom/samsung/android/camera/core2/device/CamDeviceManager;

    return-void
.end method

.method private calculateSeamlessZoomFactor(Landroid/util/SizeF;D)D
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCamDeviceManager:Lcom/samsung/android/camera/core2/device/CamDeviceManager;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceManager;->getCamCapability(Ljava/lang/String;)Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSensorInfoPhysicalSize()Landroid/util/SizeF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getLensInfoAvailableFocalLengths()[F

    move-result-object p0

    aget p0, p0, v0

    float-to-double v2, p0

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    float-to-double v0, p0

    div-double/2addr v0, v2

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    float-to-double p0, p0

    div-double/2addr p0, p2

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const-wide/high16 p0, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p2, p0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p2, p0

    :goto_0
    return-wide p2
.end method

.method private declared-synchronized createAvailableZoomValueArrayList(I)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCamDeviceManager:Lcom/samsung/android/camera/core2/device/CamDeviceManager;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getCameraDeviceId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceManager;->getCamCapability(Ljava/lang/String;)Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailableMaxDigitalZoomList()[F

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailableMinDigitalZoomList()[F

    move-result-object v2

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    const-string v1, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createAvailableZoomValueArrayList ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") maxDigitalZoomList is empty"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v5, [F

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getScalerAvailableMaxDigitalZoom()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v4

    :cond_0
    array-length v3, v2

    if-nez v3, :cond_1

    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createAvailableZoomValueArrayList ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") minDigitalZoomList is empty"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v5, [F

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailableMinDigitalZoom()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v4

    :cond_1
    const-string v0, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createAvailableZoomValueArrayList ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") maxDigitalZoomList : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createAvailableZoomValueArrayList ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") minDigitalZoomList : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v1

    new-array v0, v0, [Ljava/util/ArrayList;

    move v3, v4

    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_6

    const/16 v5, 0x14

    const/high16 v6, 0x42c80000    # 100.0f

    if-ne p1, v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v0, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getSeamlessZoomValueArray()[I

    move-result-object v5

    array-length v7, v5

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_3

    aget v9, v5, v8

    aget-object v10, v0, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    aget v7, v2, v3

    mul-float/2addr v7, v6

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v5, v0, v3

    :cond_3
    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->DIGITAL_ZOOM_SHORTCUT_LIST:Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    move v8, v4

    :goto_2
    if-ge v8, v7, :cond_5

    aget-object v9, v5, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aget v10, v2, v3

    cmpl-float v10, v9, v10

    if-lez v10, :cond_4

    aget v10, v1, v3

    cmpg-float v10, v9, v10

    if-gez v10, :cond_4

    aget-object v10, v0, v3

    mul-float/2addr v9, v6

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    :try_start_2
    const-string v9, "CameraHolder"

    const-string v10, "createAvailableZoomValueArrayList digitalZoomShortcut is empty"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    aget-object v5, v0, v3

    aget v7, v1, v3

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mAvailableZoomValueListMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private createSeamlessZoomValueArray()V
    .locals 9

    const-string v0, "CameraHolder"

    const-string v1, "createSeamlessZoomValueArray"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCamDeviceManager:Lcom/samsung/android/camera/core2/device/CamDeviceManager;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceManager;->getCamCapability(Ljava/lang/String;)Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamCapability;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "createSeamlessZoomValueArray : Physical camera id set for seamless zoom is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mSeamlessZoomValueArray:[I

    goto :goto_1

    :cond_0
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mSeamlessZoomValueArray:[I

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCamDeviceManager:Lcom/samsung/android/camera/core2/device/CamDeviceManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceManager;->getCamCapability(Ljava/lang/String;)Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/CamCapability;->getSensorInfoPhysicalSize()Landroid/util/SizeF;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/CamCapability;->getLensInfoAvailableFocalLengths()[F

    move-result-object v3

    aget v3, v3, v1

    float-to-double v5, v3

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->calculateSeamlessZoomFactor(Landroid/util/SizeF;D)D

    move-result-wide v3

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mSeamlessZoomValueArray:[I

    add-int/lit8 v6, v2, 0x1

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v7

    double-to-int v3, v3

    aput v3, v5, v2

    move v2, v6

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mSeamlessZoomValueArray:[I

    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x64
        0xc8
    .end array-data
.end method

.method private getCameraDeviceId(I)I
    .locals 2

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    packed-switch p1, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCameraDeviceId : wrong id("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraHolder"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :pswitch_0
    sget p1, Lcom/samsung/android/camera/feature/Feature;->BACK_SUPER_RESOLUTION_CAMERA_ID:I

    if-eq p1, p0, :cond_0

    sget p0, Lcom/samsung/android/camera/feature/Feature;->BACK_SUPER_RESOLUTION_CAMERA_ID:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_1
    sget p0, Lcom/samsung/android/camera/feature/Feature;->BACK_WIDE_CAMERA_ID:I

    return p0

    :pswitch_2
    sget p0, Lcom/samsung/android/camera/feature/Feature;->BACK_TELE_CAMERA_ID:I

    return p0

    :cond_1
    :pswitch_3
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method closeCamera(I)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getCameraDeviceId(I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeCamera : deviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraHolder"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCamDeviceList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/CamDevice;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamDevice;->close()V

    :cond_0
    return-void
.end method

.method public declared-synchronized getAvailableZoomValueArrayList(II)Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mAvailableZoomValueListMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->createAvailableZoomValueArrayList(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mAvailableZoomValueListMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/ArrayList;

    array-length v0, p1

    if-le v0, p2, :cond_1

    aget-object p1, p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p2, 0x0

    :try_start_1
    aget-object p1, p1, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getCameraDevice(I)Lcom/samsung/android/camera/core2/CamDevice;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getCameraDeviceId(I)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCamDeviceList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/CamDevice;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Don\'t have prepared device, id = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraHolder"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public declared-synchronized getCapability(I)Lcom/sec/android/app/camera/interfaces/Capability;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getCameraDeviceId(I)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCapabilityList:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCapabilityList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CameraHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapability : add capability("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") - Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCamDeviceManager:Lcom/samsung/android/camera/core2/device/CamDeviceManager;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceManager;->getCamCapability(Ljava/lang/String;)Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCapabilityList:Landroid/util/SparseArray;

    new-instance v4, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;

    invoke-direct {v4, v2}, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;-><init>(Lcom/samsung/android/camera/core2/CamCapability;)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapability : add capability("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") - End ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no capability for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCapabilityList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/interfaces/Capability;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Capability list is invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getSamsungSensorInfoSensorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCamDeviceManager:Lcom/samsung/android/camera/core2/device/CamDeviceManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceManager;->getCamCapability(Ljava/lang/String;)Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungSensorInfoSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public declared-synchronized getSeamlessZoomValueArray()[I
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SEAMLESS_ZOOM:Z

    if-nez v0, :cond_0

    const-string v0, "CameraHolder"

    const-string v1, "getSeamlessZoomValueArray : Returned because seamless zoom is not supprted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mSeamlessZoomValueArray:[I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->createSeamlessZoomValueArray()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mSeamlessZoomValueArray:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method openCamera(IILcom/samsung/android/camera/core2/CamDevice$StateCallback;Landroid/os/Handler;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/camera/core2/exception/CamAccessException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getCameraDeviceId(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getCameraDeviceId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera : cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), deviceId = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraHolder"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCamDeviceManager:Lcom/samsung/android/camera/core2/device/CamDeviceManager;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/samsung/android/camera/core2/device/CamDeviceManager;->openCamDevice(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/camera/core2/CamDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "openCamera failed : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public setCameraDevice(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CameraHolder;->mCamDeviceList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
