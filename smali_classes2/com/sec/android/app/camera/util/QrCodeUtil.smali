.class public Lcom/sec/android/app/camera/util/QrCodeUtil;
.super Ljava/lang/Object;
.source "QrCodeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/util/QrCodeUtil$PopUpTextUpdater;,
        Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QrCodeUtil"

.field private static final mBarcodeFormatMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final mQrPopTextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;",
            "Lcom/sec/android/app/camera/util/QrCodeUtil$PopUpTextUpdater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/QrCodeUtil$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil;->mBarcodeFormatMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/camera/util/QrCodeUtil$2;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/QrCodeUtil$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil;->mQrPopTextMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateIsbnPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateProductPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateMapPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateWifiPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateCalendarPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateAddressBookPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateEmailPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateSmsPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateTextPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updatePhoneNumberPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updatePlayStorePopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateUrlPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateFacebookPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateInstagramPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateEsimSimCardManagerPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateEsimGalaxyWearablePopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateSamsungCmcPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateSamsungHealthPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateSamsungIotPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/QrCodeUtil;->updateSamsungPayPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    return-void
.end method

.method private static getBodyText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static getCalendarBodyText(Landroid/content/Context;Lcom/google/zxing/client/result/CalendarParsedResult;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Lcom/google/zxing/client/result/CalendarParsedResult;->getStart()Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "EEE, d MMM"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "h:mm a"

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/zxing/client/result/CalendarParsedResult;->isStartAllDay()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const v0, 0x7f11037b

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/CalendarParsedResult;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v2, 0x7f11037a

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/CalendarParsedResult;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v5

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getContactsBodyText(Landroid/content/Context;Lcom/google/zxing/client/result/AddressBookParsedResult;Z)Ljava/lang/String;
    .locals 9

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f11037d

    const/4 v6, 0x1

    if-nez v4, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x2

    const v8, 0x7f11037c

    if-nez v4, :cond_4

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v1

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->getTtsOneDigitNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    aput-object p1, v2, v6

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    new-array p1, v7, [Ljava/lang/Object;

    aput-object v0, p1, v1

    aput-object v3, p1, v6

    invoke-virtual {p0, v8, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    new-array p1, v6, [Ljava/lang/Object;

    aput-object v0, p1, v1

    invoke-virtual {p0, v5, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    new-array v0, v6, [Ljava/lang/Object;

    if-eqz p2, :cond_7

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->getTtsOneDigitNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_7
    aput-object p1, v0, v1

    invoke-virtual {p0, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    new-array p1, v6, [Ljava/lang/Object;

    aput-object v3, p1, v1

    invoke-virtual {p0, v5, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_9
    new-array p1, v6, [Ljava/lang/Object;

    aput-object v2, p1, v1

    invoke-virtual {p0, v5, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static getMultiLineStringByMaxRow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const-string v0, "\\r?\\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p1, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParsedQrCode(Ljava/lang/String;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "QrCodeUtil"

    const-string v1, "Raw text is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/sec/android/app/camera/util/QrCodeUtil;->mBarcodeFormatMap:Ljava/util/Map;

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/BarcodeFormat;

    new-instance v2, Lcom/google/zxing/Result;

    invoke-direct {v2, p0, v0, v0, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    invoke-static {v2}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object p0

    return-object p0
.end method

.method public static getQrPopupText(Landroid/content/Context;Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;Lcom/google/zxing/client/result/ParsedResult;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f110398

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f11037f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    sget-object v1, Lcom/sec/android/app/camera/util/QrCodeUtil;->mQrPopTextMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/util/QrCodeUtil$PopUpTextUpdater;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, v0}, Lcom/sec/android/app/camera/util/QrCodeUtil$PopUpTextUpdater;->update(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getQrViewType(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QR parsed result type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrCodeUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/util/QrCodeUtil$3;->$SwitchMap$com$google$zxing$client$result$ParsedResultType:[I

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->NONE:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/LinkAction;->isSpayDanaUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.samsung.android.rajaampat"

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/PackageUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_PAY:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->TEXT:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->ISBN:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->PRODUCT:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_IOT:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->WIFI:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->MAP:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SMS:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->CALENDAR:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->CONTACTS:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :pswitch_9
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getUriQrViewType(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    move-result-object p0

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->EMAIL:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->PHONE_NUMBER:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getUriQrViewType(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;
    .locals 1

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/LinkAction;->isSpayDanaUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.rajaampat"

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/PackageUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_PAY:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/LinkAction;->isPlayStoreUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->PLAY_STORE:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/LinkAction;->isSamsungHealthUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_HEALTH:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/camera/util/LinkAction;->isSamsungCmcUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->SAMSUNG_CMC:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :cond_3
    invoke-static {p1}, Lcom/sec/android/app/camera/util/LinkAction;->isEsimQrPrefix(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ESIM_MANAGER:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->ESIM_SIM_CARD_MANAGER:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->ESIM_GALAXY_WEARABLE:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :cond_5
    invoke-static {p1}, Lcom/sec/android/app/camera/util/LinkAction;->isInstagramUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->INSTAGRAM:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :cond_6
    invoke-static {p1}, Lcom/sec/android/app/camera/util/LinkAction;->isFacebookUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->FACEBOOK:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0

    :cond_7
    sget-object p0, Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;->URL:Lcom/sec/android/app/camera/util/QrCodeUtil$QrViewType;

    return-object p0
.end method

.method private static updateAddressBookPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 2

    check-cast p1, Lcom/google/zxing/client/result/AddressBookParsedResult;

    const v0, 0x7f110396

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p0, p1, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getContactsBodyText(Landroid/content/Context;Lcom/google/zxing/client/result/AddressBookParsedResult;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    invoke-static {p0, p1, v1}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getContactsBodyText(Landroid/content/Context;Lcom/google/zxing/client/result/AddressBookParsedResult;Z)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, p2, p1

    return-void
.end method

.method private static updateCalendarPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 2

    check-cast p1, Lcom/google/zxing/client/result/CalendarParsedResult;

    const v0, 0x7f110395

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getCalendarBodyText(Landroid/content/Context;Lcom/google/zxing/client/result/CalendarParsedResult;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    return-void
.end method

.method private static updateEmailPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 3

    check-cast p1, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    const v0, 0x7f110397

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getTos()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const p1, 0x7f11037e

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    return-void
.end method

.method private static updateEsimGalaxyWearablePopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f11039a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const p1, 0x7f110381

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    return-void
.end method

.method private static updateEsimSimCardManagerPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f1103a4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const p1, 0x7f11038c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    return-void
.end method

.method private static updateFacebookPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f110399

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const p1, 0x7f110380

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    return-void
.end method

.method private static updateInstagramPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f11039b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const p1, 0x7f110382

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    return-void
.end method

.method private static updateIsbnPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 2

    check-cast p1, Lcom/google/zxing/client/result/ISBNParsedResult;

    const v0, 0x7f11039f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f110386

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ISBNParsedResult;->getISBN()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    return-void
.end method

.method private static updateMapPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f11039d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const p1, 0x7f110384

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    return-void
.end method

.method private static updatePhoneNumberPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 4

    check-cast p1, Lcom/google/zxing/client/result/TelParsedResult;

    const v0, 0x7f1103a0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/TelParsedResult;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const v3, 0x7f110388

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/TelParsedResult;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->getTtsOneDigitNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, p2, p1

    return-void
.end method

.method private static updatePlayStorePopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f1103a1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const p1, 0x7f110389

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    return-void
.end method

.method private static updateProductPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 2

    check-cast p1, Lcom/google/zxing/client/result/ProductParsedResult;

    const v0, 0x7f11039f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f110386

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ProductParsedResult;->getProductID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    return-void
.end method

.method private static updateSamsungCmcPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f1103a2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const p1, 0x7f11038a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    return-void
.end method

.method private static updateSamsungHealthPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f1103a3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const p1, 0x7f11038b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    return-void
.end method

.method private static updateSamsungIotPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 4

    const p1, 0x7f11039c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/LinkAction;->isSmartThingsInChina(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f110392

    goto :goto_0

    :cond_0
    const p1, 0x7f110394

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f110383

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v2

    return-void
.end method

.method private static updateSamsungPayPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f1103a5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const p1, 0x7f11038d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, p2, p1

    return-void
.end method

.method private static updateSmsPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 4

    check-cast p1, Lcom/google/zxing/client/result/SMSParsedResult;

    const v0, 0x7f11039e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/SMSParsedResult;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const v3, 0x7f110385

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/SMSParsedResult;->getNumbers()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->getTtsOneDigitNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, p2, p1

    return-void
.end method

.method private static updateTextPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 4

    check-cast p1, Lcom/google/zxing/client/result/TextParsedResult;

    const v0, 0x7f11039f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f110386

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/TextParsedResult;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const p1, 0x7f110387

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v2

    return-void
.end method

.method private static updateUrlPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 5

    check-cast p1, Lcom/google/zxing/client/result/URIParsedResult;

    const v0, 0x7f1103a6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const v0, 0x7f11038e

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "QrCodeUtil"

    const-string v4, "MalformedURLException is occurred."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v2

    :goto_0
    return-void
.end method

.method private static updateWifiPopup(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;[Ljava/lang/String;)V
    .locals 3

    check-cast p1, Lcom/google/zxing/client/result/WifiParsedResult;

    const v0, 0x7f1103a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/WifiParsedResult;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/QrCodeUtil;->getBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const p1, 0x7f11038f

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    return-void
.end method
