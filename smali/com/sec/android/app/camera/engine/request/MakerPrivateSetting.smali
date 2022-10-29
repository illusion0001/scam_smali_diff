.class public Lcom/sec/android/app/camera/engine/request/MakerPrivateSetting;
.super Ljava/lang/Object;
.source "MakerPrivateSetting.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MakerPrivateSetting"


# instance fields
.field private mKey:Lcom/samsung/android/camera/core2/MakerPrivateKey;

.field private mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/camera/core2/MakerPrivateKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerPrivateSetting;->mKey:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/request/MakerPrivateSetting;->mValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getKey()Lcom/samsung/android/camera/core2/MakerPrivateKey;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerPrivateSetting;->mKey:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerPrivateSetting;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/MakerPrivateSetting;->mKey:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/MakerPrivateKey;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerPrivateSetting;->mValue:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
