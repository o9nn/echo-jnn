.class public Lcom/tom_roush/fontbox/util/autodetect/FontFileFinder;
.super Ljava/lang/Object;
.source "FontFileFinder.java"


# instance fields
.field private fontDirFinder:Lcom/tom_roush/fontbox/util/autodetect/FontDirFinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/util/autodetect/FontFileFinder;->fontDirFinder:Lcom/tom_roush/fontbox/util/autodetect/FontDirFinder;

    return-void
.end method

.method private checkFontfile(Ljava/io/File;)Z
    .locals 1

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".ttf"

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".otf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".pfb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".ttc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "fonts."

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private determineDirFinder()Lcom/tom_roush/fontbox/util/autodetect/FontDirFinder;
    .locals 2

    const-string v0, "java.vendor"

    .line 48
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "The Android Project"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/tom_roush/fontbox/util/autodetect/AndroidFontDirFinder;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/util/autodetect/AndroidFontDirFinder;-><init>()V

    return-object v0

    :cond_0
    const-string v0, "os.name"

    .line 55
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    new-instance v0, Lcom/tom_roush/fontbox/util/autodetect/WindowsFontDirFinder;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/util/autodetect/WindowsFontDirFinder;-><init>()V

    return-object v0

    :cond_1
    const-string v1, "Mac"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    new-instance v0, Lcom/tom_roush/fontbox/util/autodetect/MacFontDirFinder;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/util/autodetect/MacFontDirFinder;-><init>()V

    return-object v0

    :cond_2
    const-string v1, "OS/400"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    new-instance v0, Lcom/tom_roush/fontbox/util/autodetect/OS400FontDirFinder;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/util/autodetect/OS400FontDirFinder;-><init>()V

    return-object v0

    .line 70
    :cond_3
    new-instance v0, Lcom/tom_roush/fontbox/util/autodetect/UnixFontDirFinder;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/util/autodetect/UnixFontDirFinder;-><init>()V

    return-object v0
.end method

.method private walk(Ljava/io/File;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 130
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    aget-object v2, p1, v1

    .line 132
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 139
    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/tom_roush/fontbox/util/autodetect/FontFileFinder;->walk(Ljava/io/File;Ljava/util/List;)V

    goto :goto_1

    .line 143
    :cond_3
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result v3

    const-string v4, "PdfBox-Android"

    if-eqz v3, :cond_4

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "checkFontfile check "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_4
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/util/autodetect/FontFileFinder;->checkFontfile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 149
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "checkFontfile found "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public find()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/util/autodetect/FontFileFinder;->fontDirFinder:Lcom/tom_roush/fontbox/util/autodetect/FontDirFinder;

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/tom_roush/fontbox/util/autodetect/FontFileFinder;->determineDirFinder()Lcom/tom_roush/fontbox/util/autodetect/FontDirFinder;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/fontbox/util/autodetect/FontFileFinder;->fontDirFinder:Lcom/tom_roush/fontbox/util/autodetect/FontDirFinder;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/util/autodetect/FontFileFinder;->fontDirFinder:Lcom/tom_roush/fontbox/util/autodetect/FontDirFinder;

    .line 86
    invoke-interface {v0}, Lcom/tom_roush/fontbox/util/autodetect/FontDirFinder;->find()Ljava/util/List;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 90
    invoke-direct {p0, v2, v1}, Lcom/tom_roush/fontbox/util/autodetect/FontFileFinder;->walk(Ljava/io/File;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public find(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/fontbox/util/autodetect/FontFileFinder;->walk(Ljava/io/File;Ljava/util/List;)V

    :cond_0
    return-object v0
.end method
