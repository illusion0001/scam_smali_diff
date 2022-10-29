.class abstract Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfComponent;
.super Ljava/lang/Object;
.source "AeAfManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/AeAfManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AeAfComponent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfComponent;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfComponent;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    return-void
.end method


# virtual methods
.method abstract isAvailable()Z
.end method

.method abstract onLongPressed(Landroid/graphics/Point;)Z
.end method

.method abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method
