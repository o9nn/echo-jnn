.class public final Lexpo/modules/medialibrary/MediaLibraryConstantsKt;
.super Ljava/lang/Object;
.source "MediaLibraryConstants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0002\"\u0019\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0005\u001a\u0004\u0008\u0003\u0010\u0004\"\u000e\u0010\u0006\u001a\u00020\u0002X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0002X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0002X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0002X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0002X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0002X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\u0002X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0002X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0002X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0002X\u0086T\u00a2\u0006\u0002\n\u0000\"\u001f\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00010\u0001\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0011\u0010\u0012\"\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u000e\u0010\u0018\u001a\u00020\u0019X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001a\u001a\u00020\u0002X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "ASSET_PROJECTION",
        "",
        "",
        "getASSET_PROJECTION",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "ERROR_IO_EXCEPTION",
        "ERROR_NO_PERMISSIONS",
        "ERROR_NO_PERMISSIONS_MESSAGE",
        "ERROR_NO_WRITE_PERMISSION_MESSAGE",
        "ERROR_UNABLE_TO_DELETE",
        "ERROR_UNABLE_TO_LOAD",
        "ERROR_UNABLE_TO_LOAD_PERMISSION",
        "ERROR_UNABLE_TO_SAVE",
        "ERROR_UNABLE_TO_SAVE_PERMISSION",
        "ERROR_USER_DID_NOT_GRANT_WRITE_PERMISSIONS_MESSAGE",
        "EXIF_TAGS",
        "getEXIF_TAGS",
        "()[[Ljava/lang/String;",
        "[[Ljava/lang/String;",
        "EXTERNAL_CONTENT_URI",
        "Landroid/net/Uri;",
        "getEXTERNAL_CONTENT_URI",
        "()Landroid/net/Uri;",
        "GET_ASSETS_DEFAULT_LIMIT",
        "",
        "LIBRARY_DID_CHANGE_EVENT",
        "expo-media-library_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ASSET_PROJECTION:[Ljava/lang/String;

.field public static final ERROR_IO_EXCEPTION:Ljava/lang/String; = "E_IO_EXCEPTION"

.field public static final ERROR_NO_PERMISSIONS:Ljava/lang/String; = "E_NO_PERMISSIONS"

.field public static final ERROR_NO_PERMISSIONS_MESSAGE:Ljava/lang/String; = "Missing MEDIA_LIBRARY permissions."

.field public static final ERROR_NO_WRITE_PERMISSION_MESSAGE:Ljava/lang/String; = "Missing MEDIA_LIBRARY write permission."

.field public static final ERROR_UNABLE_TO_DELETE:Ljava/lang/String; = "E_UNABLE_TO_DELETE"

.field public static final ERROR_UNABLE_TO_LOAD:Ljava/lang/String; = "E_UNABLE_TO_LOAD"

.field public static final ERROR_UNABLE_TO_LOAD_PERMISSION:Ljava/lang/String; = "E_UNABLE_TO_LOAD_PERMISSION"

.field public static final ERROR_UNABLE_TO_SAVE:Ljava/lang/String; = "E_UNABLE_TO_SAVE"

.field public static final ERROR_UNABLE_TO_SAVE_PERMISSION:Ljava/lang/String; = "E_UNABLE_TO_SAVE_PERMISSION"

.field public static final ERROR_USER_DID_NOT_GRANT_WRITE_PERMISSIONS_MESSAGE:Ljava/lang/String; = "User didn\'t grant write permission to requested files."

.field private static final EXIF_TAGS:[[Ljava/lang/String;

.field private static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final GET_ASSETS_DEFAULT_LIMIT:D = 20.0

.field public static final LIBRARY_DID_CHANGE_EVENT:Ljava/lang/String; = "mediaLibraryDidChange"


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "external"

    .line 22
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "getContentUri(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id"

    const-string v3, "_display_name"

    const-string v4, "_data"

    const-string v5, "media_type"

    const-string v6, "width"

    const-string v7, "height"

    const-string v8, "datetaken"

    const-string v9, "date_modified"

    const-string v10, "orientation"

    const-string v11, "duration"

    const-string v12, "bucket_id"

    .line 35
    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->ASSET_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x81

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "Artist"

    const-string v2, "string"

    .line 39
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "BitsPerSample"

    const-string v3, "int"

    .line 40
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const-string v1, "Compression"

    .line 41
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "Copyright"

    .line 42
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "DateTime"

    .line 43
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "ImageDescription"

    .line 44
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "ImageLength"

    .line 45
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const-string v1, "ImageWidth"

    .line 46
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    const-string v1, "JPEGInterchangeFormat"

    .line 47
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    aput-object v1, v0, v4

    const-string v1, "JPEGInterchangeFormatLength"

    .line 48
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v0, v4

    const-string v1, "Make"

    .line 49
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa

    aput-object v1, v0, v4

    const-string v1, "Model"

    .line 50
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb

    aput-object v1, v0, v4

    const-string v1, "Orientation"

    .line 51
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc

    aput-object v1, v0, v4

    const-string v1, "PhotometricInterpretation"

    .line 52
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd

    aput-object v1, v0, v4

    const-string v1, "PlanarConfiguration"

    .line 53
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe

    aput-object v1, v0, v4

    const-string v1, "PrimaryChromaticities"

    const-string v4, "double"

    .line 54
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xf

    aput-object v1, v0, v5

    const-string v1, "ReferenceBlackWhite"

    .line 55
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x10

    aput-object v1, v0, v5

    const-string v1, "ResolutionUnit"

    .line 56
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x11

    aput-object v1, v0, v5

    const-string v1, "RowsPerStrip"

    .line 57
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x12

    aput-object v1, v0, v5

    const-string v1, "SamplesPerPixel"

    .line 58
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x13

    aput-object v1, v0, v5

    const-string v1, "Software"

    .line 59
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x14

    aput-object v1, v0, v5

    const-string v1, "StripByteCounts"

    .line 60
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x15

    aput-object v1, v0, v5

    const-string v1, "StripOffsets"

    .line 61
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x16

    aput-object v1, v0, v5

    const-string v1, "TransferFunction"

    .line 62
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x17

    aput-object v1, v0, v5

    const-string v1, "WhitePoint"

    .line 63
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x18

    aput-object v1, v0, v5

    const-string v1, "XResolution"

    .line 64
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x19

    aput-object v1, v0, v5

    const-string v1, "YCbCrCoefficients"

    .line 65
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x1a

    aput-object v1, v0, v5

    const-string v1, "YCbCrPositioning"

    .line 66
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x1b

    aput-object v1, v0, v5

    const-string v1, "YCbCrSubSampling"

    .line 67
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x1c

    aput-object v1, v0, v5

    const-string v1, "YResolution"

    .line 68
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x1d

    aput-object v1, v0, v5

    const-string v1, "ApertureValue"

    .line 69
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x1e

    aput-object v1, v0, v5

    const-string v1, "BrightnessValue"

    .line 70
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x1f

    aput-object v1, v0, v5

    const-string v1, "CFAPattern"

    .line 71
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x20

    aput-object v1, v0, v5

    const-string v1, "ColorSpace"

    .line 72
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x21

    aput-object v1, v0, v5

    const-string v1, "ComponentsConfiguration"

    .line 73
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x22

    aput-object v1, v0, v5

    const-string v1, "CompressedBitsPerPixel"

    .line 74
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x23

    aput-object v1, v0, v5

    const-string v1, "Contrast"

    .line 75
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x24

    aput-object v1, v0, v5

    const-string v1, "CustomRendered"

    .line 76
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x25

    aput-object v1, v0, v5

    const-string v1, "DateTimeDigitized"

    .line 77
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x26

    aput-object v1, v0, v5

    const-string v1, "DateTimeOriginal"

    .line 78
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x27

    aput-object v1, v0, v5

    const-string v1, "DeviceSettingDescription"

    .line 79
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x28

    aput-object v1, v0, v5

    const-string v1, "DigitalZoomRatio"

    .line 80
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x29

    aput-object v1, v0, v5

    const-string v1, "ExifVersion"

    .line 81
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2a

    aput-object v1, v0, v5

    const-string v1, "ExposureBiasValue"

    .line 82
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2b

    aput-object v1, v0, v5

    const-string v1, "ExposureIndex"

    .line 83
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2c

    aput-object v1, v0, v5

    const-string v1, "ExposureMode"

    .line 84
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2d

    aput-object v1, v0, v5

    const-string v1, "ExposureProgram"

    .line 85
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2e

    aput-object v1, v0, v5

    const-string v1, "ExposureTime"

    .line 86
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2f

    aput-object v1, v0, v5

    const-string v1, "FNumber"

    .line 87
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x30

    aput-object v1, v0, v5

    const-string v1, "FileSource"

    .line 88
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x31

    aput-object v1, v0, v5

    const-string v1, "Flash"

    .line 89
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x32

    aput-object v1, v0, v5

    const-string v1, "FlashEnergy"

    .line 90
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x33

    aput-object v1, v0, v5

    const-string v1, "FlashpixVersion"

    .line 91
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x34

    aput-object v1, v0, v5

    const-string v1, "FocalLength"

    .line 92
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x35

    aput-object v1, v0, v5

    const-string v1, "FocalLengthIn35mmFilm"

    .line 93
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x36

    aput-object v1, v0, v5

    const-string v1, "FocalPlaneResolutionUnit"

    .line 94
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x37

    aput-object v1, v0, v5

    const-string v1, "FocalPlaneXResolution"

    .line 95
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x38

    aput-object v1, v0, v5

    const-string v1, "FocalPlaneYResolution"

    .line 96
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x39

    aput-object v1, v0, v5

    const-string v1, "GainControl"

    .line 97
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x3a

    aput-object v1, v0, v5

    const-string v1, "ISOSpeedRatings"

    .line 98
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x3b

    aput-object v1, v0, v5

    const-string v1, "ImageUniqueID"

    .line 99
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x3c

    aput-object v1, v0, v5

    const-string v1, "LightSource"

    .line 100
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x3d

    aput-object v1, v0, v5

    const-string v1, "MakerNote"

    .line 101
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x3e

    aput-object v1, v0, v5

    const-string v1, "MaxApertureValue"

    .line 102
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x3f

    aput-object v1, v0, v5

    const-string v1, "MeteringMode"

    .line 103
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x40

    aput-object v1, v0, v5

    const-string v1, "NewSubfileType"

    .line 104
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x41

    aput-object v1, v0, v5

    const-string v1, "OECF"

    .line 105
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x42

    aput-object v1, v0, v5

    const-string v1, "PixelXDimension"

    .line 106
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x43

    aput-object v1, v0, v5

    const-string v1, "PixelYDimension"

    .line 107
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x44

    aput-object v1, v0, v5

    const-string v1, "RelatedSoundFile"

    .line 108
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x45

    aput-object v1, v0, v5

    const-string v1, "Saturation"

    .line 109
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x46

    aput-object v1, v0, v5

    const-string v1, "SceneCaptureType"

    .line 110
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x47

    aput-object v1, v0, v5

    const-string v1, "SceneType"

    .line 111
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x48

    aput-object v1, v0, v5

    const-string v1, "SensingMethod"

    .line 112
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x49

    aput-object v1, v0, v5

    const-string v1, "Sharpness"

    .line 113
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x4a

    aput-object v1, v0, v5

    const-string v1, "ShutterSpeedValue"

    .line 114
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x4b

    aput-object v1, v0, v5

    const-string v1, "SpatialFrequencyResponse"

    .line 115
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x4c

    aput-object v1, v0, v5

    const-string v1, "SpectralSensitivity"

    .line 116
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x4d

    aput-object v1, v0, v5

    const-string v1, "SubfileType"

    .line 117
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x4e

    aput-object v1, v0, v5

    const-string v1, "SubSecTime"

    .line 118
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x4f

    aput-object v1, v0, v5

    const-string v1, "SubSecTimeDigitized"

    .line 119
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x50

    aput-object v1, v0, v5

    const-string v1, "SubSecTimeOriginal"

    .line 120
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x51

    aput-object v1, v0, v5

    const-string v1, "SubjectArea"

    .line 121
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x52

    aput-object v1, v0, v5

    const-string v1, "SubjectDistance"

    .line 122
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x53

    aput-object v1, v0, v5

    const-string v1, "SubjectDistanceRange"

    .line 123
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x54

    aput-object v1, v0, v5

    const-string v1, "SubjectLocation"

    .line 124
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x55

    aput-object v1, v0, v5

    const-string v1, "UserComment"

    .line 125
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x56

    aput-object v1, v0, v5

    const-string v1, "WhiteBalance"

    .line 126
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x57

    aput-object v1, v0, v5

    const-string v1, "GPSAltitudeRef"

    .line 127
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x58

    aput-object v1, v0, v5

    const-string v1, "GPSAreaInformation"

    .line 128
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x59

    aput-object v1, v0, v5

    const-string v1, "GPSDOP"

    .line 129
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x5a

    aput-object v1, v0, v5

    const-string v1, "GPSDateStamp"

    .line 130
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x5b

    aput-object v1, v0, v5

    const-string v1, "GPSDestBearing"

    .line 131
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x5c

    aput-object v1, v0, v5

    const-string v1, "GPSDestBearingRef"

    .line 132
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x5d

    aput-object v1, v0, v5

    const-string v1, "GPSDestDistance"

    .line 133
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x5e

    aput-object v1, v0, v5

    const-string v1, "GPSDestDistanceRef"

    .line 134
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x5f

    aput-object v1, v0, v5

    const-string v1, "GPSDestLatitude"

    .line 135
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x60

    aput-object v1, v0, v5

    const-string v1, "GPSDestLatitudeRef"

    .line 136
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x61

    aput-object v1, v0, v5

    const-string v1, "GPSDestLongitude"

    .line 137
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x62

    aput-object v1, v0, v5

    const-string v1, "GPSDestLongitudeRef"

    .line 138
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x63

    aput-object v1, v0, v5

    const-string v1, "GPSDifferential"

    .line 139
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x64

    aput-object v1, v0, v5

    const-string v1, "GPSImgDirection"

    .line 140
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x65

    aput-object v1, v0, v5

    const-string v1, "GPSImgDirectionRef"

    .line 141
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x66

    aput-object v1, v0, v5

    const-string v1, "GPSLatitudeRef"

    .line 142
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x67

    aput-object v1, v0, v5

    const-string v1, "GPSLongitudeRef"

    .line 143
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x68

    aput-object v1, v0, v5

    const-string v1, "GPSMapDatum"

    .line 144
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x69

    aput-object v1, v0, v5

    const-string v1, "GPSMeasureMode"

    .line 145
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x6a

    aput-object v1, v0, v5

    const-string v1, "GPSProcessingMethod"

    .line 146
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x6b

    aput-object v1, v0, v5

    const-string v1, "GPSSatellites"

    .line 147
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x6c

    aput-object v1, v0, v5

    const-string v1, "GPSSpeed"

    .line 148
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x6d

    aput-object v1, v0, v5

    const-string v1, "GPSSpeedRef"

    .line 149
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x6e

    aput-object v1, v0, v5

    const-string v1, "GPSStatus"

    .line 150
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x6f

    aput-object v1, v0, v5

    const-string v1, "GPSTimeStamp"

    .line 151
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x70

    aput-object v1, v0, v5

    const-string v1, "GPSTrack"

    .line 152
    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x71

    aput-object v1, v0, v4

    const-string v1, "GPSTrackRef"

    .line 153
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x72

    aput-object v1, v0, v4

    const-string v1, "GPSVersionID"

    .line 154
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x73

    aput-object v1, v0, v4

    const-string v1, "InteroperabilityIndex"

    .line 155
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "ThumbnailImageLength"

    .line 156
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "ThumbnailImageWidth"

    .line 157
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "DNGVersion"

    .line 158
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "DefaultCropSize"

    .line 159
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "PreviewImageStart"

    .line 160
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "PreviewImageLength"

    .line 161
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "AspectFrame"

    .line 162
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "SensorBottomBorder"

    .line 163
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "SensorLeftBorder"

    .line 164
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "SensorRightBorder"

    .line 165
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "SensorTopBorder"

    .line 166
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "ISO"

    .line 167
    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    aput-object v1, v0, v2

    sput-object v0, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->EXIF_TAGS:[[Ljava/lang/String;

    return-void
.end method

.method public static final getASSET_PROJECTION()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->ASSET_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static final getEXIF_TAGS()[[Ljava/lang/String;
    .locals 1

    sget-object v0, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->EXIF_TAGS:[[Ljava/lang/String;

    return-object v0
.end method

.method public static final getEXTERNAL_CONTENT_URI()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method
