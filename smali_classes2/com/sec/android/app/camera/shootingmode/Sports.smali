.class Lcom/sec/android/app/camera/shootingmode/Sports;
.super Ljava/lang/Object;
.source "Sports.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Sports"


# instance fields
.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mTimerCountingMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mTimerCountingMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    return-void
.end method


# virtual methods
.method public isShootingAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SPORTS:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SPORTS:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->setZoomChangeGroupOpenStateListener(Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;)V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V
    .locals 0

    return-void
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 0

    const-string p1, "Sports"

    const-string p2, "onCreateView"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    return-void
.end method

.method public onInactivate()V
    .locals 2

    const-string v0, "Sports"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->setZoomChangeGroupOpenStateListener(Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPictureSaved()V
    .locals 0

    return-void
.end method

.method public onRecordKeyCanceled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onRecordKeyPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onRecordKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterKeyCanceled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterKeyLongPressed(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterKeyPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterKeyPullDown(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Sports$1;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x70

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mTimerCountingMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mTimerCountingMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 0

    const-string p0, "Sports"

    const-string p1, "onStartPreviewPrepared"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onZoomChangeGroupClosed()V
    .locals 2

    const-string v0, "Sports"

    const-string v1, "onZoomChangeGroupClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x100

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    :cond_0
    return-void
.end method

.method public onZoomChangeGroupOpenPrepared()V
    .locals 0

    return-void
.end method

.method public onZoomChangeGroupOpened()V
    .locals 2

    const-string v0, "Sports"

    const-string v1, "onZoomChangeGroupOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Sports;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x100

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    return-void
.end method
