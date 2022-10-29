.class Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;
.super Ljava/lang/Object;
.source "DirectorsViewManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoiProperties"
.end annotation


# instance fields
.field private mFocusRect:Landroid/graphics/Rect;

.field private mManualRoiPoint:Landroid/graphics/Point;

.field private mRoiMode:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->mRoiMode:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->mManualRoiPoint:Landroid/graphics/Point;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;)Landroid/graphics/Point;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->getManualRoiPoint()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->getRoiMode()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->setRoiMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->setManualRoiPoint(Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->setFocusRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->getFocusRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getFocusRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->mFocusRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private getManualRoiPoint()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->mManualRoiPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method private getRoiMode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->mRoiMode:I

    return p0
.end method

.method private setFocusRect(Landroid/graphics/Rect;)V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->mFocusRect:Landroid/graphics/Rect;

    return-void
.end method

.method private setManualRoiPoint(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->mManualRoiPoint:Landroid/graphics/Point;

    return-void
.end method

.method private setRoiMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->mRoiMode:I

    return-void
.end method
