.class public final Lexpo/modules/imagepicker/ImagePickerConstants$EXIF_TAGS$1;
.super Ljava/lang/Object;
.source "ImagePickerConstants.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/imagepicker/ImagePickerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImagePickerConstants.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePickerConstants.kt\nexpo/modules/imagepicker/ImagePickerConstants$EXIF_TAGS$1\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n76#2:166\n96#2,2:167\n98#2,3:173\n1549#3:169\n1620#3,3:170\n*S KotlinDebug\n*F\n+ 1 ImagePickerConstants.kt\nexpo/modules/imagepicker/ImagePickerConstants$EXIF_TAGS$1\n*L\n19#1:166\n19#1:167,2\n19#1:173,3\n19#1:169\n19#1:170,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010 \n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u001b\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0008H\u0096\u0002R \u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "expo/modules/imagepicker/ImagePickerConstants$EXIF_TAGS$1",
        "",
        "Lkotlin/Pair;",
        "",
        "typeToTags",
        "",
        "",
        "iterator",
        "",
        "expo-image-picker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final typeToTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 58

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "Artist"

    const-string v2, "CFAPattern"

    const-string v3, "ComponentsConfiguration"

    const-string v4, "Copyright"

    const-string v5, "DateTime"

    const-string v6, "DateTimeDigitized"

    const-string v7, "DateTimeOriginal"

    const-string v8, "DeviceSettingDescription"

    const-string v9, "ExifVersion"

    const-string v10, "FileSource"

    const-string v11, "FlashpixVersion"

    const-string v12, "GPSAreaInformation"

    const-string v13, "GPSDateStamp"

    const-string v14, "GPSDestBearingRef"

    const-string v15, "GPSDestDistanceRef"

    const-string v16, "GPSDestLatitudeRef"

    const-string v17, "GPSDestLongitudeRef"

    const-string v18, "GPSHPositioningError"

    const-string v19, "GPSImgDirectionRef"

    const-string v20, "GPSLatitudeRef"

    const-string v21, "GPSLongitudeRef"

    const-string v22, "GPSMapDatum"

    const-string v23, "GPSMeasureMode"

    const-string v24, "GPSProcessingMethod"

    const-string v25, "GPSSatellites"

    const-string v26, "GPSSpeedRef"

    const-string v27, "GPSStatus"

    const-string v28, "GPSTimeStamp"

    const-string v29, "GPSTrackRef"

    const-string v30, "GPSVersionID"

    const-string v31, "ImageDescription"

    const-string v32, "ImageUniqueID"

    const-string v33, "InteroperabilityIndex"

    const-string v34, "Make"

    const-string v35, "MakerNote"

    const-string v36, "Model"

    const-string v37, "OECF"

    const-string v38, "RelatedSoundFile"

    const-string v39, "SceneType"

    const-string v40, "Software"

    const-string v41, "SpatialFrequencyResponse"

    const-string v42, "SpectralSensitivity"

    const-string v43, "SubSecTime"

    const-string v44, "SubSecTimeDigitized"

    const-string v45, "SubSecTimeOriginal"

    const-string v46, "UserComment"

    .line 69
    filled-new-array/range {v1 .. v46}, [Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "string"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, "ApertureValue"

    const-string v4, "BrightnessValue"

    const-string v5, "CompressedBitsPerPixel"

    const-string v6, "DigitalZoomRatio"

    const-string v7, "ExposureBiasValue"

    const-string v8, "ExposureIndex"

    const-string v9, "ExposureTime"

    const-string v10, "FlashEnergy"

    const-string v11, "FocalLength"

    const-string v12, "FocalPlaneXResolution"

    const-string v13, "FocalPlaneYResolution"

    const-string v14, "FNumber"

    const-string v15, "GPSAltitude"

    const-string v16, "GPSDestBearing"

    const-string v17, "GPSDestDistance"

    const-string v18, "GPSDestLatitude"

    const-string v19, "GPSDestLongitude"

    const-string v20, "GPSDOP"

    const-string v21, "GPSImgDirection"

    const-string v22, "GPSLatitude"

    const-string v23, "GPSLongitude"

    const-string v24, "GPSSpeed"

    const-string v25, "GPSTrack"

    const-string v26, "MaxApertureValue"

    const-string v27, "PrimaryChromaticities"

    const-string v28, "ReferenceBlackWhite"

    const-string v29, "ShutterSpeedValue"

    const-string v30, "SubjectDistance"

    const-string v31, "WhitePoint"

    const-string v32, "XResolution"

    const-string v33, "YCbCrCoefficients"

    const-string v34, "YResolution"

    .line 103
    filled-new-array/range {v3 .. v34}, [Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "double"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v3, "BitsPerSample"

    const-string v4, "ColorSpace"

    const-string v5, "Compression"

    const-string v6, "Contrast"

    const-string v7, "CustomRendered"

    const-string v8, "DefaultCropSize"

    const-string v9, "DNGVersion"

    const-string v10, "ExposureMode"

    const-string v11, "ExposureProgram"

    const-string v12, "Flash"

    const-string v13, "FocalLengthIn35mmFilm"

    const-string v14, "FocalPlaneResolutionUnit"

    const-string v15, "GainControl"

    const-string v16, "GPSAltitudeRef"

    const-string v17, "GPSDifferential"

    const-string v18, "ImageLength"

    const-string v19, "ImageWidth"

    const-string v20, "ISOSpeedRatings"

    const-string v21, "JPEGInterchangeFormat"

    const-string v22, "JPEGInterchangeFormatLength"

    const-string v23, "LightSource"

    const-string v24, "MeteringMode"

    const-string v25, "NewSubfileType"

    const-string v26, "AspectFrame"

    const-string v27, "PreviewImageLength"

    const-string v28, "PreviewImageStart"

    const-string v29, "Orientation"

    const-string v30, "PhotometricInterpretation"

    const-string v31, "PixelXDimension"

    const-string v32, "PixelYDimension"

    const-string v33, "PlanarConfiguration"

    const-string v34, "ResolutionUnit"

    const-string v35, "RowsPerStrip"

    const-string v36, "ISO"

    const-string v37, "SensorBottomBorder"

    const-string v38, "SensorLeftBorder"

    const-string v39, "SensorRightBorder"

    const-string v40, "SensorTopBorder"

    const-string v41, "SamplesPerPixel"

    const-string v42, "Saturation"

    const-string v43, "SceneCaptureType"

    const-string v44, "SensingMethod"

    const-string v45, "Sharpness"

    const-string v46, "StripByteCounts"

    const-string v47, "StripOffsets"

    const-string v48, "SubfileType"

    const-string v49, "SubjectArea"

    const-string v50, "SubjectDistanceRange"

    const-string v51, "SubjectLocation"

    const-string v52, "ThumbnailImageLength"

    const-string v53, "ThumbnailImageWidth"

    const-string v54, "TransferFunction"

    const-string v55, "WhiteBalance"

    const-string v56, "YCbCrPositioning"

    const-string v57, "YCbCrSubSampling"

    .line 160
    filled-new-array/range {v3 .. v57}, [Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "int"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 22
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lexpo/modules/imagepicker/ImagePickerConstants$EXIF_TAGS$1;->typeToTags:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/imagepicker/ImagePickerConstants$EXIF_TAGS$1;->typeToTags:Ljava/util/Map;

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 167
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 169
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 170
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 171
    check-cast v5, Ljava/lang/String;

    .line 19
    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 171
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :cond_0
    check-cast v4, Ljava/util/List;

    .line 168
    check-cast v4, Ljava/lang/Iterable;

    .line 173
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 175
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
