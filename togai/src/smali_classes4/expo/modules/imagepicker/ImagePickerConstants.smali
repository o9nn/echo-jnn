.class public final Lexpo/modules/imagepicker/ImagePickerConstants;
.super Ljava/lang/Object;
.source "ImagePickerConstants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R#\u0010\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/imagepicker/ImagePickerConstants;",
        "",
        "()V",
        "CACHE_DIR_NAME",
        "",
        "EXIF_TAGS",
        "",
        "Lkotlin/Pair;",
        "getEXIF_TAGS",
        "()Ljava/lang/Iterable;",
        "MAXIMUM_QUALITY",
        "",
        "TAG",
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


# static fields
.field public static final CACHE_DIR_NAME:Ljava/lang/String; = "ImagePicker"

.field private static final EXIF_TAGS:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lexpo/modules/imagepicker/ImagePickerConstants;

.field public static final MAXIMUM_QUALITY:D = 1.0

.field public static final TAG:Ljava/lang/String; = "ExponentImagePicker"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/imagepicker/ImagePickerConstants;

    invoke-direct {v0}, Lexpo/modules/imagepicker/ImagePickerConstants;-><init>()V

    sput-object v0, Lexpo/modules/imagepicker/ImagePickerConstants;->INSTANCE:Lexpo/modules/imagepicker/ImagePickerConstants;

    .line 13
    new-instance v0, Lexpo/modules/imagepicker/ImagePickerConstants$EXIF_TAGS$1;

    invoke-direct {v0}, Lexpo/modules/imagepicker/ImagePickerConstants$EXIF_TAGS$1;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    sput-object v0, Lexpo/modules/imagepicker/ImagePickerConstants;->EXIF_TAGS:Ljava/lang/Iterable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEXIF_TAGS()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/imagepicker/ImagePickerConstants;->EXIF_TAGS:Ljava/lang/Iterable;

    return-object v0
.end method
