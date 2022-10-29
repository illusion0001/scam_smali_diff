.class Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;
.super Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfComponent;
.source "AeAfManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/AeAfManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DivideAeAfManager"
.end annotation


# instance fields
.field private final mFocusGroupSize:Landroid/util/Size;

.field private final mFocusSize:Landroid/util/Size;

.field private mIsDivideAeMoving:Z

.field private mIsDivideAfMoving:Z

.field private mIsDivided:Z

.field private final mLastDivideAePoint:Landroid/graphics/Point;

.field private final mLastDivideAfPoint:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfComponent;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    const v0, 0x7f07001c

    invoke-static {p1, v0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;II)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusSize:Landroid/util/Size;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    const v0, 0x7f07001d

    invoke-static {p1, v0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;II)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusGroupSize:Landroid/util/Size;

    new-instance p1, Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mLastDivideAePoint:Landroid/graphics/Point;

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivided:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivideAfMoving:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivideAeMoving:Z

    return-void
.end method

.method private checkDivideAeBoundary(Landroid/graphics/Point;)Z
    .locals 3

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mLastDivideAePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mLastDivideAePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mLastDivideAePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mLastDivideAePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    if-gt p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkDivideAfBoundary(Landroid/graphics/Point;)Z
    .locals 3

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    if-gt p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusGroupSize:Landroid/util/Size;

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    iget-boolean p2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivideAeMoving:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->updateDivideAePosition(Landroid/graphics/Point;)V

    goto/16 :goto_2

    :cond_1
    iget-boolean p2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivideAfMoving:Z

    if-eqz p2, :cond_b

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->updateDivideAfPosition(Landroid/graphics/Point;)V

    goto/16 :goto_2

    :cond_2
    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivideAeMoving:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->checkDivideAfBoundary(Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$3000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->startDivideAeAfLock(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->startDivideAeLock(Landroid/graphics/Point;)V

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivideAeMoving:Z

    goto :goto_2

    :cond_4
    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivideAfMoving:Z

    if-eqz p1, :cond_b

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->checkDivideAeBoundary(Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$3000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->startDivideAeAfLock(Landroid/graphics/Point;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->startDivideAfLock(Landroid/graphics/Point;)V

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivideAfMoving:Z

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->DIVIDE_AE_AF_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, v1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->DIVIDE_AE_AF_LOCK_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne p1, v1, :cond_b

    :cond_7
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->checkDivideAeBoundary(Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivided:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusGroupSize:Landroid/util/Size;

    invoke-static {p1, p2, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->updateDivideAfPosition(Landroid/graphics/Point;)V

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivided:Z

    :cond_8
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivideAeMoving:Z

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->DIVIDE_AE_AF_MOVING:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_2

    :cond_9
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->checkDivideAfBoundary(Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_a

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivideAfMoving:Z

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->DIVIDE_AE_AF_MOVING:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_2

    :cond_a
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$3000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    :cond_b
    :goto_2
    return-void
.end method

.method private startDivideAeAfLock(Landroid/graphics/Point;)V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "DivideAeAfManager.startDivideAeAfLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusGroupSize:Landroid/util/Size;

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1700(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/AeAfController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/engine/AeAfController;->startTouchAfWithAe(Landroid/graphics/Point;Landroid/util/Size;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->DIVIDE_AE_AF_LOCK_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->updateDivideAePosition(Landroid/graphics/Point;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->updateDivideAfPosition(Landroid/graphics/Point;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivideAfMoving:Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivideAeMoving:Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivided:Z

    :cond_0
    return-void
.end method

.method private startDivideAeLock(Landroid/graphics/Point;)V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "DivideAeAfManager.startDivideAeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusGroupSize:Landroid/util/Size;

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->updateDivideAePosition(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1700(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/AeAfController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfController;->unlockAeAwb()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1700(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/AeAfController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/engine/AeAfController;->startTouchAe(Landroid/graphics/Point;Landroid/util/Size;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->DIVIDE_AE_AF_LOCK_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    :cond_0
    return-void
.end method

.method private startDivideAfLock(Landroid/graphics/Point;)V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "DivideAeAfManager.startDivideAfLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusGroupSize:Landroid/util/Size;

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->updateDivideAfPosition(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1700(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/AeAfController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/engine/AeAfController;->startTouchAf(Landroid/graphics/Point;Landroid/util/Size;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->DIVIDE_AE_AF_LOCK_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    :cond_0
    return-void
.end method

.method private updateDivideAePosition(Landroid/graphics/Point;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mLastDivideAePoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$DivideAeAfManager$LRBpOgJEl27ZmApPHF_XcRgwzHc;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$DivideAeAfManager$LRBpOgJEl27ZmApPHF_XcRgwzHc;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDivideAfPosition(Landroid/graphics/Point;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$DivideAeAfManager$Y0AcnZeVywqgyun7i805ru1hm3s;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$DivideAeAfManager$Y0AcnZeVywqgyun7i805ru1hm3s;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isAeAfLockSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2400(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1800(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isDivideAeAfSupported(I)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$updateDivideAePosition$0$AeAfManagerImpl$DivideAeAfManager(Landroid/graphics/Point;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;

    move-result-object p0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;->onDivideAePosChanged(II)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateDivideAfPosition$1$AeAfManagerImpl$DivideAeAfManager(Landroid/graphics/Point;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;

    move-result-object p0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;->onDivideAfPosChanged(II)V

    :cond_0
    return-void
.end method

.method onLongPressed(Landroid/graphics/Point;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivideAfMoving:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivideAeMoving:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2600(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchEv()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->startDivideAeAfLock(Landroid/graphics/Point;)V

    :cond_5
    :goto_0
    return v1
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2500(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchPreviewArea(II)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivideAeMoving:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mLastDivideAePoint:Landroid/graphics/Point;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mIsDivideAfMoving:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)V

    return v1
.end method
