.class Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;
.super Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;
.source "FileSystemFontProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FSFontInfo"
.end annotation


# instance fields
.field private final cidSystemInfo:Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;

.field private final file:Ljava/io/File;

.field private final format:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

.field private final macStyle:I

.field private final panose:Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

.field private final parent:Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;

.field private final postScriptName:Ljava/lang/String;

.field private final sFamilyClass:I

.field private final ulCodePageRange1:I

.field private final ulCodePageRange2:I

.field private final usWeightClass:I


# direct methods
.method private constructor <init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;IIIII[BLcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->file:Ljava/io/File;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->format:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->postScriptName:Ljava/lang/String;

    iput-object p4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->cidSystemInfo:Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;

    iput p5, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->usWeightClass:I

    iput p6, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->sFamilyClass:I

    iput p7, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->ulCodePageRange1:I

    iput p8, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->ulCodePageRange2:I

    iput p9, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->macStyle:I

    if-eqz p10, :cond_0

    .line 91
    array-length p1, p10

    const/16 p2, 0xa

    if-lt p1, p2, :cond_0

    .line 92
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    invoke-direct {p1, p10}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->panose:Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    iput-object p11, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->parent:Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;IIIII[BLcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;)V
    .locals 0

    .line 63
    invoke-direct/range {p0 .. p11}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;-><init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;IIIII[BLcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->panose:Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)Ljava/io/File;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->file:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->postScriptName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->format:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->cidSystemInfo:Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->usWeightClass:I

    return p0
.end method

.method static synthetic access$600(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->sFamilyClass:I

    return p0
.end method

.method static synthetic access$700(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->ulCodePageRange1:I

    return p0
.end method

.method static synthetic access$800(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->ulCodePageRange2:I

    return p0
.end method

.method static synthetic access$900(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->macStyle:I

    return p0
.end method

.method private getOTFFont(Ljava/lang/String;Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/OpenTypeFont;
    .locals 6

    const-string v0, "PdfBox-Android"

    const-string v1, "Font "

    const-string v2, "Loaded "

    const/4 v3, 0x0

    .line 245
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".ttc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 250
    new-instance v2, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;

    invoke-direct {v2, p2}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->getFontByName(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_0

    .line 267
    :try_start_2
    check-cast v4, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    return-object v4

    .line 264
    :cond_0
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->close()V

    .line 265
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not found in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception p1

    .line 258
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->close()V

    return-object v3

    .line 270
    :cond_1
    new-instance v1, Lcom/tom_roush/fontbox/ttf/OTFParser;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Lcom/tom_roush/fontbox/ttf/OTFParser;-><init>(ZZ)V

    .line 271
    invoke-virtual {v1, p2}, Lcom/tom_roush/fontbox/ttf/OTFParser;->parse(Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    move-result-object v1

    .line 273
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " from "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    return-object v1

    :catch_1
    move-exception p1

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not load font file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method private getTrueTypeFont(Ljava/lang/String;Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 4

    const-string v0, "PdfBox-Android"

    const-string v1, "Loaded "

    .line 194
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->readTrueTypeFont(Ljava/lang/String;Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v2

    .line 196
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v2

    :catch_0
    move-exception p1

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not load font file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private getType1Font(Ljava/lang/String;Ljava/io/File;)Lcom/tom_roush/fontbox/type1/Type1Font;
    .locals 7

    const-string v0, "PdfBox-Android"

    const-string v1, "Loaded "

    const-string v2, "Could not load font file: "

    const/4 v3, 0x0

    .line 291
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 292
    :try_start_1
    invoke-static {v4}, Lcom/tom_roush/fontbox/type1/Type1Font;->createWithPFB(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/type1/Type1Font;

    move-result-object v5

    .line 294
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :cond_0
    invoke-static {v4}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v5

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v4, v3

    .line 302
    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    invoke-static {v4}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3

    :goto_1
    invoke-static {v3}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 307
    throw p1
.end method

.method private readTrueTypeFont(Ljava/lang/String;Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ttc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    new-instance v0, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;

    invoke-direct {v0, p2}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;-><init>(Ljava/io/File;)V

    .line 220
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->getFontByName(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    .line 229
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->close()V

    .line 230
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Font "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not found in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p1

    .line 224
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->close()V

    .line 225
    throw p1

    .line 236
    :cond_1
    new-instance p1, Lcom/tom_roush/fontbox/ttf/TTFParser;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>(ZZ)V

    .line 237
    invoke-virtual {p1, p2}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCIDSystemInfo()Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->cidSystemInfo:Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;

    return-object v0
.end method

.method public getCodePageRange1()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->ulCodePageRange1:I

    return v0
.end method

.method public getCodePageRange2()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->ulCodePageRange2:I

    return v0
.end method

.method public getFamilyClass()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->sFamilyClass:I

    return v0
.end method

.method public declared-synchronized getFont()Lcom/tom_roush/fontbox/FontBoxFont;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->parent:Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;

    .line 125
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->access$000(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;)Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;->getFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;)Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 128
    monitor-exit p0

    return-object v0

    .line 133
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$2;->$SwitchMap$com$tom_roush$pdfbox$pdmodel$font$FontFormat:[I

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->format:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->postScriptName:Ljava/lang/String;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->file:Ljava/io/File;

    .line 137
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->getOTFFont(Ljava/lang/String;Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->postScriptName:Ljava/lang/String;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->file:Ljava/io/File;

    .line 136
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->getTrueTypeFont(Ljava/lang/String;Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->postScriptName:Ljava/lang/String;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->file:Ljava/io/File;

    .line 135
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->getType1Font(Ljava/lang/String;Ljava/io/File;)Lcom/tom_roush/fontbox/type1/Type1Font;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->parent:Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;

    .line 142
    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->access$000(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;)Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;->addFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;Lcom/tom_roush/fontbox/FontBoxFont;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFormat()Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->format:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    return-object v0
.end method

.method public getMacStyle()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->macStyle:I

    return v0
.end method

.method public getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->panose:Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    return-object v0
.end method

.method public getPostScriptName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->postScriptName:Ljava/lang/String;

    return-object v0
.end method

.method public getWeightClass()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->usWeightClass:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
