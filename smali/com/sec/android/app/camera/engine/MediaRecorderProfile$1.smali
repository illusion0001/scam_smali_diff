.class final Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;
.super Landroid/util/SparseArray;
.source "MediaRecorderProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/MediaRecorderProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 10

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X4320:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x4c4b400

    const v3, 0x5f5e100

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v3, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X4320_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v3, v2, v3, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x5f5e100

    const v3, 0x42c1d80

    const v5, 0x68e7780

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v3, 0x5f5e100

    const v5, 0x42c1d80

    const v6, 0x68e7780

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2560X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v3, 0x55d4a80

    const v5, 0x3938700

    const v6, 0x5f5e100

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2400X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v7, 0x1312d00

    const v8, 0xb71b00

    invoke-direct {v1, v7, v8, v6, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2288X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v7, 0x16e3600

    const v8, 0xc65d40

    const v6, 0x206cc80

    invoke-direct {v1, v7, v8, v6, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2224X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v7, 0x121eac0

    const v9, 0x19bfcc0

    invoke-direct {v1, v7, v8, v9, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v7, 0x15ef3c0

    const v9, 0xd59f80

    invoke-direct {v1, v7, v9, v6, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v6, 0x2faf080

    const v5, 0x2625a00

    const v7, 0x3938700

    invoke-direct {v1, v6, v5, v7, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1440X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v7, v6, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x3938700

    const v5, 0x3938700

    const v6, 0x42c1d80

    invoke-direct {v1, v2, v5, v6, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1440X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x7a1200

    const v6, 0xc65d40

    invoke-direct {v1, v6, v2, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1072X1072:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v6, v2, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1280X720:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v5, 0x55d4a80

    const v2, 0x6acfc0

    const v3, 0x18cba80

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_960X960:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v8, v2, v8, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_640X480:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x2ef770

    const v3, 0x1e8480

    const v5, 0x44aa20

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_320X240:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0xbb418

    const v3, 0x7a120

    const v5, 0x118c30

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_176X144:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x5dc00

    const v3, 0x493e0

    const v5, 0x927c0

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;->put(ILjava/lang/Object;)V

    return-void
.end method
