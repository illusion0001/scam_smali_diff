.class Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$EvCompensationValueCallback;
.implements Lcom/samsung/android/camera/core2/MakerInterface$ExposureTimeCallback;
.implements Lcom/samsung/android/camera/core2/MakerInterface$ColorTemperatureCallback;
.implements Lcom/samsung/android/camera/core2/MakerInterface$SensorSensitivityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorInfoCallbackManager"
.end annotation


# instance fields
.field private mSensorInfoEventListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onColorTemperatureChanged$0$CallbackManagerImpl$SensorInfoCallbackManager(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;->mSensorInfoEventListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;->onColorTemperatureChanged(JI)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onEvCompensationValueChanged$1$CallbackManagerImpl$SensorInfoCallbackManager(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;->mSensorInfoEventListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;->onExposureValueChanged(JI)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onExposureTimeChanged$2$CallbackManagerImpl$SensorInfoCallbackManager(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;->mSensorInfoEventListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;->onExposureTimeChanged(JJ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onSensorSensitivityChanged$3$CallbackManagerImpl$SensorInfoCallbackManager(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;->mSensorInfoEventListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;->onIsoChanged(JI)V

    :cond_0
    return-void
.end method

.method public onColorTemperatureChanged(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$HLSsYrCMEiUPd5vbjPrQ0HrCd-k;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$HLSsYrCMEiUPd5vbjPrQ0HrCd-k;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;Ljava/lang/Long;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEvCompensationValueChanged(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$6M3GtPs-lzXZEhlJlyu_SzEzbjM;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$6M3GtPs-lzXZEhlJlyu_SzEzbjM;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;Ljava/lang/Long;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onExposureTimeChanged(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$RPDpgntCcAodnoRWr5HnDFvaEck;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$RPDpgntCcAodnoRWr5HnDFvaEck;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSensorSensitivityChanged(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$P04U9klnFYeVhho_mdDP9OEob2w;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$SensorInfoCallbackManager$P04U9klnFYeVhho_mdDP9OEob2w;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;Ljava/lang/Long;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setSensorInfoEventListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;->mSensorInfoEventListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;

    return-void
.end method
