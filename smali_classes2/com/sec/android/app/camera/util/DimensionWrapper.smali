.class public Lcom/sec/android/app/camera/util/DimensionWrapper;
.super Ljava/lang/Object;
.source "DimensionWrapper.java"


# static fields
.field private static final ASPECT_RATIO_TOLERANCE:F = 0.016f

.field private static final DEVICE_RATIO_16x9:I = 0x0

.field private static final DEVICE_RATIO_18DOT5x9:I = 0x1

.field private static final DEVICE_RATIO_19x9:I = 0x2

.field private static final DEVICE_RATIO_20x9:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DimensionWrapper"

.field private static final mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v3, 0x7f07011e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v3, 0x7f0705b2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9_8K:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v3, 0x7f070260

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v4, 0x7f070540

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_CIF:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v3, 0x7f07011d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v3, 0x7f0705b1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9_8K:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v3, 0x7f07025f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v4, 0x7f07053f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_CIF:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v3, 0x7f07011c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v3, 0x7f0705b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9_8K:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v3, 0x7f07025e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v4, 0x7f07053e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_CIF:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v3, 0x7f07011b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v3, 0x7f0705af

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9_8K:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v3, 0x7f07025d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v3, 0x7f07053d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_CIF:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const v2, 0x7f07025d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBottomBaseLinePositionY()F
    .locals 2

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getDeviceRatioType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f070060

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    :goto_0
    sub-float/2addr v0, v1

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f070063

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f070062

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f070061

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    goto :goto_0
.end method

.method private static getDeviceRatioType()I
    .locals 2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3c83126f    # 0.016f

    add-float/2addr v0, v1

    const v1, 0x400e38e4

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const v1, 0x40071c72

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const v1, 0x40038e39

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static getPreviewTop(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)I
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/util/DimensionWrapper;->mPreviewTopCoordinateResourceIdMap:Ljava/util/Map;

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getDeviceRatioType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getShootingModeShortcutPosY()F
    .locals 3

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getDeviceRatioType()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0704ac

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x7f07004a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    :goto_0
    sub-float/2addr v0, v1

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x7f07004d

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x7f07004c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x7f07004b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    goto :goto_0
.end method

.method public static getTopBaseLinePositionY()F
    .locals 2

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getDeviceRatioType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const v0, 0x7f070599

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    return v0

    :cond_0
    const v0, 0x7f07059c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    return v0

    :cond_1
    const v0, 0x7f07059b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    return v0

    :cond_2
    const v0, 0x7f07059a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    return v0
.end method
