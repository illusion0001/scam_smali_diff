.class public Lcom/sec/android/app/camera/util/LinkAction;
.super Ljava/lang/Object;
.source "LinkAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/util/LinkAction$LinkActor;
    }
.end annotation


# static fields
.field private static final BAIDU_PRODUCT_URL_END_PREFIX:Ljava/lang/String; = "&tn=samsung"

.field private static final BAIDU_PRODUCT_URL_PREFIX:Ljava/lang/String; = "http://graph.baidu.com/s?barcode="

.field private static final ESIM_QR_CODE_PREFIX:Ljava/lang/String; = "LPA:"

.field private static final FACEBOOK_QR_PATTERN:Ljava/lang/String; = "((http(s)?)://)?(www[.])?(facebook.com)/.*"

.field private static final GALAXY_APP_STORE:Ljava/lang/String; = "samsungapps://ProductDetail/"

.field private static final GALAXY_WEARABLE_DEEP_LINK_PREFIX:Ljava/lang/String; = "galaxywearablefromqr://launch?qrdata="

.field private static final GALAXY_WEARABLE_MANAGER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.watchmanager"

.field private static final GOOGLE_PRODUCT_URL_PREFIX:Ljava/lang/String; = "http://google.com/search?q="

.field private static final HTTP:Ljava/lang/String; = "http://"

.field private static final HTTPS:Ljava/lang/String; = "https://"

.field private static final INSTAGRAM_QR_PATTERN:Ljava/lang/String; = "((http(s)?)://)?(www[.])?(instagram.com)/.*"

.field private static final INTENT_WIFI_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_SETTINGS"

.field private static final MEMO_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.memo.Main"

.field private static final MEMO_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.memo"

.field private static final PLAY_STORE_URL_PREFIX:Ljava/lang/String; = "https://play.google.com/store/apps/details?id="

.field private static final SAMSUNGNOTE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.notes.composer.ComposerBaseActivity"

.field private static final SAMSUNGNOTE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.notes"

.field private static final SAMSUNG_CMC_PREFIX:Ljava/lang/String; = "cmc://setting?"

.field private static final SAMSUNG_HEALTH_URL_PREFIX:Ljava/lang/String; = "https://shealth.samsung.com/deepLink?sc_id="

.field private static final SIM_CARD_MANAGER_DEEP_LINK_PREFIX:Ljava/lang/String; = "esimmanagerfromqr://launch?qrdata="

.field private static final SMART_THINGS_CHINA_URL:Ljava/lang/String; = "https://qr.samsungiots.cn"

.field private static final SMART_THINGS_DEEP_LINK_PREFIX:Ljava/lang/String; = "scapp_qronboarding://"

.field private static final SMART_THINGS_GLOBAL_URL:Ljava/lang/String; = "https://qr.samsungiots.com"

.field private static final SPAY_DANA_DEEP_LINK_PREFIX:Ljava/lang/String; = "spay://qr.spay/dana?data="

.field private static final SPAY_DANA_M_URL_PREFIX:Ljava/lang/String; = "https://m.dana.id/"

.field private static final SPAY_DANA_URL_PREFIX:Ljava/lang/String; = "https://qr.dana.id/"

.field private static final SPAY_INDONESIA_STANDARD_PREFIX:Ljava/lang/String; = "000201"

.field private static final TAG:Ljava/lang/String; = "LinkAction"

.field private static final TYPE_EAP:I = 0x3

.field private static final TYPE_NOPASS:I = 0x0

.field private static final TYPE_SAE:I = 0x4

.field private static final TYPE_WAPI_PSK:I = 0x5

.field private static final TYPE_WEP:I = 0x1

.field private static final TYPE_WPA:I = 0x2

.field private static final mLinkActionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/client/result/ParsedResultType;",
            "Lcom/sec/android/app/camera/util/LinkAction$LinkActor;",
            ">;"
        }
    .end annotation
.end field

.field private static final mNumberTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/util/LinkAction$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/LinkAction$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/LinkAction;->mNumberTypeMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/camera/util/LinkAction$2;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/LinkAction$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/LinkAction;->mLinkActionMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->searchProduct(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->linkText(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->call(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->connectToWifi(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->openMap(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->sendMessage(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->connectSmartThings(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->addEvent(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->addToContactsNameCard(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->linkUri(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->sendEmail(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    return-void
.end method

.method private static addEvent(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 8

    move-object v0, p1

    check-cast v0, Lcom/google/zxing/client/result/CalendarParsedResult;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getEnd()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getStart()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->isStartAllDay()Z

    move-result v0

    const-string v7, "title"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-string v7, "beginTime"

    invoke-virtual {v1, v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-string v3, "endTime"

    invoke-virtual {v1, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    const-string v3, "description"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "eventLocation"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "allDay"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/LinkAction;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "LinkAction"

    const-string v1, "addEvent : Activity cannot found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static addToContactsNameCard(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/google/zxing/client/result/AddressBookParsedResult;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/LinkAction;->updateContactsName(Lcom/google/zxing/client/result/AddressBookParsedResult;Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/LinkAction;->updateContactNumber(Lcom/google/zxing/client/result/AddressBookParsedResult;Ljava/util/ArrayList;)V

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/LinkAction;->updateContactOrganization(Lcom/google/zxing/client/result/AddressBookParsedResult;Ljava/util/ArrayList;)V

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/LinkAction;->updateContactEmail(Lcom/google/zxing/client/result/AddressBookParsedResult;Ljava/util/ArrayList;)V

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/LinkAction;->updateContactAddress(Lcom/google/zxing/client/result/AddressBookParsedResult;Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/LinkAction;->updateContactUrl(Lcom/google/zxing/client/result/AddressBookParsedResult;Ljava/util/ArrayList;)V

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/LinkAction;->updateContactNote(Lcom/google/zxing/client/result/AddressBookParsedResult;Ljava/util/ArrayList;)V

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/LinkAction;->updateContactNickName(Lcom/google/zxing/client/result/AddressBookParsedResult;Ljava/util/ArrayList;)V

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/LinkAction;->updateContactBirthday(Lcom/google/zxing/client/result/AddressBookParsedResult;Ljava/util/ArrayList;)V

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/LinkAction;->updateContactEvent(Lcom/google/zxing/client/result/AddressBookParsedResult;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "data"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    const/high16 v0, 0x14000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/LinkAction;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "LinkAction"

    const-string v1, "addToContactsNameCard : Activity cannot found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static call(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/google/zxing/client/result/TelParsedResult;

    invoke-virtual {v0}, Lcom/google/zxing/client/result/TelParsedResult;->getTelURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/LinkAction;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "LinkAction"

    const-string v1, "call : Activity cannot found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static connectSamsungCmc(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "LinkAction"

    if-nez p1, :cond_0

    const-string p1, "connectSamsungCmc : uriString is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/LinkAction;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "CMC is not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static connectSmartThings(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 4

    check-cast p1, Lcom/google/zxing/client/result/iot/IoTParsedResult;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/iot/IoTParsedResult;->getQRString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scapp_qronboarding://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/LinkAction;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "LinkAction"

    const-string v2, "connectSmartThings : Activity cannot found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/zxing/client/result/iot/IoTParsedResult;->getIoTType()Lcom/google/zxing/client/result/iot/IoTResultType;

    move-result-object p1

    sget-object v1, Lcom/google/zxing/client/result/iot/IoTResultType;->ON_BOARDING_STANDARD_QR:Lcom/google/zxing/client/result/iot/IoTResultType;

    if-ne p1, v1, :cond_0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/LinkAction;->launchBrowser(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/camera/util/LinkAction;->isSmartThingsInChina(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "https://qr.samsungiots.cn"

    goto :goto_0

    :cond_1
    const-string p1, "https://qr.samsungiots.com"

    :goto_0
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->launchBrowser(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static connectToWifi(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/google/zxing/client/result/WifiParsedResult;

    invoke-virtual {v0}, Lcom/google/zxing/client/result/WifiParsedResult;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/zxing/client/result/WifiParsedResult;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/client/result/WifiParsedResult;->getNetworkEncryption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/zxing/client/result/WifiParsedResult;->isHidden()Z

    move-result v0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.WIFI_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/LinkAction;->getWifiAuthType(Ljava/lang/String;)I

    move-result v3

    const-string v5, "AUTH_TYPE"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "SSID"

    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PASSWORD"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "HIDDEN"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v4}, Lcom/sec/android/app/camera/util/LinkAction;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "LinkAction"

    const-string v1, "connectToWifi : Activity cannot found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static doLinkAction(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doLinkAction() type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LinkAction"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/app/camera/util/LinkAction;->mLinkActionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/util/LinkAction$LinkActor;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/camera/util/LinkAction$LinkActor;->action(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V

    goto :goto_0

    :cond_1
    const-string p0, "Not supported QR type"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static getAddressType(Ljava/lang/String;)I
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x21ecdf

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x28bf11

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "WORK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_2
    const-string v1, "HOME"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, v3

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    return v3

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    return v4
.end method

.method private static getDefaultNumberType(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/util/LinkAction;->mNumberTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p0, Lcom/sec/android/app/camera/util/LinkAction;->mNumberTypeMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static getEmailType(Ljava/lang/String;)I
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x78227b5e

    const/4 v3, 0x0

    const-string v4, "WORK"

    const-string v5, "HOME"

    const-string v6, "MOBILE"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x21ecdf

    if-eq v1, v2, :cond_2

    const v2, 0x28bf11

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v8

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v7

    :cond_4
    :goto_0
    if-eqz v0, :cond_a

    if-eq v0, v8, :cond_9

    const/4 v1, 0x4

    if-eq v0, v7, :cond_8

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v7

    :cond_5
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v8

    :cond_6
    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v1

    :cond_7
    return v3

    :cond_8
    return v1

    :cond_9
    return v8

    :cond_a
    return v7
.end method

.method private static getEventType(Lcom/google/zxing/client/result/EventStruct$Type;)I
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/util/LinkAction$3;->$SwitchMap$com$google$zxing$client$result$EventStruct$Type:[I

    invoke-virtual {p0}, Lcom/google/zxing/client/result/EventStruct$Type;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/4 v0, 0x3

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static getLowerCaseProtocolUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "://"

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method private static getNumberType(Ljava/lang/String;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/util/LinkAction;->mNumberTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/camera/util/LinkAction;->getDefaultNumberType(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/util/LinkAction;->mNumberTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getWifiAuthType(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "WAPI_PSK"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "WPA2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v6

    goto :goto_0

    :sswitch_2
    const-string v2, "WPA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v7

    goto :goto_0

    :sswitch_3
    const-string v2, "WEP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v0

    goto :goto_0

    :sswitch_4
    const-string v2, "SAE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_5
    const-string v2, "EAP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v5

    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    return v0

    :cond_2
    return v3

    :cond_3
    return v4

    :cond_4
    return v5

    :cond_5
    return v6

    :cond_6
    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x10b34 -> :sswitch_5
        0x13fb7 -> :sswitch_4
        0x14f42 -> :sswitch_3
        0x15088 -> :sswitch_2
        0x28c0aa -> :sswitch_1
        0x48b016ac -> :sswitch_0
    .end sparse-switch
.end method

.method private static handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "LinkAction"

    const-string v1, "handleLaunchActivityError"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f110379

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {p0, p1, v1}, Lcom/sec/android/app/camera/util/LinkAction;->launchPostview(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static isEsimQrPrefix(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "LPA:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isFacebookUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "((http(s)?)://)?(www[.])?(facebook.com)/.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInstagramUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "((http(s)?)://)?(www[.])?(instagram.com)/.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPlayStoreUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "https://play.google.com/store/apps/details?id="

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSamsungCmcUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "cmc://setting?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSamsungHealthUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "https://shealth.samsung.com/deepLink?sc_id="

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSmartThingsInChina(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSmartThingsInChina : countryIso="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "LinkAction"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    return v0
.end method

.method public static isSpayDanaUrl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "https://qr.dana.id/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://m.dana.id/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "000201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static launchBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "LinkAction"

    if-nez p1, :cond_0

    const-string p1, "launchBrowser : uriString is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/LinkAction;->getLowerCaseProtocolUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v3, "isGear"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "QR_TYPE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/LinkAction;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "launchBrowser : Activity cannot found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static launchGalaxyStore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "samsungapps://ProductDetail/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "type"

    const-string v1, "cover"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x14000020

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/LinkAction;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static launchGalaxyWearable(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "LinkAction"

    if-nez p1, :cond_0

    const-string p1, "launchGalaxyWearable : uriString is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "galaxywearablefromqr://launch?qrdata="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/LinkAction;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "GalaxyWearable is not installed"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.samsung.android.app.watchmanager"

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->launchGalaxyStore(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static launchPostview(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.app.memo"

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/LinkAction;->isInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "LinkAction"

    if-eqz v2, :cond_0

    new-instance p2, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.memo.Main"

    invoke-direct {p2, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.android.app.notes"

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/LinkAction;->isInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "text/plain"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p2, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.notes.composer.ComposerBaseActivity"

    invoke-direct {p2, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    const-string p2, "android.intent.extra.TEXT"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/LinkAction;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "launchPostview : Activity cannot found."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const-string v0, "launchPostview : Memo and Note package is not installed."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static launchSimCardManager(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    const-string v1, "LinkAction"

    if-nez p1, :cond_0

    const-string p1, "launchSimCardManager : uriString is null."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/LinkAction;->handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "esimmanagerfromqr://launch?qrdata="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/LinkAction;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Sim Card Manager is not installed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/LinkAction;->handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static linkText(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/LinkAction;->isSpayDanaUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.rajaampat"

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/PackageUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->sendSpayDeepLink(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/LinkAction;->launchPostview(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private static linkUri(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 1

    check-cast p1, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/LinkAction;->isSpayDanaUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.rajaampat"

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/PackageUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->sendSpayDeepLink(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/LinkAction;->isSamsungCmcUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->connectSamsungCmc(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/LinkAction;->isEsimQrPrefix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ESIM_MANAGER:Z

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->launchSimCardManager(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->launchGalaxyWearable(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->launchBrowser(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static openMap(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/google/zxing/client/result/GeoParsedResult;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/google/zxing/client/result/GeoParsedResult;->getGeoURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/LinkAction;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "LinkAction"

    const-string v1, "openMap : Activity cannot found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static searchProduct(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 2

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://graph.baidu.com/s?barcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&tn=samsung"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->launchBrowser(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://google.com/search?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->launchBrowser(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static sendEmail(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "mailto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getTos()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getCCs()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->getBCCs()[Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_0

    array-length v6, v2

    if-lez v6, :cond_0

    const-string v6, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz v5, :cond_1

    array-length v2, v5

    if-lez v2, :cond_1

    const-string v2, "android.intent.extra.CC"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    const-string v2, "android.intent.extra.BCC"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/LinkAction;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "LinkAction"

    const-string v1, "sendEmail : Activity cannot found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static sendMessage(Landroid/content/Context;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/zxing/client/result/SMSParsedResult;

    invoke-virtual {v0}, Lcom/google/zxing/client/result/SMSParsedResult;->getSMSURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "smsto"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/LinkAction;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "LinkAction"

    const-string v1, "sendMessage : Activity cannot found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static sendSpayDeepLink(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spay://qr.spay/dana?data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/LinkAction;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "LinkAction"

    const-string v1, "sendSpayDeepLink : Activity cannot found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/LinkAction;->handleLaunchActivityError(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    invoke-static {p0, v3, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v2, "android.app.KeyguardManager"

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v4, v3

    const-class v5, Landroid/content/Intent;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "semSetPendingIntentAfterUnlock"

    invoke-virtual {p1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object v1, v2, v6

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private static updateContactAddress(Lcom/google/zxing/client/result/AddressBookParsedResult;Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/result/AddressBookParsedResult;",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddresses()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddressTypes()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getAddressStructs()[Lcom/google/zxing/client/result/AddressStruct;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    move p1, v2

    :goto_0
    array-length v3, p0

    const-string v4, "data2"

    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    const-string v6, "mimetype"

    if-ge p1, v3, :cond_1

    aget-object v3, p0, p1

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v7, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v3, Lcom/google/zxing/client/result/AddressStruct;->street:Ljava/lang/String;

    const-string v6, "data4"

    invoke-virtual {v7, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v3, Lcom/google/zxing/client/result/AddressStruct;->postOfficeBox:Ljava/lang/String;

    const-string v6, "data5"

    invoke-virtual {v7, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v3, Lcom/google/zxing/client/result/AddressStruct;->region:Ljava/lang/String;

    const-string v6, "data8"

    invoke-virtual {v7, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v3, Lcom/google/zxing/client/result/AddressStruct;->locality:Ljava/lang/String;

    const-string v6, "data7"

    invoke-virtual {v7, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v3, Lcom/google/zxing/client/result/AddressStruct;->postalCode:Ljava/lang/String;

    const-string v6, "data9"

    invoke-virtual {v7, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v3, Lcom/google/zxing/client/result/AddressStruct;->country:Ljava/lang/String;

    const-string v6, "data10"

    invoke-virtual {v7, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v3, Lcom/google/zxing/client/result/AddressStruct;->type:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/camera/util/LinkAction;->getAddressType(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v5, :cond_0

    iget-object v3, v3, Lcom/google/zxing/client/result/AddressStruct;->type:Ljava/lang/String;

    const-string v4, "data3"

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    :goto_1
    array-length p0, v0

    if-ge v2, p0, :cond_4

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object p1, v0, v2

    const-string v3, "data1"

    invoke-virtual {p0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object p1, v1, v2

    invoke-static {p1}, Lcom/sec/android/app/camera/util/LinkAction;->getAddressType(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    array-length p0, v0

    if-lez p0, :cond_3

    aget-object p0, v0, v2

    const-string p2, "postal"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    if-eqz v1, :cond_4

    array-length p0, v1

    if-lez p0, :cond_4

    aget-object p0, v1, v2

    invoke-static {p0}, Lcom/sec/android/app/camera/util/LinkAction;->getAddressType(Ljava/lang/String;)I

    move-result p0

    const-string p2, "postal_type"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    return-void
.end method

.method private static updateContactBirthday(Lcom/google/zxing/client/result/AddressBookParsedResult;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/result/AddressBookParsedResult;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getBirthdayStruct()Lcom/google/zxing/client/result/BirthdayStruct;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/BirthdayStruct;->birthday:Ljava/lang/String;

    const-string v2, "data1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "data2"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/BirthdayStruct;->solarType:Ljava/lang/String;

    const-string v2, "data15"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/zxing/client/result/BirthdayStruct;->solarDate:Ljava/lang/String;

    const-string v1, "data14"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static updateContactEmail(Lcom/google/zxing/client/result/AddressBookParsedResult;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/result/AddressBookParsedResult;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data2"

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmails()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEmailTypes()[Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v1, v2

    const-string v5, "data1"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    :try_start_0
    aget-object v4, p0, v2

    invoke-static {v4}, Lcom/sec/android/app/camera/util/LinkAction;->getEmailType(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v4, :cond_0

    const-string v4, "data3"

    aget-object v5, p0, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "LinkAction"

    const-string v5, "ArrayIndexOutOfBoundsException occurred! Input default e-mail type."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    :goto_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static updateContactEvent(Lcom/google/zxing/client/result/AddressBookParsedResult;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/result/AddressBookParsedResult;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getEventStructs()[Lcom/google/zxing/client/result/EventStruct;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/google/zxing/client/result/EventStruct;->type:Lcom/google/zxing/client/result/EventStruct$Type;

    sget-object v4, Lcom/google/zxing/client/result/EventStruct$Type;->ANNIVERSARY:Lcom/google/zxing/client/result/EventStruct$Type;

    if-ne v3, v4, :cond_1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/google/zxing/client/result/EventStruct;->date:Ljava/lang/String;

    const-string v5, "data1"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/google/zxing/client/result/EventStruct;->type:Lcom/google/zxing/client/result/EventStruct$Type;

    invoke-static {v4}, Lcom/sec/android/app/camera/util/LinkAction;->getEventType(Lcom/google/zxing/client/result/EventStruct$Type;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eventStruct type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/google/zxing/client/result/EventStruct;->type:Lcom/google/zxing/client/result/EventStruct$Type;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", contactType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LinkAction"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "data2"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, v2, Lcom/google/zxing/client/result/EventStruct;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/google/zxing/client/result/EventStruct;->title:Ljava/lang/String;

    const-string v5, "data3"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v4, v2, Lcom/google/zxing/client/result/EventStruct;->solarType:Ljava/lang/String;

    const-string v5, "data15"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Lcom/google/zxing/client/result/EventStruct;->solarDate:Ljava/lang/String;

    const-string v4, "data14"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static updateContactNickName(Lcom/google/zxing/client/result/AddressBookParsedResult;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/result/AddressBookParsedResult;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNicknames()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/nickname"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v2, p0, v0

    const-string v3, "data1"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static updateContactNote(Lcom/google/zxing/client/result/AddressBookParsedResult;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/result/AddressBookParsedResult;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNote()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data1"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static updateContactNumber(Lcom/google/zxing/client/result/AddressBookParsedResult;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/result/AddressBookParsedResult;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data2"

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneNumbers()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getPhoneTypes()[Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v1, v2

    const-string v5, "data1"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    :try_start_0
    aget-object v4, p0, v2

    invoke-static {v4}, Lcom/sec/android/app/camera/util/LinkAction;->getNumberType(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v4, :cond_0

    const-string v4, "data3"

    aget-object v5, p0, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "LinkAction"

    const-string v5, "ArrayIndexOutOfBoundsException occurred! Input default phone type."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    :goto_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static updateContactOrganization(Lcom/google/zxing/client/result/AddressBookParsedResult;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/result/AddressBookParsedResult;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getOrg()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aget-object p0, p0, v2

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data1"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "data5"

    invoke-virtual {v1, p0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "data4"

    invoke-virtual {v1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static updateContactUrl(Lcom/google/zxing/client/result/AddressBookParsedResult;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/result/AddressBookParsedResult;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getURLs()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v2, p0, v0

    const-string v3, "data1"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static updateContactsName(Lcom/google/zxing/client/result/AddressBookParsedResult;Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/result/AddressBookParsedResult;",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getSelfFormatNames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->getNameStructs()[Lcom/google/zxing/client/result/NameStruct;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    aget-object v4, p0, v3

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v4, Lcom/google/zxing/client/result/NameStruct;->familyName:Ljava/lang/String;

    const-string v7, "data3"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v4, Lcom/google/zxing/client/result/NameStruct;->givenName:Ljava/lang/String;

    const-string v7, "data2"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v4, Lcom/google/zxing/client/result/NameStruct;->additionalName:Ljava/lang/String;

    const-string v7, "data5"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v4, Lcom/google/zxing/client/result/NameStruct;->honorificPrefix:Ljava/lang/String;

    const-string v7, "data4"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v4, Lcom/google/zxing/client/result/NameStruct;->honorificSuffix:Ljava/lang/String;

    const-string v6, "data6"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "name"

    if-eqz v0, :cond_1

    array-length p2, v0

    if-lez p2, :cond_1

    aget-object p2, v0, v2

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    array-length p2, v1

    if-lez p2, :cond_2

    aget-object p2, v1, v2

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_1
    return-void
.end method
