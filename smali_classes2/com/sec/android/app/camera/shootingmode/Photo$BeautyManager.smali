.class Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;
.super Ljava/lang/Object;
.source "Photo.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Photo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BeautyManager"
.end annotation


# static fields
.field private static final FACE_DETECTION_HW:I = 0x1

.field private static final FACE_DETECTION_NONE:I = 0x0

.field private static final FACE_DETECTION_SW:I = 0x2


# instance fields
.field private final transient mBackBeautySettingKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final transient mBodyBeautySettingKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceDetectionType:I

.field private final transient mFrontBeautySettingKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFaceDetected:Z

.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Photo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Photo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->mFaceDetectionType:I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->mIsFaceDetected:Z

    new-instance p1, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->mBackBeautySettingKeyMap:Ljava/util/HashMap;

    new-instance p1, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$2;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->mFrontBeautySettingKeyMap:Ljava/util/HashMap;

    new-instance p1, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$3;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager$3;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->mBodyBeautySettingKeyMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->isEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->turnOffShapeCorrectionEffect()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->isShapeCorrectionAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;[Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->handleHwFaceDetectionCallback([Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->mIsFaceDetected:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->stop()V

    return-void
.end method

.method static synthetic access$5200(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->sendSALogForBeautyPictureTaken()V

    return-void
.end method

.method static synthetic access$5600(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->handleStartPreviewCompleted()V

    return-void
.end method

.method static synthetic access$6800(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->isBodyBeautyEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->start()V

    return-void
.end method

.method private enableEngineCallbacks(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableSwFaceDetectionEventCallback(Z)V

    :cond_0
    return-void
.end method

.method private enableEngineEventListeners(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSwFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;)V

    :cond_1
    return-void
.end method

.method private handleFaceData([Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6000(Lcom/sec/android/app/camera/shootingmode/Photo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->turnOffShapeCorrectionEffect()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->updateShapeCorrectionEffectParameter([Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private handleHwFaceDetectionCallback([Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->mIsFaceDetected:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->mIsFaceDetected:Z

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->setFaceDetectionType(IZ)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->isShapeCorrectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->isFaceDetectionTypeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->isFaceDetectionTypeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->handleFaceData([Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method private handleStartPreviewCompleted()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->isShapeCorrectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->enableShapeCorrection(Z)V

    :cond_0
    return-void
.end method

.method private handleSwFaceDetectionCallback([Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->setFaceDetectionType(IZ)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->isShapeCorrectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->isFaceDetectionTypeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->handleFaceData([Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private isBackBeautyEnabled()Z
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackPhotoBeautyType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackPhotoBeautyType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackSmartBeautyLevel()I

    move-result p0

    if-lez p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MANUAL_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getSubCommandIdList(Lcom/sec/android/app/camera/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/interfaces/CommandId;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->mBackBeautySettingKeyMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_4
    return v1
.end method

.method private isBodyBeautyEnabled()Z
    .locals 5

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BODY_BEAUTY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackPhotoBodyBeautyType()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getSubCommandIdList(Lcom/sec/android/app/camera/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CommandId;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->mBodyBeautySettingKeyMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private isEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->isBackBeautyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->isBodyBeautyEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->isFrontBeautyEnabled()Z

    move-result p0

    return p0
.end method

.method private isFaceDetectionTypeEnabled(I)Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->mFaceDetectionType:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFrontBeautyEnabled()Z
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontPhotoBeautyType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontPhotoBeautyType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontSmartBeautyLevel()I

    move-result p0

    if-lez p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getSubCommandIdList(Lcom/sec/android/app/camera/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/interfaces/CommandId;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->mFrontBeautySettingKeyMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_4
    return v1
.end method

.method private isShapeCorrectionAvailable()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_LIVE_BEAUTY_SHAPE_CORRECTION:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->FILTER:Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->MY_FILTER:Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSensorCrop()I

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_0
    return v1
.end method

.method private sendSALogForBeautyPictureTaken()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackPhotoBeautyType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0030"

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackPhotoBeautyType()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackSmartBeautyLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0026"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackPhotoBeautyType()I

    move-result v0

    if-ne v0, v1, :cond_7

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BEAUTY_BRIGHTEN:Z

    const-string v1, "0040"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackBeautySmoothnessLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackBeautyBrightenLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0049"

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackSkinToneLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_LIVE_BEAUTY_MANUAL_RESHAPE:Z

    const-string v1, "0043"

    const-string v2, "0041"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackReshapeCheekLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackReshapeChinLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0042"

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackReshapeEyesLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackReshapeNoseLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0044"

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackReshapeLipLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0045"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackSkinColorLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0046"

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackSlimFaceLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackLargeEyesLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontPhotoBeautyType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "2038"

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontPhotoBeautyType()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontSmartBeautyLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "2010"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontPhotoBeautyType()I

    move-result v0

    if-ne v0, v1, :cond_7

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BEAUTY_BRIGHTEN:Z

    const-string v1, "2031"

    const-string v2, "2030"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontBeautySmoothnessLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontBeautyBrightenLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontSkinToneLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_LIVE_BEAUTY_MANUAL_RESHAPE:Z

    const-string v2, "2033"

    const-string v3, "2032"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontReshapeCheekLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontReshapeChinLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontReshapeEyesLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontReshapeNoseLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2034"

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontReshapeLipLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "2035"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontSkinColorLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2036"

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontSlimFaceLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontLargeEyesLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private setFaceDetectionType(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->mFaceDetectionType:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->mFaceDetectionType:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->mFaceDetectionType:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->mFaceDetectionType:I

    :goto_0
    return-void
.end method

.method private start()V
    .locals 2

    const-string v0, "Photo"

    const-string v1, "BeautyManager start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->enableEngineEventListeners(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->enableEngineCallbacks(Z)V

    return-void
.end method

.method private stop()V
    .locals 2

    const-string v0, "Photo"

    const-string v1, "BeautyManager stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->enableEngineCallbacks(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->enableEngineEventListeners(Z)V

    return-void
.end method

.method private turnOffShapeCorrectionEffect()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    const-string v0, "FA=0,LE=0,TO=0,RI=0,BO=0"

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method private updateShapeCorrectionEffectParameter([Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    if-le v3, v2, :cond_0

    move v1, v0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FA="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",LE="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",TO="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",RI="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",BO="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSwFaceDetection([Landroid/graphics/Rect;)Z
    .locals 0
    .param p1    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->handleSwFaceDetectionCallback([Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCompositionGuide()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
