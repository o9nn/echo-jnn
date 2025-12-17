.class final Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;
.super Ljava/lang/Object;
.source "Standard14Fonts.java"


# static fields
.field private static final ALIASES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FONTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/fontbox/afm/FontMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 45
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->ALIASES:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->FONTS:Ljava/util/Map;

    const-string v0, "Courier-Bold"

    .line 58
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;)V

    const-string v1, "Courier-BoldOblique"

    .line 59
    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;)V

    const-string v2, "Courier"

    .line 60
    invoke-static {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;)V

    const-string v3, "Courier-Oblique"

    .line 61
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;)V

    const-string v4, "Helvetica"

    .line 62
    invoke-static {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;)V

    const-string v5, "Helvetica-Bold"

    .line 63
    invoke-static {v5}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;)V

    const-string v6, "Helvetica-BoldOblique"

    .line 64
    invoke-static {v6}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;)V

    const-string v7, "Helvetica-Oblique"

    .line 65
    invoke-static {v7}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;)V

    const-string v8, "Symbol"

    .line 66
    invoke-static {v8}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;)V

    const-string v9, "Times-Bold"

    .line 67
    invoke-static {v9}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;)V

    const-string v10, "Times-BoldItalic"

    .line 68
    invoke-static {v10}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;)V

    const-string v11, "Times-Italic"

    .line 69
    invoke-static {v11}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;)V

    const-string v12, "Times-Roman"

    .line 70
    invoke-static {v12}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;)V

    const-string v13, "ZapfDingbats"

    .line 71
    invoke-static {v13}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;)V

    const-string v13, "CourierCourierNew"

    .line 74
    invoke-static {v13, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "CourierNew"

    .line 75
    invoke-static {v13, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CourierNew,Italic"

    .line 76
    invoke-static {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CourierNew,Bold"

    .line 77
    invoke-static {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CourierNew,BoldItalic"

    .line 78
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Arial"

    .line 79
    invoke-static {v0, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Arial,Italic"

    .line 80
    invoke-static {v0, v7}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Arial,Bold"

    .line 81
    invoke-static {v0, v5}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Arial,BoldItalic"

    .line 82
    invoke-static {v0, v6}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TimesNewRoman"

    .line 83
    invoke-static {v0, v12}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TimesNewRoman,Italic"

    .line 84
    invoke-static {v0, v11}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TimesNewRoman,Bold"

    .line 85
    invoke-static {v0, v9}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TimesNewRoman,BoldItalic"

    .line 86
    invoke-static {v0, v10}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Symbol,Italic"

    .line 89
    invoke-static {v0, v8}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Symbol,Bold"

    .line 90
    invoke-static {v0, v8}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Symbol,BoldItalic"

    .line 91
    invoke-static {v0, v8}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Times"

    .line 92
    invoke-static {v0, v12}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Times,Italic"

    .line 93
    invoke-static {v0, v11}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Times,Bold"

    .line 94
    invoke-static {v0, v9}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Times,BoldItalic"

    .line 95
    invoke-static {v0, v10}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ArialMT"

    .line 98
    invoke-static {v0, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Arial-ItalicMT"

    .line 99
    invoke-static {v0, v7}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Arial-BoldMT"

    .line 100
    invoke-static {v0, v5}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Arial-BoldItalicMT"

    .line 101
    invoke-static {v0, v6}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->mapName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsName(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->ALIASES:Ljava/util/Map;

    .line 215
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getAFM(Ljava/lang/String;)Lcom/tom_roush/fontbox/afm/FontMetrics;
    .locals 2

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->ALIASES:Ljava/util/Map;

    .line 180
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->FONTS:Ljava/util/Map;

    .line 186
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 188
    monitor-enter v0

    .line 190
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 194
    :try_start_1
    invoke-static {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->loadMetrics(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 198
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 201
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 204
    :cond_2
    :goto_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/fontbox/afm/FontMetrics;

    return-object p0
.end method

.method public static getMappedFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->ALIASES:Ljava/util/Map;

    .line 234
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->ALIASES:Ljava/util/Map;

    .line 223
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static loadMetrics(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com/tom_roush/pdfbox/resources/afm/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".afm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-static {v0}, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->getStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 125
    :cond_0
    const-class v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 131
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 134
    :try_start_0
    new-instance v1, Lcom/tom_roush/fontbox/afm/AFMParser;

    invoke-direct {v1, v0}, Lcom/tom_roush/fontbox/afm/AFMParser;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v1, v2}, Lcom/tom_roush/fontbox/afm/AFMParser;->parse(Z)Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->FONTS:Ljava/util/Map;

    .line 136
    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 141
    throw p0

    .line 129
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resource \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static mapName(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->ALIASES:Ljava/util/Map;

    .line 154
    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static mapName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->ALIASES:Ljava/util/Map;

    .line 167
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
