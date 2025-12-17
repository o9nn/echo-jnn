.class final Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;
.super Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;
.source "FileSystemFontProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSIgnored;,
        Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;
    }
.end annotation


# instance fields
.field private final cache:Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;

.field private final fontInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;)V
    .locals 4

    const-string v0, "PdfBox-Android"

    .line 327
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;-><init>()V

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->fontInfoList:Ljava/util/List;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->cache:Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;

    .line 331
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->getFontLoadLevel()Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;->NONE:Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    if-ne p1, v1, :cond_0

    return-void

    .line 335
    :cond_0
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->getFontLoadLevel()Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;->MINIMUM:Lcom/tom_roush/pdfbox/android/PDFBoxConfig$FontLoadLevel;

    if-ne p1, v1, :cond_1

    .line 340
    :try_start_0
    new-instance p1, Ljava/io/File;

    const-string v1, "/system/fonts/DroidSans.ttf"

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->addTrueTypeFont(Ljava/io/File;)V

    .line 341
    new-instance p1, Ljava/io/File;

    const-string v1, "/system/fonts/DroidSans-Bold.ttf"

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->addTrueTypeFont(Ljava/io/File;)V

    .line 342
    new-instance p1, Ljava/io/File;

    const-string v1, "/system/fonts/DroidSansMono.ttf"

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->addTrueTypeFont(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 349
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 355
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Will search the local system for fonts"

    .line 357
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_2
    new-instance p1, Lcom/tom_roush/fontbox/util/autodetect/FontFileFinder;

    invoke-direct {p1}, Lcom/tom_roush/fontbox/util/autodetect/FontFileFinder;-><init>()V

    .line 362
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/util/autodetect/FontFileFinder;->find()Ljava/util/List;

    move-result-object p1

    .line 363
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 364
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URI;

    .line 366
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_3
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " fonts on the local system"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 377
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->loadDiskCache(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 378
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->fontInfoList:Ljava/util/List;

    .line 380
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    const-string p1, "Building on-disk font cache, this may take a while"

    .line 384
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->scanFonts(Ljava/util/List;)V

    .line 386
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->saveDiskCache()V

    .line 387
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished building on-disk font cache, found "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->fontInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " fonts"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/AccessControlException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v1, "Error accessing the file system"

    .line 394
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;)Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->cache:Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->addTrueTypeFontImpl(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Ljava/io/File;)V

    return-void
.end method

.method private addTrueTypeCollection(Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Could not load font file: "

    const/4 v1, 0x0

    .line 651
    :try_start_0
    new-instance v2, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;

    invoke-direct {v2, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    :try_start_1
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;-><init>(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;Ljava/io/File;)V

    invoke-virtual {v2, v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->processAllFonts(Lcom/tom_roush/fontbox/ttf/TrueTypeCollection$TrueTypeFontProcessor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 669
    :goto_0
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->close()V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_1
    :try_start_2
    const-string v3, "PdfBox-Android"

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_1

    .line 669
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeCollection;->close()V

    .line 671
    :cond_1
    throw p1
.end method

.method private addTrueTypeFont(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".otf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 683
    new-instance v0, Lcom/tom_roush/fontbox/ttf/OTFParser;

    invoke-direct {v0, v2, v1}, Lcom/tom_roush/fontbox/ttf/OTFParser;-><init>(ZZ)V

    .line 684
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/OTFParser;->parse(Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    move-result-object v0

    .line 685
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->addTrueTypeFontImpl(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Ljava/io/File;)V

    goto :goto_0

    .line 689
    :cond_0
    new-instance v0, Lcom/tom_roush/fontbox/ttf/TTFParser;

    invoke-direct {v0, v2, v1}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>(ZZ)V

    .line 690
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v0

    .line 691
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->addTrueTypeFontImpl(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not load font file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PdfBox-Android"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private addTrueTypeFontImpl(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Ljava/io/File;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    const-string v0, "\' / \'"

    const-string v1, "gcid"

    const-string v12, "PdfBox-Android"

    const-string v2, "Skipping font with \'|\' in name "

    const-string v3, "Missing \'name\' entry for PostScript name in font "

    const-string v11, "Could not load font file: "

    const/4 v10, 0x0

    .line 708
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v14, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->fontInfoList:Ljava/util/List;

    .line 710
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSIgnored;

    sget-object v3, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->TTF:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    const-string v4, "*skippipeinname*"

    invoke-direct {v1, v13, v3, v4, v10}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSIgnored;-><init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v14

    goto/16 :goto_a

    .line 713
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_7

    .line 716
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHeader()Lcom/tom_roush/fontbox/ttf/HeaderTable;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    :try_start_2
    iget-object v0, v14, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->fontInfoList:Ljava/util/List;

    .line 718
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSIgnored;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->TTF:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v13, v2, v3, v10}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSIgnored;-><init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 802
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->close()V

    return-void

    .line 721
    :cond_1
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHeader()Lcom/tom_roush/fontbox/ttf/HeaderTable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getMacStyle()I

    move-result v16

    .line 728
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getOS2Windows()Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;

    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 732
    :try_start_4
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getFamilyClass()I

    move-result v4

    .line 733
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getWeightClass()I

    move-result v5

    .line 734
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getCodePageRange1()J

    move-result-wide v6

    long-to-int v6, v6

    .line 735
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getCodePageRange2()J

    move-result-wide v7

    long-to-int v7, v7

    .line 736
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getPanose()[B

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v17, v2

    move v8, v6

    move v9, v7

    move v7, v4

    move v6, v5

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    move v6, v2

    move v7, v6

    move v8, v3

    move v9, v8

    move-object/from16 v17, v10

    .line 740
    :goto_0
    :try_start_5
    instance-of v2, v15, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_4

    :try_start_6
    move-object v2, v15

    check-cast v2, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->isPostScript()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v18, "OTF"

    .line 743
    move-object v1, v15

    check-cast v1, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->getCFF()Lcom/tom_roush/fontbox/ttf/CFFTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/CFFTable;->getFont()Lcom/tom_roush/fontbox/cff/CFFFont;

    move-result-object v1

    .line 745
    instance-of v2, v1, Lcom/tom_roush/fontbox/cff/CFFCIDFont;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_3

    .line 747
    :try_start_7
    check-cast v1, Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    .line 748
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->getRegistry()Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->getOrdering()Ljava/lang/String;

    move-result-object v3

    .line 750
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->getSupplement()I

    move-result v1

    .line 751
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;

    invoke-direct {v4, v2, v3, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v5, v4

    goto :goto_1

    :cond_3
    move-object v5, v10

    :goto_1
    :try_start_8
    iget-object v4, v14, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->fontInfoList:Ljava/util/List;

    .line 753
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;

    sget-object v19, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->OTF:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getName()Ljava/lang/String;

    move-result-object v20
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/16 v21, 0x0

    move-object v1, v3

    move-object/from16 v2, p2

    move-object/from16 v22, v3

    move-object/from16 v3, v19

    move-object/from16 v23, v4

    move-object/from16 v4, v20

    move/from16 v10, v16

    move-object/from16 v24, v11

    move-object/from16 v11, v17

    move-object/from16 v25, v12

    move-object/from16 v12, p0

    move-object/from16 v13, v21

    :try_start_9
    invoke-direct/range {v1 .. v13}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;-><init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;IIIII[BLcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;)V

    move-object/from16 v2, v22

    move-object/from16 v1, v23

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    :goto_2
    move-object/from16 v7, p2

    move-object v2, v14

    move-object/from16 v1, v25

    goto/16 :goto_8

    :cond_4
    move-object/from16 v24, v11

    move-object/from16 v25, v12

    .line 760
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTableMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v2, :cond_5

    .line 763
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTableMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/ttf/TTFTable;

    invoke-virtual {v15, v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTableBytes(Lcom/tom_roush/fontbox/ttf/TTFTable;)[B

    move-result-object v1

    .line 764
    new-instance v2, Ljava/lang/String;

    sget-object v4, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/16 v5, 0x40

    const/16 v10, 0xa

    invoke-direct {v2, v1, v10, v5, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 765
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 766
    new-instance v4, Ljava/lang/String;

    sget-object v10, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/16 v11, 0x4c

    invoke-direct {v4, v1, v11, v5, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 767
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8c

    .line 768
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8d

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    and-int/2addr v1, v4

    .line 769
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;

    invoke-direct {v4, v2, v3, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object v5, v4

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_3
    :try_start_c
    const-string v18, "TTF"

    iget-object v13, v14, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->fontInfoList:Ljava/util/List;

    .line 773
    new-instance v12, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;

    sget-object v3, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->TTF:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v19, 0x0

    move-object v1, v12

    move-object/from16 v2, p2

    move/from16 v10, v16

    move-object/from16 v11, v17

    move-object v15, v12

    move-object/from16 v12, p0

    move-object v14, v13

    move-object/from16 v13, v19

    invoke-direct/range {v1 .. v13}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;-><init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;IIIII[BLcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    move-object/from16 v1, v18

    .line 778
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 780
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getNaming()Lcom/tom_roush/fontbox/ttf/NamingTable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/NamingTable;->getPostScriptName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 784
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/NamingTable;->getFontFamily()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 785
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/NamingTable;->getFontSubFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object/from16 v1, v25

    .line 783
    :try_start_d
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_6
    :goto_5
    move-object/from16 v2, p0

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v1, v25

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_b

    :catch_4
    move-exception v0

    move-object/from16 v24, v11

    move-object v1, v12

    :goto_6
    move-object/from16 v2, p0

    goto :goto_7

    :cond_7
    move-object/from16 v24, v11

    move-object v1, v12

    move-object v2, v14

    :try_start_e
    iget-object v0, v2, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->fontInfoList:Ljava/util/List;

    .line 791
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSIgnored;

    sget-object v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->TTF:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    const-string v6, "*skipnoname*"
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-object/from16 v7, p2

    const/4 v8, 0x0

    :try_start_f
    invoke-direct {v4, v7, v5, v6, v8}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSIgnored;-><init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    :goto_7
    move-object/from16 v7, p2

    :goto_8
    const/4 v8, 0x0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v14

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v8, v10

    move-object/from16 v24, v11

    move-object v1, v12

    move-object v7, v13

    move-object v2, v14

    :goto_9
    :try_start_10
    iget-object v3, v2, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->fontInfoList:Ljava/util/List;

    .line 797
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSIgnored;

    sget-object v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->TTF:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    const-string v6, "*skipexception*"

    invoke-direct {v4, v7, v5, v6, v8}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSIgnored;-><init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v24

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 802
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->close()V

    return-void

    :catchall_2
    move-exception v0

    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->close()V

    .line 803
    throw v0
.end method

.method private addType1Font(Ljava/io/File;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    const-string v0, "\' / \'"

    const-string v13, "PdfBox-Android"

    const-string v12, "PFB: \'"

    const-string v1, "Skipping font with \'|\' in name "

    const-string v2, "Missing \'name\' entry for PostScript name in font "

    const-string v11, "Could not load font file: "

    .line 811
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 814
    :try_start_0
    invoke-static {v10}, Lcom/tom_roush/fontbox/type1/Type1Font;->createWithPFB(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/type1/Type1Font;

    move-result-object v16

    .line 815
    invoke-virtual/range {v16 .. v16}, Lcom/tom_roush/fontbox/type1/Type1Font;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iget-object v0, v14, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->fontInfoList:Ljava/util/List;

    .line 817
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSIgnored;

    sget-object v3, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->PFB:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    const-string v5, "*skipnoname*"

    invoke-direct {v1, v15, v3, v5, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSIgnored;-><init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    return-void

    .line 821
    :cond_0
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/tom_roush/fontbox/type1/Type1Font;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v14, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->fontInfoList:Ljava/util/List;

    .line 823
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSIgnored;

    sget-object v3, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->PFB:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    const-string v5, "*skippipeinname*"

    invoke-direct {v2, v15, v3, v5, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSIgnored;-><init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/tom_roush/fontbox/type1/Type1Font;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 842
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    return-void

    :cond_1
    :try_start_2
    iget-object v9, v14, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->fontInfoList:Ljava/util/List;

    .line 827
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;

    sget-object v3, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->PFB:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    invoke-virtual/range {v16 .. v16}, Lcom/tom_roush/fontbox/type1/Type1Font;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v22, v8

    move/from16 v8, v17

    move-object/from16 v23, v9

    move/from16 v9, v18

    move-object/from16 v17, v10

    move/from16 v10, v19

    move-object/from16 v24, v11

    move-object/from16 v11, v20

    move-object/from16 v25, v12

    move-object/from16 v12, p0

    move-object v14, v13

    move-object/from16 v13, v21

    :try_start_3
    invoke-direct/range {v1 .. v13}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;-><init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;IIIII[BLcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;)V

    move-object/from16 v2, v22

    move-object/from16 v1, v23

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 832
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/tom_roush/fontbox/type1/Type1Font;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lcom/tom_roush/fontbox/type1/Type1Font;->getFamilyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 833
    invoke-virtual/range {v16 .. v16}, Lcom/tom_roush/fontbox/type1/Type1Font;->getWeight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 832
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v17, v10

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v17, v10

    move-object/from16 v24, v11

    move-object v14, v13

    .line 838
    :goto_0
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 842
    :cond_2
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_1
    move-exception v0

    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 843
    throw v0
.end method

.method private getDiskCacheFile()Ljava/io/File;
    .locals 3

    const-string v0, "pdfbox.fontcache"

    .line 427
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->isBadPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "user.home"

    .line 430
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->isBadPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "java.io.tmpdir"

    .line 433
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, ".pdfbox.cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static isBadPath(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 441
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-nez p0, :cond_0

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

.method private loadDiskCache(Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;",
            ">;"
        }
    .end annotation

    .line 529
    new-instance v0, Ljava/util/HashSet;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 530
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 532
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 535
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 542
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->getDiskCacheFile()Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    const/4 v4, 0x0

    :catch_1
    move v5, v2

    :goto_1
    const-string v6, "PdfBox-Android"

    if-eqz v5, :cond_a

    .line 554
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 556
    :goto_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v7, "\\|"

    const/16 v8, 0xa

    .line 558
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 559
    array-length v9, v7

    if-ge v9, v8, :cond_1

    .line 561
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect line \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\' in font disk cache is skipped"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 576
    :cond_1
    aget-object v10, v7, v2

    const/4 v4, 0x1

    .line 577
    aget-object v9, v7, v4

    invoke-static {v9}, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    move-result-object v9

    const/4 v11, 0x2

    .line 578
    aget-object v12, v7, v11

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 580
    aget-object v12, v7, v11

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 581
    new-instance v13, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;

    aget-object v14, v12, v2

    aget-object v4, v12, v4

    aget-object v11, v12, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v13, v14, v4, v11}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v11, v13

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    :goto_3
    const/4 v4, 0x3

    .line 583
    aget-object v12, v7, v4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, -0x1

    const/16 v14, 0x10

    if-lez v12, :cond_3

    .line 585
    aget-object v4, v7, v4

    invoke-static {v4, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v2, v2

    move v12, v2

    goto :goto_4

    :cond_3
    move v12, v13

    :goto_4
    const/4 v2, 0x4

    .line 587
    aget-object v3, v7, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 589
    aget-object v2, v7, v2

    invoke-static {v2, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_5

    :cond_4
    move v2, v13

    :goto_5
    const/4 v3, 0x5

    .line 591
    aget-object v3, v7, v3

    invoke-static {v3, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x6

    .line 592
    aget-object v4, v7, v4

    move-object/from16 v16, v9

    invoke-static {v4, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    long-to-int v4, v8

    const/4 v8, 0x7

    .line 593
    aget-object v9, v7, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 595
    aget-object v8, v7, v8

    invoke-static {v8, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v17, v8

    goto :goto_6

    :cond_5
    move/from16 v17, v13

    :goto_6
    const/16 v8, 0x8

    .line 597
    aget-object v9, v7, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    const/16 v9, 0xa

    new-array v13, v9, [B

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v9, :cond_6

    .line 602
    aget-object v9, v7, v8

    mul-int/lit8 v8, v15, 0x2

    add-int/lit8 v14, v8, 0x2

    invoke-virtual {v9, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    .line 603
    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 604
    aput-byte v8, v13, v15

    add-int/lit8 v15, v15, 0x1

    move v14, v9

    const/16 v8, 0x8

    const/16 v9, 0xa

    goto :goto_7

    :cond_6
    move-object/from16 v18, v13

    goto :goto_8

    :cond_7
    const/16 v18, 0x0

    .line 607
    :goto_8
    new-instance v15, Ljava/io/File;

    const/16 v8, 0x9

    aget-object v7, v7, v8

    invoke-direct {v15, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 610
    new-instance v14, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;

    const/16 v19, 0x0

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move v13, v2

    move-object v2, v14

    move v14, v3

    move-object v3, v15

    move v15, v4

    move/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, p0

    invoke-direct/range {v7 .. v19}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;-><init>(Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;IIIII[BLcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$1;)V

    .line 613
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_8
    move-object v3, v15

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not found, skipped"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_9
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 629
    :cond_9
    invoke-static {v5}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_a

    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_c

    :catch_3
    move-exception v0

    const/4 v5, 0x0

    :goto_a
    :try_start_4
    const-string v1, "Error loading font cache, will be re-built"

    .line 624
    invoke-static {v6, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 629
    invoke-static {v5}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_b
    const/4 v1, 0x0

    return-object v1

    :catchall_1
    move-exception v0

    move-object v3, v5

    :goto_c
    invoke-static {v3}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 630
    throw v0

    .line 633
    :cond_a
    :goto_d
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "New fonts found, font cache will be re-built"

    .line 636
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_b
    return-object v1
.end method

.method private saveDiskCache()V
    .locals 10

    const-string v0, "PdfBox-Android"

    const-string v1, "|"

    const/4 v2, 0x0

    .line 454
    :try_start_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->getDiskCacheFile()Ljava/io/File;

    move-result-object v3

    .line 455
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->fontInfoList:Ljava/util/List;

    .line 462
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;

    .line 464
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$200(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 466
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$300(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 468
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$400(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$400(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;->getRegistry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 471
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$400(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;->getOrdering()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 472
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$400(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;->getSupplement()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 470
    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 474
    :cond_0
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 475
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$500(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_1

    .line 477
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$500(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 479
    :cond_1
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 480
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$600(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)I

    move-result v5

    if-le v5, v6, :cond_2

    .line 482
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$600(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 484
    :cond_2
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 485
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$700(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 487
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$800(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 489
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$900(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)I

    move-result v5

    if-le v5, v6, :cond_3

    .line 491
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$900(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 493
    :cond_3
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 494
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$1000(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 496
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$1000(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0xa

    if-ge v6, v7, :cond_5

    .line 499
    aget-byte v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 500
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    const/16 v8, 0x30

    .line 502
    invoke-virtual {v4, v8}, Ljava/io/BufferedWriter;->write(I)V

    .line 504
    :cond_4
    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 507
    :cond_5
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 508
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$1100(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 520
    :cond_6
    invoke-static {v4}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_4

    :catch_0
    move-exception v1

    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v1

    :goto_2
    :try_start_2
    const-string v3, "Could not write to font cache"

    .line 514
    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "Installed fonts information will have to be reloaded for each start"

    .line 515
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "You can assign a directory to the \'pdfbox.fontcache\' property"

    .line 516
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 520
    invoke-static {v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_3
    return-void

    :goto_4
    invoke-static {v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 521
    throw v0

    .line 520
    :catch_2
    invoke-static {v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method private scanFonts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 400
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 404
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".ttf"

    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ".otf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, ".ttc"

    .line 409
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ".otc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, ".pfb"

    .line 413
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->addType1Font(Ljava/io/File;)V

    goto :goto_0

    .line 411
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->addTrueTypeCollection(Ljava/io/File;)V

    goto :goto_0

    .line 407
    :cond_4
    :goto_2
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->addTrueTypeFont(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error parsing font "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PdfBox-Android"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public getFontInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->fontInfoList:Ljava/util/List;

    return-object v0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 5

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider;->fontInfoList:Ljava/util/List;

    .line 850
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;

    .line 852
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->getFormat()Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    .line 853
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    invoke-static {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;->access$1100(Lcom/tom_roush/pdfbox/pdmodel/font/FileSystemFontProvider$FSFontInfo;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    .line 857
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 859
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
