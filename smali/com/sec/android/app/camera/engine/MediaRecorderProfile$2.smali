.class final Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;
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
    .locals 8

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X4320:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x4c4b400

    const v3, 0x5f5e100

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v1, v3, v2, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X4320_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v3, v2, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x5f5e100

    const v3, 0x42c1d80

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v3, 0x5f5e100

    const v6, 0x42c1d80

    invoke-direct {v1, v3, v6, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2560X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v3, 0x55d4a80

    const v6, 0x3938700

    invoke-direct {v1, v3, v6, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2400X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v6, 0x7a1200

    const v7, 0xd59f80

    invoke-direct {v1, v7, v6, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2288X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v7, 0x16e3600

    const v6, 0xc65d40

    invoke-direct {v1, v7, v6, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2224X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v7, v6, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v7, 0x2faf080

    const v6, 0x2625a00

    invoke-direct {v1, v7, v6, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1440X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    invoke-direct {v1, v7, v6, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x3938700

    const v3, 0x3938700

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_960X960:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0xb71b00

    const v3, 0x6acfc0

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1072X1072:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v2, 0x5b8d80

    const v3, 0xa7d8c0

    invoke-direct {v1, v3, v2, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1440X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v3, 0xa1be40

    invoke-direct {v1, v3, v2, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1280X720:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    const v3, 0x9477d0

    invoke-direct {v1, v3, v2, v5, v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;-><init>(IIILcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;->put(ILjava/lang/Object;)V

    return-void
.end method
