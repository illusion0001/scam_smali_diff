.class public Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;
.super Ljava/lang/Object;
.source "ProColorTune.java"


# static fields
.field public static final CONTROL_CONTRAST:I = 0x2

.field public static final CONTROL_HIGHLIGHT:I = 0x4

.field public static final CONTROL_MAX:I = 0x6

.field public static final CONTROL_SATURATION:I = 0x3

.field public static final CONTROL_SHADOW:I = 0x5

.field public static final CONTROL_TEMPERATURE:I = 0x0

.field public static final CONTROL_TINT:I = 0x1

.field private static final EFFECT_PARAM_STRING_ARRAY:[Ljava/lang/String;

.field public static final STATE_DEFAULT:I = 0x3

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_LOADED:I = 0x1

.field public static final STATE_UPDATED:I = 0x2


# instance fields
.field private mCurrent:[I

.field private mDefault:[I

.field private final mDefaultValues:Ljava/lang/String;

.field private final mDivideFactor:I

.field private mLoaded:[I

.field private final mMaxOffsetValue:I

.field private final mPrefKey:Ljava/lang/String;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "TE="

    const-string v1, "TI="

    const-string v2, "CO="

    const-string v3, "SA="

    const-string v4, "HL="

    const-string v5, "SL="

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->EFFECT_PARAM_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mCurrent:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mDefault:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mLoaded:[I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mState:I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mPrefKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mDefaultValues:Ljava/lang/String;

    const p1, 0x7f0b0086

    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mDivideFactor:I

    const p1, 0x7f0b005c

    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mMaxOffsetValue:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mDefaultValues:Ljava/lang/String;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mDefault:[I

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getValueFromPreference(Ljava/lang/String;I)I
    .locals 1

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mMaxOffsetValue:I

    add-int v0, p2, p0

    sub-int/2addr p2, p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p2, v0}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result p0

    return p0
.end method

.method private isLoaded()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mCurrent:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mLoaded:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private updateState()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mState:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mState:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mState:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mState:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getColorTuneParameterString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x6

    if-ge v3, v4, :cond_1

    if-lez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v4, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->EFFECT_PARAM_STRING_ARRAY:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customcolor,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSliderValues()[I
    .locals 5

    const/4 v0, 0x6

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mCurrent:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mDefault:[I

    aget v4, v4, v2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mDivideFactor:I

    div-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mState:I

    return p0
.end method

.method public isDefault()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mCurrent:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mDefault:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public load(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mPrefKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mDefaultValues:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mLoaded:[I

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mDefault:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->getValueFromPreference(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mCurrent:[I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mLoaded:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->updateState()V

    return-void
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mDefault:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mCurrent:[I

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->updateState()V

    return-void
.end method

.method public save(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSliderValue(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mCurrent:[I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mDivideFactor:I

    mul-int/2addr p2, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mDefault:[I

    aget v1, v1, p1

    add-int/2addr p2, v1

    aput p2, v0, p1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->updateState()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->mCurrent:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
