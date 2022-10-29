.class final Lcom/sec/android/app/camera/util/QrCodeUtil$1;
.super Ljava/util/HashMap;
.source "QrCodeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/QrCodeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/google/zxing/BarcodeFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const-string v1, "QR"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/QrCodeUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    const-string v1, "EAN8"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/QrCodeUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    const-string v1, "EAN13"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/QrCodeUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    const-string v1, "UPCA"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/QrCodeUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    const-string v1, "UPCE"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/QrCodeUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    const-string v1, "CODE39"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/QrCodeUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    const-string v1, "CODE128"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/QrCodeUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    const-string v1, "DM"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/QrCodeUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
