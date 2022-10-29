.class Lcom/sec/android/app/camera/shootingmode/More;
.super Ljava/lang/Object;
.source "More.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/glview/GLView$DragListener;
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeShortcutController$ListScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MoreMode"


# instance fields
.field private mArButton:Lcom/samsung/android/glview/GLButton;

.field private mBackButton:Lcom/samsung/android/glview/GLButton;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBixbyButton:Lcom/samsung/android/glview/GLButton;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mDragHelpFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

.field private mDragHelpViewShowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mEditButton:Lcom/samsung/android/glview/GLButton;

.field private mEmptyTextViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mGridHelpText:Lcom/samsung/android/glview/GLText;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpText:Lcom/samsung/android/glview/GLText;

.field private mInfoButton:Lcom/samsung/android/glview/GLButton;

.field private mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private final mInformationMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragHelpViewStart:Z

.field private mIsEditMode:Z

.field private mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

.field private mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

.field private mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mMoreShootingModeViewGroupLandscapeHeight:F

.field private mMoreShootingModeViewGroupLandscapeWidth:F

.field private mMoreShootingModeViewGroupPortraitHeight:F

.field private mMoreShootingModeViewGroupPortraitWidth:F

.field private mRepeatDragHelpAnimator:Landroid/animation/ValueAnimator;

.field private mSaveButton:Lcom/samsung/android/glview/GLButton;

.field private mTopBaseLine:F

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsEditMode:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInformationMap:Landroid/util/SparseArray;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsDragHelpViewStart:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/More;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->checkGridListIsEmpty()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mGridHelpText:Lcom/samsung/android/glview/GLText;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBackButton:Lcom/samsung/android/glview/GLButton;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/More;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->changeEditMode()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/More;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mRepeatDragHelpAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/camera/shootingmode/More;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mRepeatDragHelpAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/More;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/More;->hideDragHelpAnimation(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/shootingmode/More;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInformationMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mHelpText:Lcom/samsung/android/glview/GLText;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/camera/shootingmode/More;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsDragHelpViewStart:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/More;)Lcom/samsung/android/glview/GLButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    return-object p0
.end method

.method private cancelDragHelpViewAnimator()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsDragHelpViewStart:Z

    if-nez v0, :cond_0

    const-string p0, "MoreMode"

    const-string v0, "The drag help animation does not start."

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;->setAnimationCallback(Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView$AnimationCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpViewShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpViewShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/More;->hideDragHelpAnimation(I)V

    :cond_3
    return-void
.end method

.method private changeEditMode()V
    .locals 4

    const-string v0, "MoreMode"

    const-string v1, "changeEditMode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsEditMode:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x100

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mGridHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->setEditMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->showModeEditMark()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->setOverlayViewVisibility(Z)V

    return-void
.end method

.method private changeNormalMode()V
    .locals 4

    const-string v0, "MoreMode"

    const-string v1, "changeNormalMode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsEditMode:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->setOverlayViewVisibility(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->setEditMode(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->hideModeEditMark()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshShootingModeShortcut()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, 0x100

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mGridHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private checkGridListIsEmpty()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGridListIsEmpty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoreMode"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEmptyTextViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->makeGridListEmptyTextViewGroup()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEmptyTextViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->contains(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEmptyTextViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEmptyTextViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->contains(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEmptyTextViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getColumnSize(F)I
    .locals 3

    const p0, 0x7f0701d0

    invoke-static {p0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    const v1, 0x7f0701ce

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {p0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result p0

    const/4 v1, 0x1

    :goto_0
    add-float/2addr p0, v0

    cmpg-float v2, p0, p1

    if-gtz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private hideDragHelpAnimation(I)V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsDragHelpViewStart:Z

    const-string v1, "MoreMode"

    if-nez v0, :cond_0

    const-string p0, "The drag help animation does not start."

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideDragHelpAnimation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/view/animation/SineOut80;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineOut80;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$ozQN3qIPSKGfG4OX-xXrqj_akxg;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$ozQN3qIPSKGfG4OX-xXrqj_akxg;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/More$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/More$1;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/view/animation/SineOut80;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineOut80;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$hYHlLjXpx7h0YQBJBajnuomTAhU;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$hYHlLjXpx7h0YQBJBajnuomTAhU;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/More$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/More$2;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsDragHelpViewStart:Z

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private hideInformation()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v2, v1, [F

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateX()F

    move-result v0

    const/4 v3, 0x0

    aput v0, v2, v3

    const v0, 0x7f0701d1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    const/4 v4, 0x1

    aput v0, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const v2, 0x7f0b001d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v5, v2

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/view/animation/SineOut80;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineOut80;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$G50zffEY6PewKb6eGVnsCOfB7P8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$G50zffEY6PewKb6eGVnsCOfB7P8;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getAlpha()F

    move-result v5

    aput v5, v2, v3

    const/4 v5, 0x0

    aput v5, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const v5, 0x7f0b001c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/view/animation/SineOut80;

    invoke-direct {v5}, Lcom/samsung/android/view/animation/SineOut80;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$cm27kOwGCWPWzMias5KvpEWx6eo;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$cm27kOwGCWPWzMias5KvpEWx6eo;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v6, Lcom/sec/android/app/camera/shootingmode/More$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/shootingmode/More$3;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p0, v1, [Landroid/animation/Animator;

    aput-object v0, p0, v3

    aput-object v2, p0, v4

    invoke-virtual {v5, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private initMoreShootingViewGroupSize()V
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getPreviewTop(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mTopBaseLine:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f0701eb

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroupPortraitWidth:F

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mTopBaseLine:F

    sub-float/2addr v0, v1

    const v1, 0x7f0701f7

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x7f0701f1

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v0, v3

    const v3, 0x7f0701fa

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v0, v3

    const v3, 0x7f0701df

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroupPortraitHeight:F

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/More;->mTopBaseLine:F

    sub-float/2addr v0, v3

    const v3, 0x7f0701ec

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroupLandscapeWidth:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x7f0701f8

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x7f0701fb

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x7f0701e0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroupLandscapeHeight:F

    return-void
.end method

.method private isInformationSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInformationMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeBackButton()V
    .locals 12

    new-instance v9, Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const v10, 0x7f07019f

    invoke-static {v10}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    const v11, 0x7f0701a1

    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    const v0, 0x7f0701a0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    const v6, 0x7f080a11

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v9, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f1101cf

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBackButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$bkxGtvYtdXg0xIRQV5xsGXCeFCk;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$bkxGtvYtdXg0xIRQV5xsGXCeFCk;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {v10}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const v2, 0x7f0701a2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v10}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v10}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeDragHelpText()V
    .locals 22

    move-object/from16 v6, p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getPreviewTop(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)I

    move-result v0

    int-to-float v10, v0

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    int-to-float v1, v1

    iget v2, v6, Lcom/sec/android/app/camera/shootingmode/More;->mTopBaseLine:F

    const v3, 0x7f0701f7

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    const v3, 0x7f0701f1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    add-float/2addr v2, v4

    const v4, 0x7f0701fa

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    add-float/2addr v2, v4

    const v4, 0x7f0701f8

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    add-float/2addr v4, v3

    const v3, 0x7f0701fb

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    add-float v5, v4, v3

    const v3, 0x7f07019a

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v9

    const v3, 0x7f07019e

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    sub-float v3, v2, v10

    add-float v2, v0, v10

    add-float/2addr v2, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    const/4 v15, 0x0

    sub-float/2addr v1, v15

    sub-float/2addr v0, v10

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    add-float/2addr v0, v10

    new-instance v14, Lcom/samsung/android/glview/GLText;

    iget-object v7, v6, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const v7, 0x7f11026a

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v7, 0x7f07019c

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v16

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v17

    const v7, 0x7f060071

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v18

    const/16 v19, 0x0

    move-object v7, v14

    move v11, v4

    move v12, v3

    move/from16 v20, v5

    move-object v5, v14

    move/from16 v14, v16

    move/from16 v21, v3

    move v3, v15

    move-object/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    invoke-direct/range {v7 .. v17}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FLandroid/graphics/Typeface;IZ)V

    iput-object v5, v6, Lcom/sec/android/app/camera/shootingmode/More;->mGridHelpText:Lcom/samsung/android/glview/GLText;

    iget-object v5, v6, Lcom/sec/android/app/camera/shootingmode/More;->mGridHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v5, v6, Lcom/sec/android/app/camera/shootingmode/More;->mGridHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    iget-object v5, v6, Lcom/sec/android/app/camera/shootingmode/More;->mGridHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v5, v7, v3, v2}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    iget-object v2, v6, Lcom/sec/android/app/camera/shootingmode/More;->mGridHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1, v0}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    iget-object v0, v6, Lcom/sec/android/app/camera/shootingmode/More;->mGridHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v7, v6, Lcom/sec/android/app/camera/shootingmode/More;->mGridHelpText:Lcom/samsung/android/glview/GLText;

    new-instance v8, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$_v-We4R_isCqrP9Jw0fcWDk2iFk;

    move-object v0, v8

    move-object/from16 v1, p0

    move v2, v4

    move/from16 v3, v21

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$_v-We4R_isCqrP9Jw0fcWDk2iFk;-><init>(Lcom/sec/android/app/camera/shootingmode/More;FFFF)V

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    iget-object v0, v6, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, v6, Lcom/sec/android/app/camera/shootingmode/More;->mGridHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeDragViewGroup()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->clear()V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mHelpText:Lcom/samsung/android/glview/GLText;

    :cond_0
    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    if-eqz v1, :cond_1

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;->clear()V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mEmptyTextViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_2

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mEmptyTextViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mEmptyTextViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    :cond_2
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getPreviewTop(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x7f07019b

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    const v5, 0x7f07019a

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v8

    const v5, 0x7f0701ac

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    add-float v9, v1, v5

    add-float v5, v2, v1

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/More;->mGridHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v6

    add-float/2addr v6, v5

    const/high16 v17, 0x40000000    # 2.0f

    div-float v15, v6, v17

    sub-float v14, v3, v4

    sub-float/2addr v2, v1

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/More;->mGridHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v6

    sub-float/2addr v2, v6

    div-float v2, v2, v17

    add-float/2addr v2, v1

    new-instance v13, Lcom/samsung/android/glview/GLText;

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    const v6, 0x7f07019e

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v10

    const v6, 0x7f070199

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v11

    const v6, 0x7f11026b

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v6, 0x7f07019c

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v16

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v18

    const v6, 0x7f060063

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v19

    const/16 v20, 0x0

    move-object v6, v13

    move/from16 v21, v5

    move-object v5, v13

    move/from16 v13, v16

    move/from16 v22, v3

    move v3, v14

    move-object/from16 v14, v18

    move/from16 v18, v1

    move v1, v15

    move/from16 v15, v19

    move/from16 v16, v20

    invoke-direct/range {v6 .. v16}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FLandroid/graphics/Typeface;IZ)V

    iput-object v5, v0, Lcom/sec/android/app/camera/shootingmode/More;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/More;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLText;->setAlpha(F)V

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/More;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/More;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/More;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v5, v8, v4, v1}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3, v2}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-array v1, v8, [Z

    const/4 v2, 0x0

    aput-boolean v8, v1, v2

    const v2, 0x7f0701a8

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f0701ab

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v13

    const v3, 0x7f0701a7

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v14

    const v3, 0x7f0701a9

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v11

    const v3, 0x7f0701aa

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    add-float v12, v18, v3

    sub-float v3, v22, v14

    sub-float/2addr v3, v2

    add-float v5, v21, v13

    div-float v5, v5, v17

    add-float/2addr v2, v14

    sub-float v7, v21, v13

    div-float v7, v7, v17

    new-instance v15, Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v16, 0x7f0806b0

    move-object v9, v15

    move-object v6, v15

    move/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    iput-object v6, v0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    new-instance v9, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$38n5SmC-u2ui5bQOmd7ZVTczJTs;

    invoke-direct {v9, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$38n5SmC-u2ui5bQOmd7ZVTczJTs;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v6, v9}, Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    invoke-virtual {v6, v8}, Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;->setRotatable(Z)V

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    invoke-virtual {v6, v8, v3, v5}, Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;->setLeftTop(IFF)V

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    invoke-virtual {v3, v4, v2, v7}, Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;->setLeftTop(IFF)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;->setAlpha(F)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/More$4;

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/camera/shootingmode/More$4;-><init>(Lcom/sec/android/app/camera/shootingmode/More;[Z)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;->setAnimationCallback(Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView$AnimationCallback;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeEditButton()V
    .locals 11

    const v0, 0x7f0701a5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getShootingModeShortcutPosY()F

    move-result v1

    add-float v5, v0, v1

    const v0, 0x7f0701a4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v7

    const v1, 0x7f0701a3

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float v4, v0, v1

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const v8, 0x7f0809f3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    move v6, v7

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f110274

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$lDbvtvdSQu5_eChghcGrqD_gRpU;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$lDbvtvdSQu5_eChghcGrqD_gRpU;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeGridList()V
    .locals 8

    new-instance v7, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroupPortraitWidth:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroupPortraitHeight:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/BaseMenuController;FFFF)V

    iput-object v7, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInformationMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->addInformation(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeGridListEmptyTextViewGroup()V
    .locals 22

    move-object/from16 v0, p0

    const v1, 0x7f110327

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v1, 0x7f110326

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v1, 0x7f0701e4

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f0701e3

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v20

    const v2, 0x7f0701e1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v21

    const v2, 0x7f0701e2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v16

    const v2, 0x7f060071

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v18

    new-instance v14, Lcom/samsung/android/glview/GLText;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    move-object v2, v14

    move v6, v1

    move/from16 v7, v20

    move/from16 v9, v16

    move/from16 v11, v18

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FLandroid/graphics/Typeface;IZ)V

    const/4 v2, 0x2

    invoke-virtual {v14, v2, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    new-instance v8, Lcom/samsung/android/glview/GLText;

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v17

    const/4 v11, 0x0

    const/16 v19, 0x0

    move-object v9, v8

    move/from16 v12, v20

    move v13, v1

    move-object v7, v14

    move/from16 v14, v21

    invoke-direct/range {v9 .. v19}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FLandroid/graphics/Typeface;IZ)V

    invoke-virtual {v8, v2, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    add-float v9, v20, v21

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getPreviewTop(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v4

    int-to-float v10, v4

    new-instance v11, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sub-float v5, v10, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v5, v12

    add-float v13, v3, v2

    div-float v6, v13, v12

    move-object v2, v11

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v1

    move-object v14, v7

    move v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v11, v0, Lcom/sec/android/app/camera/shootingmode/More;->mEmptyTextViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mEmptyTextViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mEmptyTextViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    sub-float v4, v10, v9

    div-float/2addr v4, v12

    add-float v5, v13, v1

    div-float/2addr v5, v12

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mEmptyTextViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    add-float v10, v10, v20

    add-float v10, v10, v21

    div-float/2addr v10, v12

    sub-float/2addr v13, v1

    div-float/2addr v13, v12

    const/4 v1, 0x3

    invoke-virtual {v2, v1, v10, v13}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mEmptyTextViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v14}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/More;->mEmptyTextViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeInfoButton()V
    .locals 24

    move-object/from16 v7, p0

    const v0, 0x7f0701e7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    const v1, 0x7f0701e9

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v11

    const v1, 0x7f0701ea

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    const v1, 0x7f0701e6

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    const v1, 0x7f0701e8

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f110328

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v4

    new-instance v6, Lcom/samsung/android/glview/GLImage;

    iget-object v8, v7, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const/4 v9, 0x0

    const v10, 0x7f080a28

    invoke-direct {v6, v8, v9, v9, v10}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v6

    sub-float v6, v3, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float v8, v3, v4

    add-float v23, v8, v5

    new-instance v10, Lcom/samsung/android/glview/GLText;

    iget-object v8, v7, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v20

    const v8, 0x7f060201

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v21

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    move-object v12, v10

    move/from16 v16, v23

    move/from16 v17, v3

    move-object/from16 v18, v2

    move/from16 v19, v1

    invoke-direct/range {v12 .. v22}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FLandroid/graphics/Typeface;IZ)V

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v10, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    new-instance v1, Lcom/samsung/android/glview/GLButton;

    iget-object v2, v7, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    sub-float/2addr v2, v3

    sub-float v0, v2, v4

    const v14, 0x7f080a28

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v1

    move-object v2, v10

    move v10, v0

    move/from16 v12, v23

    move v13, v3

    invoke-direct/range {v8 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V

    iput-object v1, v7, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, v7, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, v7, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    iget-object v0, v7, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6, v6}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    iget-object v0, v7, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, v7, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    iget-object v8, v7, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    new-instance v9, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$jOkKB6ZUTQbJJ_WBO6wEtOtxaSY;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v6, v23

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$jOkKB6ZUTQbJJ_WBO6wEtOtxaSY;-><init>(Lcom/sec/android/app/camera/shootingmode/More;Lcom/samsung/android/glview/GLText;FFFF)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/glview/GLButton;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    iget-object v0, v7, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$P8ofHZEKqGUdSq__4D4C5MOOH4g;

    invoke-direct {v1, v7}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$P8ofHZEKqGUdSq__4D4C5MOOH4g;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, v7, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, v7, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeInfoViewGroup()V
    .locals 28

    move-object/from16 v0, p0

    new-instance v7, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    int-to-float v5, v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    int-to-float v6, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v11, Lcom/samsung/android/glview/GLRectangle;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v6, v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v7, v2

    const v2, 0x7f06002e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    const/4 v5, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    invoke-virtual {v1, v11}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    const v2, 0x7f07019f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f0701a0

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    const v4, 0x7f070202

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v13

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/Util;->getNavigationBarHeight(Landroid/content/Context;)F

    move-result v14

    new-instance v15, Lcom/samsung/android/glview/GLButton;

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    if-eqz v1, :cond_0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v4

    sub-float/2addr v4, v2

    sub-float/2addr v4, v3

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    const v16, 0x7f0701a1

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    if-eqz v1, :cond_1

    const v4, 0x7f080a12

    goto :goto_1

    :cond_1
    const v4, 0x7f080a11

    :goto_1
    move v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v15

    move v8, v3

    move v9, v3

    invoke-direct/range {v4 .. v12}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    const/4 v5, 0x3

    if-eqz v1, :cond_2

    add-float v6, v2, v3

    invoke-virtual {v15, v4, v13, v6}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v13

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v14

    sub-float/2addr v7, v2

    sub-float/2addr v7, v3

    invoke-virtual {v15, v5, v6, v7}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v14

    sub-float/2addr v6, v2

    invoke-virtual {v15, v4, v13, v6}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v13

    invoke-virtual {v15, v5, v6, v2}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    :goto_2
    new-instance v6, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$Pd4BHbqz8Nk318ItXDxkIWxdpJQ;

    invoke-direct {v6, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$Pd4BHbqz8Nk318ItXDxkIWxdpJQ;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v15, v6}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6, v15}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    const v6, 0x7f0701c4

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    const v7, 0x7f0701c6

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    add-float v8, v2, v3

    add-float/2addr v8, v7

    const v9, 0x7f110329

    invoke-static {v9}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-static {v9, v6, v10}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v10

    new-instance v11, Lcom/samsung/android/glview/GLText;

    iget-object v12, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v12}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v18

    if-eqz v1, :cond_3

    iget-object v12, v0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v12}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v12

    sub-float/2addr v12, v8

    sub-float/2addr v12, v10

    move/from16 v19, v12

    goto :goto_3

    :cond_3
    move/from16 v19, v8

    :goto_3
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v20

    const v12, 0x7f0701c5

    invoke-static {v12}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v22

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v25

    const v12, 0x7f060033

    invoke-static {v12}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v17, v11

    move/from16 v21, v10

    move-object/from16 v23, v9

    move/from16 v24, v6

    invoke-direct/range {v17 .. v27}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FLandroid/graphics/Typeface;IZ)V

    invoke-virtual {v11, v4}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    if-eqz v1, :cond_4

    add-float/2addr v8, v10

    invoke-virtual {v11, v4, v13, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v13

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v14

    sub-float/2addr v4, v2

    sub-float/2addr v4, v3

    sub-float/2addr v4, v7

    sub-float/2addr v4, v10

    invoke-virtual {v11, v5, v1, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v14

    sub-float/2addr v1, v2

    sub-float/2addr v1, v7

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v11, v4, v13, v1}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v13

    invoke-virtual {v11, v5, v1, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    :goto_4
    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v11}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/More;->makeInformationList()Lcom/samsung/android/glview/GLGridList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeInformationList()Lcom/samsung/android/glview/GLGridList;
    .locals 12

    const v0, 0x7f0701ca

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    new-instance v10, Lcom/samsung/android/glview/GLGridList;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const v11, 0x7f0701c2

    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    const v1, 0x7f0701d0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/Util;->getNavigationBarHeight(Landroid/content/Context;)F

    move-result v6

    sub-float v6, v4, v6

    const v4, 0x7f0701ce

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    const v4, 0x7f0701cf

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v8

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/More;->getColumnSize(F)I

    move-result v9

    move-object v1, v10

    move v4, v0

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/glview/GLGridList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFI)V

    const v1, 0x7f060090

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    const v2, 0x7f080b83

    invoke-virtual {v10, v2, v1}, Lcom/samsung/android/glview/GLGridList;->setScrollBarResource(II)V

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/More$5;

    invoke-direct {v1, p0, v10}, Lcom/sec/android/app/camera/shootingmode/More$5;-><init>(Lcom/sec/android/app/camera/shootingmode/More;Lcom/samsung/android/glview/GLGridList;)V

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    invoke-virtual {v10, v2}, Lcom/samsung/android/glview/GLGridList;->setRotatable(Z)V

    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v10, v3, v1, v0}, Lcom/samsung/android/glview/GLGridList;->setLeftTop(IFF)V

    const v1, 0x7f0701cb

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/util/Util;->getNavigationBarHeight(Landroid/content/Context;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v10, v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->setLeftTop(IFF)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v2, v1

    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    const/4 v3, 0x3

    invoke-virtual {v10, v3, v2, v1}, Lcom/samsung/android/glview/GLGridList;->setLeftTop(IFF)V

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$gTRvwJyqIe5e5vyXYsFelqsYFLs;

    invoke-direct {v1, p0, v10, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$gTRvwJyqIe5e5vyXYsFelqsYFLs;-><init>(Lcom/sec/android/app/camera/shootingmode/More;Lcom/samsung/android/glview/GLGridList;F)V

    invoke-virtual {v10, v1}, Lcom/samsung/android/glview/GLGridList;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    return-object v10
.end method

.method private makeMoreShootingViewGroup()V
    .locals 11

    const v0, 0x7f0701eb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    const v1, 0x7f0701f8

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f0701f1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    add-float/2addr v1, v3

    const v3, 0x7f0701fb

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    add-float v7, v1, v3

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mTopBaseLine:F

    const v3, 0x7f0701f7

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    add-float/2addr v1, v3

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x7f0701fa

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    add-float v8, v1, v2

    const v1, 0x7f0701ec

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v9

    new-instance v10, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroupPortraitWidth:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroupPortraitHeight:F

    move-object v1, v10

    move v3, v0

    move v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v10, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v8}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v1

    sub-float/2addr v1, v9

    invoke-virtual {v0, v2, v7, v1}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v7

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mTopBaseLine:F

    add-float/2addr v2, v9

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$eV-_NnR4e7Fa1qSs0N-ZYWNY-po;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$eV-_NnR4e7Fa1qSs0N-ZYWNY-po;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeSaveButton()V
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x7f070203

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f0701fe

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v13

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v13

    const v3, 0x7f0701fd

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float v14, v2, v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v15, v2, v3

    new-instance v12, Lcom/samsung/android/glview/GLText;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const v2, 0x7f1103c8

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v2, 0x7f070201

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v9

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v10

    const v2, 0x7f060033

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object v2, v12

    move v6, v1

    move v7, v13

    move/from16 v17, v13

    move-object v13, v12

    move/from16 v12, v16

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FLandroid/graphics/Typeface;IZ)V

    const/4 v2, 0x2

    invoke-virtual {v13, v2, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    new-instance v11, Lcom/samsung/android/glview/GLButton;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    move v4, v15

    move v5, v14

    move/from16 v7, v17

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v11, v0, Lcom/sec/android/app/camera/shootingmode/More;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v13}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$hVjwFlVTXRcLl1wjD0n6-ZEKHHM;

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$hVjwFlVTXRcLl1wjD0n6-ZEKHHM;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2, v15, v14}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const v2, 0x7f070202

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/More;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    sub-float/2addr v3, v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x7f070200

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    sub-float/2addr v2, v4

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/More;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v4

    sub-float/2addr v2, v4

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3, v2}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/More;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeShortcutList()V
    .locals 5

    const v0, 0x7f0704ac

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    const v1, 0x7f0704b0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v4

    add-float/2addr v0, v4

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/BaseMenuController;FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInformationMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->addInformation(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(ILcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeTopButton()V
    .locals 45

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    const-string v3, "com.samsung.android.visionintelligence"

    invoke-static {v1, v3, v2}, Lcom/sec/android/app/camera/util/PackageUtil;->isPkgExistAsUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    const-string v6, "com.samsung.android.aremoji"

    invoke-static {v4, v6, v5}, Lcom/sec/android/app/camera/util/PackageUtil;->isPkgExistAsUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v6

    const-string v7, "com.samsung.android.arzone"

    invoke-static {v5, v7, v6}, Lcom/sec/android/app/camera/util/PackageUtil;->isPkgExistAsUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    const v6, 0x7f0701f9

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    const v7, 0x7f0701f1

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v17

    const v7, 0x7f0701f8

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v15

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/More;->mTopBaseLine:F

    const v8, 0x7f0701f7

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v8

    add-float v14, v7, v8

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v7

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/More;->mTopBaseLine:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v6, v8

    sub-float/2addr v7, v9

    const v9, 0x7f0701f0

    invoke-static {v9}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v9

    sub-float/2addr v7, v9

    div-float v18, v7, v8

    const v7, 0x7f0701ef

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v19

    const v7, 0x7f0701ee

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    sub-float v7, v17, v7

    div-float v13, v7, v8

    const v7, 0x7f0701f6

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v31

    const v7, 0x7f0701f3

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v32

    const v7, 0x7f0701f4

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v33

    sub-float v7, v17, v32

    div-float v34, v7, v8

    const/4 v12, 0x3

    const/4 v11, 0x4

    const v10, 0x7f080763

    const v35, 0x7f060031

    const v36, 0x7f0701f5

    const v37, 0x7f0701f2

    if-eqz v1, :cond_3

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    new-instance v9, Lcom/samsung/android/glview/GLText;

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v21

    const v7, 0x7f1101e3

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v36 .. v36}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v27

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v28

    invoke-static/range {v35 .. v35}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v29

    const/16 v30, 0x0

    move-object/from16 v20, v9

    move/from16 v22, v33

    move/from16 v23, v34

    move/from16 v24, v31

    move/from16 v25, v32

    invoke-direct/range {v20 .. v30}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FLandroid/graphics/Typeface;IZ)V

    new-instance v8, Lcom/samsung/android/glview/GLButton;

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const v20, 0x7f080840

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v7, v8

    move-object v2, v8

    move-object/from16 v8, v16

    move-object/from16 v38, v9

    move v9, v1

    move v3, v10

    move v10, v14

    move v11, v6

    move/from16 v12, v17

    move/from16 v39, v13

    move/from16 v13, v20

    move/from16 v40, v14

    move/from16 v14, v21

    move/from16 v41, v15

    move/from16 v15, v22

    move/from16 v16, v23

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setNinePatchBackground(I)Z

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    const/4 v15, 0x4

    invoke-virtual {v2, v15}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v7, v38

    invoke-virtual {v2, v7}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    add-float v7, v33, v31

    add-float v7, v7, v19

    move/from16 v14, v39

    invoke-virtual {v2, v7, v14}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$EOa8hS6-y-5DJIbfucZuAxT7BZw;

    invoke-direct {v7, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$EOa8hS6-y-5DJIbfucZuAxT7BZw;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v2, v7}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v13, v40

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v1, v13}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v2

    sub-float v2, v2, v18

    move/from16 v12, v41

    invoke-virtual {v1, v7, v12, v2}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v12

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/More;->mTopBaseLine:F

    add-float v7, v7, v18

    const/4 v11, 0x3

    invoke-virtual {v1, v11, v2, v7}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_3

    :cond_3
    move v3, v10

    move/from16 v43, v15

    move v15, v11

    move v11, v12

    move/from16 v12, v43

    move/from16 v44, v14

    move v14, v13

    move/from16 v13, v44

    :goto_3
    if-nez v4, :cond_4

    if-eqz v5, :cond_6

    :cond_4
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v6

    invoke-static/range {v37 .. v37}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    if-eqz v5, :cond_5

    const v2, 0x7f1101b3

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    const v2, 0x7f11010e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object/from16 v26, v2

    new-instance v2, Lcom/samsung/android/glview/GLText;

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v21

    invoke-static/range {v36 .. v36}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v27

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v28

    invoke-static/range {v35 .. v35}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v29

    const/16 v30, 0x0

    move-object/from16 v20, v2

    move/from16 v22, v33

    move/from16 v23, v34

    move/from16 v24, v31

    move/from16 v25, v32

    invoke-direct/range {v20 .. v30}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FLandroid/graphics/Typeface;IZ)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLText;->setFadingEdge(Z)V

    new-instance v4, Lcom/samsung/android/glview/GLButton;

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const v5, 0x7f080840

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v4

    move v9, v1

    move v10, v13

    move v11, v6

    move v6, v12

    move/from16 v12, v17

    move/from16 v42, v13

    move v13, v5

    move v5, v14

    move/from16 v14, v16

    move/from16 v15, v20

    move/from16 v16, v21

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V

    iput-object v4, v0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4, v3}, Lcom/samsung/android/glview/GLButton;->setNinePatchBackground(I)Z

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    add-float v33, v33, v31

    add-float v3, v33, v19

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$fy8V-FTCkuBec4oW_PzYcsA4Tv8;

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$fy8V-FTCkuBec4oW_PzYcsA4Tv8;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v7, v42

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1, v7}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getPreviewTop(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)I

    move-result v2

    int-to-float v2, v2

    add-float v2, v2, v18

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {v1, v3, v6, v2}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v6

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v3

    sub-float v3, v3, v18

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_6
    return-void
.end method

.method private notifyOrientationChanged(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOrientationChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoreMode"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroupPortraitWidth:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroupPortraitHeight:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroupLandscapeWidth:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroupLandscapeHeight:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsEditMode:Z

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->onOrientationChanged(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsEditMode:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->startOverlayViewBlinkAnimation()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->onOrientationChanged()V

    :cond_2
    return-void
.end method

.method private showDragHelpAnimation()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsDragHelpViewStart:Z

    if-eqz v0, :cond_0

    const-string p0, "MoreMode"

    const-string v0, "Drag help animation is started already."

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/view/animation/SineOut80;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineOut80;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$UtayvuW56yTZx1YUWE89WQjWybc;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$UtayvuW56yTZx1YUWE89WQjWybc;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/More$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/More$6;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/view/animation/SineOut80;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineOut80;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$J2hha6vlSfeAHx7_1lcPGYwrZHE;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$J2hha6vlSfeAHx7_1lcPGYwrZHE;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpViewShowAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpViewShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpViewShowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/More$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/More$7;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpViewShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showEditGroup()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const v1, 0x7f0b001b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$15GDdMrxnK5CzSx4SG-wqnhkbGE;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$15GDdMrxnK5CzSx4SG-wqnhkbGE;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/More$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/More$8;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$ormGp-hh9OtfOhs5ymFeF5N5rzg;

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$ormGp-hh9OtfOhs5ymFeF5N5rzg;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showInformation()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [F

    const v2, 0x7f0701d1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const v2, 0x7f0b001d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v5, v2

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/view/animation/SineOut80;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineOut80;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$wEcz0_4ol_YRUmftmOJF2A7Ng-Q;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$wEcz0_4ol_YRUmftmOJF2A7Ng-Q;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const v5, 0x7f0b001c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/view/animation/SineOut80;

    invoke-direct {v5}, Lcom/samsung/android/view/animation/SineOut80;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$U5_AfN012u48JGdM9PPHCpY-1Wk;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$U5_AfN012u48JGdM9PPHCpY-1Wk;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v6, Lcom/sec/android/app/camera/shootingmode/More$9;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/shootingmode/More$9;-><init>(Lcom/sec/android/app/camera/shootingmode/More;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p0, v0, [Landroid/animation/Animator;

    aput-object v1, p0, v3

    aput-object v2, p0, v4

    invoke-virtual {v5, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startOverlayViewBlinkAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsEditMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->startOverLayViewAnimation()V

    return-void
.end method


# virtual methods
.method public isShootingAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$hideDragHelpAnimation$0$More(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setAlpha(F)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$hideDragHelpAnimation$1$More(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mGridHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$hideInformation$2$More(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    return-void
.end method

.method public synthetic lambda$hideInformation$3$More(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$makeBackButton$4$More(Lcom/samsung/android/glview/GLView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->changeNormalMode()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->restoreList()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->restoreList()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->startOverlayViewBlinkAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->checkGridListIsEmpty()V

    const-string p0, "1001"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    const-string p0, "102"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$makeDragHelpText$5$More(FFFFI)V
    .locals 0

    if-nez p5, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mGridHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-eq p5, p1, :cond_1

    const/4 p1, 0x3

    if-ne p5, p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mGridHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$makeDragViewGroup$6$More(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->cancelDragHelpViewAnimator()V

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$makeEditButton$7$More(Lcom/samsung/android/glview/GLView;)Z
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isPreviewAnimationRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "pref_help_second_page"

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->makeDragViewGroup()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->showDragHelpAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->changeEditMode()V

    const-string p0, "1019"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    const-string p0, "101"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public synthetic lambda$makeInfoButton$8$More(Lcom/samsung/android/glview/GLText;FFFFI)V
    .locals 0

    if-eqz p6, :cond_0

    const/4 p5, 0x4

    invoke-virtual {p1, p5}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, p2, p2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    add-float/2addr p3, p4

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FF)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, p5, p2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->resetTranslate()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$makeInfoButton$9$More(Lcom/samsung/android/glview/GLView;)Z
    .locals 0

    const-string p1, "1020"

    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->makeInfoViewGroup()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->showInformation()V

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$makeInfoViewGroup$10$More(Lcom/samsung/android/glview/GLView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->hideInformation()V

    const-string p0, "102"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$makeInformationList$11$More(Lcom/samsung/android/glview/GLGridList;FI)V
    .locals 1

    if-nez p3, :cond_0

    const p3, 0x7f0701d0

    invoke-static {p3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result p3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLGridList;->setFlexibleHeight(Z)V

    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/shootingmode/More;->getColumnSize(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLGridList;->setColumnSize(I)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->getNavigationBarHeight(Landroid/content/Context;)F

    move-result p0

    sub-float/2addr v0, p0

    invoke-virtual {p1, p3, v0}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result p2

    int-to-float p2, p2

    const p3, 0x7f0701c2

    invoke-static {p3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result p3

    sub-float/2addr p2, p3

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/android/app/camera/util/Util;->getNavigationBarHeight(Landroid/content/Context;)F

    move-result p3

    sub-float/2addr p2, p3

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/samsung/android/glview/GLGridList;->setFlexibleHeight(Z)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/More;->getColumnSize(F)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLGridList;->setColumnSize(I)V

    const p0, 0x7f0701b9

    invoke-static {p0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    return-void
.end method

.method public synthetic lambda$makeMoreShootingViewGroup$13$More(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$6Z-iU6NlBu20m--BG43Lq-B51hA;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$More$6Z-iU6NlBu20m--BG43Lq-B51hA;-><init>(Lcom/sec/android/app/camera/shootingmode/More;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$makeSaveButton$14$More(Lcom/samsung/android/glview/GLView;)Z
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->getModeString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->getModeString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set order normal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", more: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MoreMode"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->setOrder(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->setMoreOrder(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->resetShootingModeOrder()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->resetShootingModeOrder()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->changeNormalMode()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->startOverlayViewBlinkAnimation()V

    const-string p0, "1023"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$makeTopButton$15$More(Lcom/samsung/android/glview/GLView;)Z
    .locals 0

    const-string p1, "1015"

    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->ACTION_BAR_BIXBY_VISION:Lcom/sec/android/app/camera/interfaces/CommandId;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$makeTopButton$16$More(Lcom/samsung/android/glview/GLView;)Z
    .locals 0

    const-string p1, "1016"

    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->ACTION_BAR_AR_EMOJI_EXTERNAL_PACKAGE:Lcom/sec/android/app/camera/interfaces/CommandId;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$null$12$More(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/More;->notifyOrientationChanged(I)V

    return-void
.end method

.method public synthetic lambda$showDragHelpAnimation$17$More(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeShortcutController()Lcom/sec/android/app/camera/interfaces/ShootingModeShortcutController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeShortcutController;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$showDragHelpAnimation$18$More(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setAlpha(F)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpView:Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/AnimatedVectorDrawableView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$showEditGroup$19$More(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetScale()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, p1, p1, v1, v2}, Lcom/samsung/android/glview/GLButton;->scale(FFII)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    return-void
.end method

.method public synthetic lambda$showInformation$20$More(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    return-void
.end method

.method public synthetic lambda$showInformation$21$More(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    return-void
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 1

    const-string p1, "MoreMode"

    const-string v0, "onActivate"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, -0x181

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsEditMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, -0x101

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->checkGridListIsEmpty()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->startOverlayViewBlinkAnimation()V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsEditMode:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->changeNormalMode()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->showEditGroup()V

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeShortcutController()Lcom/sec/android/app/camera/interfaces/ShootingModeShortcutController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeShortcutController;->setShootingModeShortcutScrollListener(Lcom/sec/android/app/camera/interfaces/ShootingModeShortcutController$ListScrollListener;)V

    const-string p0, "1018"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->cancelDragHelpViewAnimator()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

    const-string p1, "MoreMode"

    const-string p4, "onCreateView"

    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p2, 0x80

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->initMoreShootingViewGroupSize()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->makeMoreShootingViewGroup()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->makeTopButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->makeDragHelpText()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->makeBackButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->makeSaveButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->makeEditButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->makeGridList()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->makeShortcutList()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->isInformationSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->makeInfoButton()V

    :cond_0
    return-void
.end method

.method public onDrag(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 8

    iget-object v0, p1, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    instance-of v0, v0, Lcom/sec/android/app/camera/widget/gl/Item;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->getBottom()F

    move-result v0

    cmpl-float v0, v0, p3

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->onDrag(Lcom/samsung/android/glview/GLView;FFFF)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->onDrag(Lcom/samsung/android/glview/GLView;FFFF)V

    :goto_0
    iget-object p1, p1, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    check-cast p1, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutItem;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->getCurrentTop()F

    move-result p0

    cmpl-float p0, p3, p0

    if-lez p0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutItem;->isGridMode()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutItem;->changeNormalMode()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutItem;->isGridMode()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutItem;->changeGridMode()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onDragEnd(Lcom/samsung/android/glview/GLView;FF)V
    .locals 3

    iget-object v0, p1, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    instance-of v0, v0, Lcom/sec/android/app/camera/widget/gl/Item;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->setEmptyBox(Lcom/sec/android/app/camera/widget/gl/MoreShootingModeDragDropBox;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->setEmptyBox(Lcom/sec/android/app/camera/widget/gl/MoreShootingModeDragDropBox;)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutItem;->isGridMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->removeDraggingItem(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->removeDraggingItem(Lcom/samsung/android/glview/GLView;)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->refreshEditMark()V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsEditMode:Z

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutItem;->setEditMode(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->checkGridListIsEmpty()V

    return-void
.end method

.method public onDragStart(Lcom/samsung/android/glview/GLView;FF)V
    .locals 1

    iget-object v0, p1, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    instance-of v0, v0, Lcom/sec/android/app/camera/widget/gl/Item;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsEditMode:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->changeEditMode()V

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutItem;->isGridMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->onDragStart(Lcom/samsung/android/glview/GLView;FF)V

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->makeEmptyBox(Lcom/samsung/android/glview/GLView;)Lcom/sec/android/app/camera/widget/gl/MoreShootingModeDragDropBox;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->onDragStart(Lcom/samsung/android/glview/GLView;FF)V

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->makeEmptyBox(Lcom/samsung/android/glview/GLView;)Lcom/sec/android/app/camera/widget/gl/MoreShootingModeDragDropBox;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->setEmptyBox(Lcom/sec/android/app/camera/widget/gl/MoreShootingModeDragDropBox;)V

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->setEmptyBox(Lcom/sec/android/app/camera/widget/gl/MoreShootingModeDragDropBox;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    return-void
.end method

.method public onInactivate()V
    .locals 2

    const-string v0, "MoreMode"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeShortcutController()Lcom/sec/android/app/camera/interfaces/ShootingModeShortcutController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeShortcutController;->setShootingModeShortcutScrollListener(Lcom/sec/android/app/camera/interfaces/ShootingModeShortcutController$ListScrollListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mRepeatDragHelpAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mRepeatDragHelpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mDragHelpFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsEditMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->restoreList()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->restoreList()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->changeNormalMode()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->cancelDragHelpViewAnimator()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->hideInformation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mBixbyButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mArButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p0

    const v0, 0x7f0b0011

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsEditMode:Z

    const-string p2, "102"

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->changeNormalMode()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeGridList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeGridList;->restoreList()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mMoreShootingModeShortcutList:Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/MoreShootingModeShortcutList;->restoreList()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->startOverlayViewBlinkAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->checkGridListIsEmpty()V

    invoke-static {p2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mInfoViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->hideInformation()V

    invoke-static {p2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    return v0

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/More;->mIsDragHelpViewStart:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->cancelDragHelpViewAnimator()V

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onPictureSaved()V
    .locals 0

    return-void
.end method

.method public onRecordKeyCanceled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onRecordKeyPressed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onRecordKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onScrollEnd()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/More;->showEditGroup()V

    :cond_0
    return-void
.end method

.method public onScrollStart()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mEditButton:Lcom/samsung/android/glview/GLButton;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onShutterKeyCanceled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterKeyLongPressed(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterKeyPressed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterKeyPullDown(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 0

    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 0

    const-string p1, "MoreMode"

    const-string p2, "onStartPreviewPrepared"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/More;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p0

    const p1, 0x3f333333    # 0.7f

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->showBlackOverlay(FLcom/samsung/android/glview/GLViewGroup;)V

    return-void
.end method
