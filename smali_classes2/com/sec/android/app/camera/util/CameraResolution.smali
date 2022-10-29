.class public Lcom/sec/android/app/camera/util/CameraResolution;
.super Ljava/lang/Object;
.source "CameraResolution.java"


# static fields
.field private static final FEATURE_INDEX_EFFECT:Ljava/lang/String; = "effect"

.field private static final FEATURE_INDEX_EXTERNAL_STORAGE_SUPPORT_RECORDING:Ljava/lang/String; = "external-storage-support"

.field private static final FEATURE_INDEX_HDR:Ljava/lang/String; = "hdr"

.field private static final FEATURE_INDEX_HDR10:Ljava/lang/String; = "hdr10"

.field private static final FEATURE_INDEX_OBJECT_TRACKING:Ljava/lang/String; = "object-tracking"

.field private static final FEATURE_INDEX_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final FEATURE_INDEX_SEAMLESS_ZOOM_RECORDING:Ljava/lang/String; = "seamless-zoom-support"

.field private static final FEATURE_INDEX_SNAPSHOT_SIZE:Ljava/lang/String; = "snapshot-size"

.field private static final FEATURE_INDEX_SNAPSHOT_SUPPORT:Ljava/lang/String; = "snapshot-support"

.field private static final FEATURE_INDEX_SUPER_VIDEO_STABILIZATION:Ljava/lang/String; = "super-vdis"

.field private static final FEATURE_INDEX_TOUCH_AF:Ljava/lang/String; = "touch-af"

.field private static final FEATURE_INDEX_VALUE:Ljava/lang/String; = "value"

.field private static final FEATURE_INDEX_VIDEO_STABILIZATION:Ljava/lang/String; = "vdis"

.field private static mBackPictureResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

.field private static final mBackPictureUpdateLock:Ljava/lang/Object;

.field private static mBackVideoResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

.field private static final mBackVideoUpdateLock:Ljava/lang/Object;

.field private static mDefaultResolutionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;",
            "Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mFrontPictureResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

.field private static final mFrontPictureUpdateLock:Ljava/lang/Object;

.field private static mFrontSensorCropResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

.field private static final mFrontSensorCropUpdateLock:Ljava/lang/Object;

.field private static mFrontVideoResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

.field private static final mFrontVideoUpdateLock:Ljava/lang/Object;

.field private static mSensorCropResolutionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWideMaxResolutionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWideResolutionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mBackVideoUpdateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontVideoUpdateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mBackPictureUpdateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontPictureUpdateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontSensorCropUpdateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mBackVideoResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    sput-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontVideoResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    sput-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mBackPictureResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    sput-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontPictureResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    sput-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontSensorCropResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mWideMaxResolutionMap:Ljava/util/Map;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9_8K:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO_8K:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_1_1_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_1_1_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_WIDE_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_WIDE_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_WIDE_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_WIDE_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_SUPER_RESOLUTION:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_SUPER_RESOLUTION:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mWideMaxResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mWideMaxResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mWideMaxResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_16BY9:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mWideMaxResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_4BY3:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mWideMaxResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_1BY1:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Resolution:[I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/samsung/android/camera/feature/FeatureLoader;->getDefaultCamcorderFeature()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/camera/feature/FeatureLoader;->getDefaultAttachCamcorderFeature()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1280X720:Ljava/util/Map;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1440X1080:Ljava/util/Map;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1440:Ljava/util/Map;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1072X1072:Ljava/util/Map;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1440X1440:Ljava/util/Map;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2224X1080:Ljava/util/Map;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2288X1080:Ljava/util/Map;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2400X1080:Ljava/util/Map;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080:Ljava/util/Map;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2560X1440:Ljava/util/Map;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160:Ljava/util/Map;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_7680X4320_24FPS:Ljava/util/Map;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_7680X4320:Ljava/util/Map;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_60FPS:Ljava/util/Map;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160_60FPS:Ljava/util/Map;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getBackPictureResolutionList()[Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 6

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mBackPictureUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraResolution;->mBackPictureResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    if-nez v1, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_SUPER_RESOLUTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_SUPER_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_MEDIUM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_SMALL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_SMALL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_MEDIUM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_SMALL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_SMALL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_MEDIUM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_SMALL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_SMALL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [Lcom/sec/android/app/camera/interfaces/Resolution;

    sput-object v3, Lcom/sec/android/app/camera/util/CameraResolution;->mBackPictureResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_b

    sget-object v4, Lcom/sec/android/app/camera/util/CameraResolution;->mBackPictureResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/interfaces/Resolution;

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_b
    sget-object v1, Lcom/sec/android/app/camera/util/CameraResolution;->mBackPictureResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getBackVideoResolutionList()[Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 5

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mBackVideoUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraResolution;->mBackVideoResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X4320:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X4320:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X4320_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X4320_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2560X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2560X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2400X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2400X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2288X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2288X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2224X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2224X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1440X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1440X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1440X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1440X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1072X1072:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1072X1072:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1280X720:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1280X720:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sec/android/app/camera/interfaces/Resolution;

    sput-object v2, Lcom/sec/android/app/camera/util/CameraResolution;->mBackVideoResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    sget-object v3, Lcom/sec/android/app/camera/util/CameraResolution;->mBackVideoResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/interfaces/Resolution;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_e
    sget-object v1, Lcom/sec/android/app/camera/util/CameraResolution;->mBackVideoResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getBackWideCameraMaxResolution(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mWideMaxResolutionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWideMaxResolution : Argument is wrong = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCamcorderEffectAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "effect"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getCamcorderExternalStorageAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "external-storage-support"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static getCamcorderHDRAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "hdr"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getCamcorderHdr10AvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "hdr10"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getCamcorderObjectTrackingAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "object-tracking"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getCamcorderPreviewHeightFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)I
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    const-string v1, "preview-size"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getCamcorderPreviewWidthFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)I
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "preview-size"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_1
    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    :goto_1
    return v0
.end method

.method public static getCamcorderRatio(I)I
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Resolution$ASPECT_RATIO:[I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    return v0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getCamcorderSeamlessZoomRecordingAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "seamless-zoom-support"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static getCamcorderSnapshotAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "snapshot-support"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getCamcorderSnapshotFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    const-string v0, "snapshot-size"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public static getCamcorderSnapshotHeightFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)I
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    const-string v1, "snapshot-size"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getCamcorderSnapshotWidthFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)I
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "snapshot-size"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_1
    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    :goto_1
    return v0
.end method

.method public static getCamcorderSuperVideoStabilizationAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "super-vdis"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getCamcorderTouchAfAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "touch-af"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static getCamcorderVideoStabilizationAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "vdis"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getDefaultResolution(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string p1, ""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Resolution:[I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/camera/feature/FeatureLoader;->getDefaultCamcorderFeature()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/camera/feature/FeatureLoader;->getDefaultAttachCamcorderFeature()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1280X720:Ljava/util/Map;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1440:Ljava/util/Map;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1072X1072:Ljava/util/Map;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1440X1440:Ljava/util/Map;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2224X1080:Ljava/util/Map;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2288X1080:Ljava/util/Map;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2400X1080:Ljava/util/Map;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080:Ljava/util/Map;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2560X1440:Ljava/util/Map;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160:Ljava/util/Map;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_60FPS:Ljava/util/Map;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160_60FPS:Ljava/util/Map;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getFrontPictureResolutionList()[Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 6

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontPictureUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontPictureResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    if-nez v1, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_SUPER_RESOLUTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_SUPER_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_MEDIUM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_SMALL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_SMALL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_MEDIUM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_SMALL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_SMALL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_MEDIUM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_MEDIUM:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_SMALL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_SMALL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [Lcom/sec/android/app/camera/interfaces/Resolution;

    sput-object v3, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontPictureResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_b

    sget-object v4, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontPictureResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/interfaces/Resolution;

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_b
    sget-object v1, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontPictureResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getFrontSensorCropResolutionList()[Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 6

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontSensorCropUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontSensorCropResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v2, ""

    sget-object v3, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [Lcom/sec/android/app/camera/interfaces/Resolution;

    sput-object v3, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontSensorCropResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    sget-object v4, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontSensorCropResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/interfaces/Resolution;

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontSensorCropResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getFrontVideoResolutionList()[Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 5

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontVideoUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontVideoResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    if-nez v1, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2560X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2560X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2400X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2400X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2288X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2288X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2224X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2224X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1440X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1440X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1072X1072:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1072X1072:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1280X720:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1280X720:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sec/android/app/camera/interfaces/Resolution;

    sput-object v2, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontVideoResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    sget-object v3, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontVideoResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/interfaces/Resolution;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_b
    sget-object v1, Lcom/sec/android/app/camera/util/CameraResolution;->mFrontVideoResolutions:[Lcom/sec/android/app/camera/interfaces/Resolution;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLowFpsCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Resolution:[I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    return-object p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/sec/android/app/camera/interfaces/Resolution;

    return-object p0
.end method

.method public static getNormalAngleResolutionBySensorCropAngle(Lcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

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

    sget-object v2, Lcom/sec/android/app/camera/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNormalAngleResolutionBySensorCropAngle : Argument is wrong = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNormalAngleResolutionByWideAngle(Lcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

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

    sget-object v2, Lcom/sec/android/app/camera/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNormalAngleResolutionByWideAngle : Argument is wrong = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPictureRatio(I)I
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/CameraResolution$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Resolution$ASPECT_RATIO:[I

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported picture ratio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSuperResolution(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPictureSizeFullString(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPictureSizeString(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getRatioString(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPictureSizeString : Can\'t find resource. Argument is wrong = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getPictureSizeSummaryString(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPictureSizeString : Can\'t find resource. Argument is wrong = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getRatioString(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Resolution$ASPECT_RATIO:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const p1, 0x7f1104c8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f1104d0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f1104c2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f1104c0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v0, 0x7f1104c1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRepresentativeCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)I
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Resolution$ASPECT_RATIO:[I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_4_3_RATIO:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_1
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_2
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_1_1_RATIO:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_3
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :goto_0
    :pswitch_4
    const/4 p0, -0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getRepresentativePreviewSize(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)Landroid/util/Size;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Resolution$ASPECT_RATIO:[I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->REAL_PREVIEW_SIZE_CIF:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->REAL_PREVIEW_SIZE_4_3:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->REAL_PREVIEW_SIZE_20_9:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->REAL_PREVIEW_SIZE_19_9:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->REAL_PREVIEW_SIZE_18DOT5_9:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->REAL_PREVIEW_SIZE_1_1:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->REAL_PREVIEW_SIZE_16_9:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getResolutionSubString(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isEuropeanArabicNumerals()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "%dx%d"

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSensorCropResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSensorCropResolution : Argument is wrong = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVideoSizeFullString(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u200e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u202b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoSizeString(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Resolution:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoSizeString : invalid argument = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p1, 0x7f1100b6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f1100ba

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f1100bd

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f1100b3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f1100b4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p1, 0x7f1100b5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    const p1, 0x7f1100c7

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    const p1, 0x7f1100b7

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const p1, 0x7f1100b9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    const p1, 0x7f1100bb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v0, 0x7f1104c1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    const p1, 0x7f1100b8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    const p1, 0x7f1100bc

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVideoSizeSummaryString(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u200e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u202b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWideAngleResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWideAngleResolution : Argument is wrong = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static is24FpsCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Resolution:[I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static is60FpsCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Resolution:[I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static isBackCamcorderFullRatioResolutionSupported()Z
    .locals 7

    invoke-static {}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackVideoResolutionList()[Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackVideoResolutionList()[Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static isBackCamcorderHDR10RecordingSupported()Z
    .locals 6

    invoke-static {}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackVideoResolutionList()[Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackVideoResolutionList()[Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderHdr10AvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isBackCameraFullRatioResolutionSupported()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isCamcorderSuperResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Resolution:[I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isFrontCamcorderFullRatioResolutionSupported()Z
    .locals 7

    invoke-static {}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontVideoResolutionList()[Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontVideoResolutionList()[Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static isFrontCamcorderHDR10RecordingSupported()Z
    .locals 5

    invoke-static {}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontVideoResolutionList()[Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontVideoResolutionList()[Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {v1, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderHdr10AvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isFrontCameraFullRatioResolutionSupported()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNormalResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSquareResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSuperResolution(I)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSuperResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p0

    return p0
.end method

.method public static isSuperResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Resolution:[I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isSuperWideResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    if-ne p0, v0, :cond_0

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

.method public static isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "value"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSupportedBackCameraResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_MEDIUM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_SMALL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_MEDIUM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_SMALL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_MEDIUM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_SMALL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isSupportedFrontCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getFrontCamcorderFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "value"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSupportedFrontCameraResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_MEDIUM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_16BY9_SMALL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_MEDIUM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_SMALL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_MEDIUM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_SMALL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isTorchHighTemperatureWarningResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_TORCH_HIGH_TEMPERATURE_WARNING:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/util/CameraResolution$1;->$SwitchMap$com$sec$android$app$camera$interfaces$Resolution:[I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static isWideResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
