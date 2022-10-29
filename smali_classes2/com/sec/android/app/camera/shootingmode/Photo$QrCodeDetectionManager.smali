.class Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;
.super Ljava/lang/Object;
.source "Photo.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$QRCodeDetectionEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Photo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QrCodeDetectionManager"
.end annotation


# instance fields
.field private mPrevQrRawData:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Photo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Photo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->mPrevQrRawData:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->hideQrPopup()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->hideQrRect()V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->clearQrData()V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->isPopupVisible()Z

    move-result p0

    return p0
.end method

.method private clearQrData()V
    .locals 2

    const-string v0, "Photo"

    const-string v1, "clearQrData"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->mPrevQrRawData:Ljava/lang/String;

    return-void
.end method

.method private hideQrPopup()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->QR_CODE_POPUP:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    :cond_0
    return-void
.end method

.method private hideQrRect()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->hideQrRectView()V

    return-void
.end method

.method private isPopupVisible()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->QR_CODE_POPUP:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupVisible(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result p0

    return p0
.end method

.method private isQrCodeDetectionRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Photo"

    if-nez v0, :cond_0

    const-string p0, "isQrCodeDetectionRequired returned because Activity is not running"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "isQrCodeDetectionRequired returned because shooting mode is not activated"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "isQrCodeDetectionRequired returned because shutter key is already pressed"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "isQrCodeDetectionRequired returned because capture processing"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$600(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$7200(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/SmartScan;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$600(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$7200(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/SmartScan;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/SmartScan;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "isQrCodeDetectionRequired returned because smart scan is visible"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->isPopupVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->hideQrPopup()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->hideQrRect()V

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->isPopupVisible()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private refreshQrPopup(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Photo"

    const-string v1, "refreshQrPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideTouchEvSlider()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$600(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$7200(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/SmartScan;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$600(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$7200(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/SmartScan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SmartScan;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCompositionGuide()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$600(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$5500(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/CompositionGuide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/CompositionGuide;->hide()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupVisible(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showQrPopup(Ljava/lang/String;)V

    return-void
.end method

.method private updateQrRectView([I)V
    .locals 3
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p1

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    int-to-float v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewDisplayMatrix(I)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->updateQrRectView([F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$onQRCodeDetected$0$Photo$QrCodeDetectionManager(Ljava/lang/String;[I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->isQrCodeDetectionRequired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQRCodeDetected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Photo"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->mPrevQrRawData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->refreshQrPopup(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->mPrevQrRawData:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->isPopupVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->updateQrRectView([I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p0

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onError(I)V
    .locals 1

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QrCodeDetectionManager - onError : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Photo"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onQRCodeDetected(Ljava/lang/String;[I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$QrCodeDetectionManager$y47iYiiOHGoaumaphrcjZ94ej3k;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$QrCodeDetectionManager$y47iYiiOHGoaumaphrcjZ94ej3k;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;Ljava/lang/String;[I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
