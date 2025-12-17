.class public Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;
.super Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;
.source "PDType1Font.java"


# static fields
.field private static final ALT_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COURIER:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

.field public static final COURIER_BOLD:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

.field public static final COURIER_BOLD_OBLIQUE:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

.field public static final COURIER_OBLIQUE:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

.field public static final HELVETICA:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

.field public static final HELVETICA_BOLD:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

.field public static final HELVETICA_BOLD_OBLIQUE:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

.field public static final HELVETICA_OBLIQUE:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

.field private static final PFB_START_MARKER:I = 0x80

.field public static final SYMBOL:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

.field public static final TIMES_BOLD:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

.field public static final TIMES_BOLD_ITALIC:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

.field public static final TIMES_ITALIC:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

.field public static final TIMES_ROMAN:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

.field public static final ZAPF_DINGBATS:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;


# instance fields
.field private final codeToBytesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

.field private fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

.field private final fontMatrixTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

.field private final genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

.field private final isDamaged:Z

.field private final isEmbedded:Z

.field private final type1font:Lcom/tom_roush/fontbox/type1/Type1Font;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->ALT_NAMES:Ljava/util/Map;

    const-string v1, "ff"

    const-string v2, "f_f"

    .line 64
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffi"

    const-string v2, "f_f_i"

    .line 65
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffl"

    const-string v2, "f_f_l"

    .line 66
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fi"

    const-string v2, "f_i"

    .line 67
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fl"

    const-string v2, "f_l"

    .line 68
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "st"

    const-string v2, "s_t"

    .line 69
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IJ"

    const-string v2, "I_J"

    .line 70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ij"

    const-string v2, "i_j"

    .line 71
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ellipsis"

    const-string v2, "elipsis"

    .line 72
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v1, "Times-Roman"

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->TIMES_ROMAN:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    .line 78
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v1, "Times-Bold"

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->TIMES_BOLD:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    .line 79
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v1, "Times-Italic"

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->TIMES_ITALIC:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    .line 80
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v1, "Times-BoldItalic"

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->TIMES_BOLD_ITALIC:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    .line 81
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v1, "Helvetica"

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->HELVETICA:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    .line 82
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v1, "Helvetica-Bold"

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->HELVETICA_BOLD:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    .line 83
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v1, "Helvetica-Oblique"

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->HELVETICA_OBLIQUE:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    .line 84
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v1, "Helvetica-BoldOblique"

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->HELVETICA_BOLD_OBLIQUE:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    .line 85
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v1, "Courier"

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->COURIER:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    .line 86
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v1, "Courier-Bold"

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->COURIER_BOLD:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    .line 87
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v1, "Courier-Oblique"

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->COURIER_OBLIQUE:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    .line 88
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v1, "Courier-BoldOblique"

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->COURIER_BOLD_OBLIQUE:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    .line 89
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v1, "Symbol"

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->SYMBOL:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    .line 90
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v1, "ZapfDingbats"

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->ZAPF_DINGBATS:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Invalid length data, actual length: "

    .line 208
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 209
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->codeToBytesMap:Ljava/util/Map;

    .line 211
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object p1

    const/4 v1, 0x1

    const-string v2, "PdfBox-Android"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 217
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontFile3()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, "/FontFile3 for Type1 font not supported"

    .line 220
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontFile()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 229
    :try_start_0
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v6

    .line 230
    sget-object v7, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH1:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v6, v7}, Lcom/tom_roush/pdfbox/cos/COSStream;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v7

    .line 231
    sget-object v8, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v6, v8}, Lcom/tom_roush/pdfbox/cos/COSStream;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v6

    .line 234
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->toByteArray()[B

    move-result-object v5

    .line 235
    array-length v8, v5

    if-eqz v8, :cond_3

    .line 239
    invoke-direct {p0, v5, v7}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->repairLength1([BI)I

    move-result v7

    .line 240
    invoke-direct {p0, v5, v7, v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->repairLength2([BII)I

    move-result v6

    .line 242
    aget-byte v8, v5, v4

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x80

    if-ne v8, v9, :cond_1

    .line 245
    invoke-static {v5}, Lcom/tom_roush/fontbox/type1/Type1Font;->createWithPFB([B)Lcom/tom_roush/fontbox/type1/Type1Font;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto/16 :goto_2

    :cond_1
    if-ltz v7, :cond_2

    add-int v8, v7, v6

    if-gt v7, v8, :cond_2

    .line 255
    invoke-static {v5, v4, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 256
    invoke-static {v5, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    if-lez v7, :cond_4

    if-lez v6, :cond_4

    .line 261
    invoke-static {v0, v5}, Lcom/tom_roush/fontbox/type1/Type1Font;->createWithSegments([B[B)Lcom/tom_roush/fontbox/type1/Type1Font;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_2
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", /Length1: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", /Length2: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 237
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Font data unavailable"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/tom_roush/fontbox/type1/DamagedFontException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t read the embedded Type1 font "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 267
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t read damaged embedded Type1 font "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v4

    :goto_3
    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move v1, v4

    :goto_4
    iput-boolean v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->isEmbedded:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->isDamaged:Z

    iput-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->type1font:Lcom/tom_roush/fontbox/type1/Type1Font;

    if-eqz v3, :cond_6

    iput-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    goto :goto_5

    .line 288
    :cond_6
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers;->instance()Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;

    move-result-object v0

    .line 289
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getBaseFont()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;->getFontBoxFont(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;)Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;

    move-result-object p1

    .line 290
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;->getFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 292
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;->isFallback()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Using fallback font "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/tom_roush/fontbox/FontBoxFont;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getBaseFont()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->readEncoding()V

    .line 298
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->createAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->fontMatrixTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 299
    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->scale(DD)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;-><init>()V

    .line 188
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;)V

    if-nez p3, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;->getFontEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    .line 190
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;->getGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->glyphList:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    .line 191
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;->getType1Font()Lcom/tom_roush/fontbox/type1/Type1Font;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->type1font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 192
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;->getType1Font()Lcom/tom_roush/fontbox/type1/Type1Font;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->isEmbedded:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->isDamaged:Z

    .line 195
    new-instance p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->fontMatrixTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    .line 196
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->codeToBytesMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 120
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;-><init>(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE1:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 123
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BASE_FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    const-string v0, "ZapfDingbats"

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/ZapfDingbatsEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/ZapfDingbatsEncoding;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    goto :goto_0

    :cond_0
    const-string v0, "Symbol"

    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    goto :goto_0

    .line 134
    :cond_1
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    .line 135
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->WIN_ANSI_ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 139
    :goto_0
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->codeToBytesMap:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->type1font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 143
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers;->instance()Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;

    move-result-object p1

    .line 144
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getBaseFont()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v1

    .line 144
    invoke-interface {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;->getFontBoxFont(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;)Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;->getFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 148
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;->isFallback()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 153
    :try_start_0
    invoke-interface {v0}, Lcom/tom_roush/fontbox/FontBoxFont;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "?"

    .line 159
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using fallback font "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " for base font "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getBaseFont()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PdfBox-Android"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->isEmbedded:Z

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->isDamaged:Z

    .line 163
    new-instance p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->fontMatrixTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    return-void
.end method

.method private static findBinaryOffsetAfterExec([BI)I
    .locals 3

    :goto_0
    if-lez p1, :cond_2

    .line 340
    aget-byte v0, p0, p1

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    const/16 v2, 0x78

    if-ne v0, v2, :cond_1

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x4

    .line 347
    :goto_1
    array-length v0, p0

    if-ge p1, v0, :cond_2

    aget-byte v0, p0, p1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method private generateBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontBoundingBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 565
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 566
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 568
    :cond_0
    new-instance v1, Lcom/tom_roush/fontbox/util/BoundingBox;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v2

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v3

    .line 569
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v4

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/tom_roush/fontbox/util/BoundingBox;-><init>(FFFF)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 572
    invoke-interface {v0}, Lcom/tom_roush/fontbox/FontBoxFont;->getFontBBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method private getNameInFont(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/FontBoxFont;->hasGlyph(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->ALT_NAMES:Ljava/util/Map;

    .line 594
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ".notdef"

    if-eqz v0, :cond_1

    .line 595
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    invoke-interface {v2, v0}, Lcom/tom_roush/fontbox/FontBoxFont;->hasGlyph(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 601
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 602
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    .line 604
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/UniUtil;->getUniNameOfCodePoint(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 605
    invoke-interface {v2, v0}, Lcom/tom_roush/fontbox/FontBoxFont;->hasGlyph(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 614
    invoke-interface {v0}, Lcom/tom_roush/fontbox/FontBoxFont;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SymbolMT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 616
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;->getNameToCodeMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 619
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0xf000

    add-int/2addr p1, v0

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/UniUtil;->getUniNameOfCodePoint(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 620
    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/FontBoxFont;->hasGlyph(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    return-object p1
.end method

.method private repairLength1([BI)I
    .locals 2

    add-int/lit8 v0, p2, -0x4

    const/4 v1, 0x0

    .line 313
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 314
    array-length v1, p1

    add-int/lit8 v1, v1, -0x4

    if-le v0, v1, :cond_1

    .line 316
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x4

    .line 319
    :cond_1
    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->findBinaryOffsetAfterExec([BI)I

    move-result v0

    if-nez v0, :cond_2

    if-lez p2, :cond_2

    .line 323
    array-length v0, p1

    add-int/lit8 v0, v0, -0x4

    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->findBinaryOffsetAfterExec([BI)I

    move-result v0

    :cond_2
    sub-int p1, p2, v0

    if-eqz p1, :cond_3

    if-lez v0, :cond_3

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Ignored invalid Length1 "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " for Type 1 font "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PdfBox-Android"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    return p2
.end method

.method private repairLength2([BII)I
    .locals 2

    if-ltz p3, :cond_1

    .line 373
    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_0

    goto :goto_0

    :cond_0
    return p3

    .line 375
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignored invalid Length2 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " for Type 1 font "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "PdfBox-Android"

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    array-length p1, p1

    sub-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public codeToName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getName(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ".notdef"

    .line 579
    :goto_0
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getNameInFont(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected encode(I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->codeToBytesMap:Ljava/util/Map;

    .line 411
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    return-object v0

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->codePointToName(I)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->isStandard14()Z

    move-result v1

    const-string v2, "U+%04X (\'%s\') is not available in the font %s (generic: %s), encoding: %s"

    const-string v3, ".notdef"

    if-eqz v1, :cond_3

    .line 422
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 428
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 430
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "No glyph for U+%04X in the font %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 426
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getEncodingName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "U+%04X (\'%s\') is not available in the font %s, encoding: %s"

    .line 425
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_3
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 443
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getNameInFont(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    invoke-interface {v3, v1}, Lcom/tom_roush/fontbox/FontBoxFont;->hasGlyph(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 452
    :goto_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getNameToCodeMap()Ljava/util/Map;

    move-result-object v1

    .line 453
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_4

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->codeToBytesMap:Ljava/util/Map;

    .line 461
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 456
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 458
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    invoke-interface {v4}, Lcom/tom_roush/fontbox/FontBoxFont;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getEncodingName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {p1, v0, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 457
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 447
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 448
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    invoke-interface {v2}, Lcom/tom_roush/fontbox/FontBoxFont;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "No glyph for U+%04X in the font %s (generic: %s)"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 440
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    invoke-interface {v4}, Lcom/tom_roush/fontbox/FontBoxFont;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getEncodingName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {p1, v0, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 439
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAverageFontWidth()F
    .locals 1

    .line 491
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getStandard14AFM()Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getStandard14AFM()Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/afm/FontMetrics;->getAverageCharacterWidth()F

    move-result v0

    return v0

    .line 497
    :cond_0
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getAverageFontWidth()F

    move-result v0

    return v0
.end method

.method public final getBaseFont()Ljava/lang/String;
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BASE_FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    if-nez v0, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->generateBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    return-object v0
.end method

.method public getFontBoxFont()Lcom/tom_roush/fontbox/FontBoxFont;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    return-object v0
.end method

.method public final getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 10

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 662
    invoke-interface {v0}, Lcom/tom_roush/fontbox/FontBoxFont;->getFontMatrix()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 666
    :catch_0
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->DEFAULT_FONT_MATRIX:Lcom/tom_roush/pdfbox/util/Matrix;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 669
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 671
    new-instance v1, Lcom/tom_roush/pdfbox/util/Matrix;

    const/4 v2, 0x0

    .line 672
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/4 v2, 0x2

    .line 673
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v6

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v7

    const/4 v2, 0x4

    .line 674
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v8

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    goto :goto_1

    .line 678
    :cond_0
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    return-object v0
.end method

.method public getHeight(I)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getStandard14AFM()Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getName(I)Ljava/lang/String;

    move-result-object p1

    .line 395
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getStandard14AFM()Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/afm/FontMetrics;->getCharacterHeight(Ljava/lang/String;)F

    move-result p1

    return p1

    .line 399
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->codeToName(I)Ljava/lang/String;

    move-result-object p1

    .line 402
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 403
    invoke-interface {v1, p1}, Lcom/tom_roush/fontbox/FontBoxFont;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 404
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 547
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getBaseFont()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ".notdef"

    .line 636
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->isEmbedded:Z

    if-nez v0, :cond_0

    .line 638
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 642
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getNameInFont(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/FontBoxFont;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public getType1Font()Lcom/tom_roush/fontbox/type1/Type1Font;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->type1font:Lcom/tom_roush/fontbox/type1/Type1Font;

    return-object v0
.end method

.method public getWidthFromFont(I)F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->codeToName(I)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->isEmbedded:Z

    if-nez v0, :cond_0

    const-string v0, ".notdef"

    .line 471
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, 0x437a0000    # 250.0f

    return p1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 475
    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/FontBoxFont;->getWidth(Ljava/lang/String;)F

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v7, 0x0

    aput p1, v0, v7

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput v1, v0, p1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->fontMatrixTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v0

    move-object v4, v0

    .line 478
    invoke-virtual/range {v1 .. v6}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->transform([FI[FII)V

    aget p1, v0, v7

    return p1
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 649
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getNameInFont(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/FontBoxFont;->hasGlyph(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDamaged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->isDamaged:Z

    return v0
.end method

.method public isEmbedded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->isEmbedded:Z

    return v0
.end method

.method public readCode(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    return p1
.end method

.method protected readEncodingFromFont()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getStandard14AFM()Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getStandard14AFM()Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;-><init>(Lcom/tom_roush/fontbox/afm/FontMetrics;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 518
    instance-of v1, v0, Lcom/tom_roush/fontbox/EncodedFont;

    if-eqz v1, :cond_1

    .line 520
    check-cast v0, Lcom/tom_roush/fontbox/EncodedFont;

    invoke-interface {v0}, Lcom/tom_roush/fontbox/EncodedFont;->getEncoding()Lcom/tom_roush/fontbox/encoding/Encoding;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;->fromFontBox(Lcom/tom_roush/fontbox/encoding/Encoding;)Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;

    move-result-object v0

    return-object v0

    .line 525
    :cond_1
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/StandardEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/StandardEncoding;

    return-object v0
.end method
