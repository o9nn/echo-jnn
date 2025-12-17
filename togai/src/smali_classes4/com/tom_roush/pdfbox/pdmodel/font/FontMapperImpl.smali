.class final Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;
.super Ljava/lang/Object;
.source "FontMapperImpl.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;,
        Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$DefaultFontProvider;
    }
.end annotation


# static fields
.field private static final fontCache:Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;


# instance fields
.field private fontInfoByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fontProvider:Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;

.field private final lastResortFont:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

.field private final substitutes:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->fontCache:Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;

    return-void
.end method

.method constructor <init>()V
    .locals 8

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->substitutes:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "CourierNew"

    const-string v2, "CourierNewPSMT"

    const-string v3, "LiberationMono"

    const-string v4, "NimbusMonL-Regu"

    const-string v5, "DroidSansMono"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "Courier"

    .line 62
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->addSubstitutes(Ljava/lang/String;Ljava/util/List;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "LiberationMono-Bold"

    const-string v2, "NimbusMonL-Bold"

    const-string v3, "CourierNewPS-BoldMT"

    const-string v4, "CourierNew-Bold"

    filled-new-array {v3, v4, v1, v2, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "Courier-Bold"

    .line 65
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->addSubstitutes(Ljava/lang/String;Ljava/util/List;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "LiberationMono-Italic"

    const-string v2, "NimbusMonL-ReguObli"

    const-string v3, "CourierNewPS-ItalicMT"

    const-string v4, "CourierNew-Italic"

    filled-new-array {v3, v4, v1, v2, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "Courier-Oblique"

    .line 68
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->addSubstitutes(Ljava/lang/String;Ljava/util/List;)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "LiberationMono-BoldItalic"

    const-string v2, "NimbusMonL-BoldObli"

    const-string v3, "CourierNewPS-BoldItalicMT"

    const-string v4, "CourierNew-BoldItalic"

    filled-new-array {v3, v4, v1, v2, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "Courier-BoldOblique"

    .line 71
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->addSubstitutes(Ljava/lang/String;Ljava/util/List;)V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "NimbusSanL-Regu"

    const-string v2, "Roboto-Regular"

    const-string v3, "ArialMT"

    const-string v4, "Arial"

    const-string v5, "LiberationSans"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "Helvetica"

    .line 75
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->addSubstitutes(Ljava/lang/String;Ljava/util/List;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "NimbusSanL-Bold"

    const-string v2, "Roboto-Bold"

    const-string v3, "Arial-BoldMT"

    const-string v4, "Arial-Bold"

    const-string v5, "LiberationSans-Bold"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "Helvetica-Bold"

    .line 78
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->addSubstitutes(Ljava/lang/String;Ljava/util/List;)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "Arial-ItalicMT"

    const-string v2, "Arial-Italic"

    const-string v3, "Helvetica-Italic"

    const-string v4, "LiberationSans-Italic"

    const-string v5, "NimbusSanL-ReguItal"

    const-string v6, "Roboto-Italic"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "Helvetica-Oblique"

    .line 81
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->addSubstitutes(Ljava/lang/String;Ljava/util/List;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "NimbusSanL-BoldItal"

    const-string v2, "Roboto-BoldItalic"

    const-string v3, "Arial-BoldItalicMT"

    const-string v4, "Helvetica-BoldItalic"

    const-string v5, "LiberationSans-BoldItalic"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "Helvetica-BoldOblique"

    .line 84
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->addSubstitutes(Ljava/lang/String;Ljava/util/List;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "TimesNewRomanPSMT"

    const-string v2, "TimesNewRoman"

    const-string v3, "TimesNewRomanPS"

    const-string v4, "LiberationSerif"

    const-string v5, "NimbusRomNo9L-Regu"

    const-string v6, "Roboto-Regular"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "Times-Roman"

    .line 87
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->addSubstitutes(Ljava/lang/String;Ljava/util/List;)V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "TimesNewRomanPS-BoldMT"

    const-string v2, "TimesNewRomanPS-Bold"

    const-string v3, "TimesNewRoman-Bold"

    const-string v4, "LiberationSerif-Bold"

    const-string v5, "NimbusRomNo9L-Medi"

    const-string v6, "DroidSerif-Bold"

    const-string v7, "Roboto-Bold"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "Times-Bold"

    .line 90
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->addSubstitutes(Ljava/lang/String;Ljava/util/List;)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "TimesNewRomanPS-ItalicMT"

    const-string v2, "TimesNewRomanPS-Italic"

    const-string v3, "TimesNewRoman-Italic"

    const-string v4, "LiberationSerif-Italic"

    const-string v5, "NimbusRomNo9L-ReguItal"

    const-string v6, "DroidSerif-Italic"

    const-string v7, "Roboto-Italic"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "Times-Italic"

    .line 94
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->addSubstitutes(Ljava/lang/String;Ljava/util/List;)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "TimesNewRomanPS-BoldItalicMT"

    const-string v2, "TimesNewRomanPS-BoldItalic"

    const-string v3, "TimesNewRoman-BoldItalic"

    const-string v4, "LiberationSerif-BoldItalic"

    const-string v5, "NimbusRomNo9L-MediItal"

    const-string v6, "DroidSerif-BoldItalic"

    const-string v7, "Roboto-BoldItalic"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "Times-BoldItalic"

    .line 98
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->addSubstitutes(Ljava/lang/String;Ljava/util/List;)V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "SymbolMT"

    const-string v2, "StandardSymL"

    const-string v3, "Symbol"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    invoke-direct {p0, v3, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->addSubstitutes(Ljava/lang/String;Ljava/util/List;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "Dingbats"

    const-string v2, "MS-Gothic"

    const-string v3, "ZapfDingbatsITCbyBT-Regular"

    const-string v4, "ZapfDingbatsITC"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "ZapfDingbats"

    .line 104
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->addSubstitutes(Ljava/lang/String;Ljava/util/List;)V

    .line 111
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->getNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->getSubstitutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->getMappedFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->copySubstitutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->addSubstitutes(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, "com/tom_roush/pdfbox/resources/ttf/LiberationSans-Regular.ttf"

    .line 126
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    invoke-static {v0}, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->getStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1

    .line 132
    :cond_2
    const-class v1, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    .line 138
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 139
    new-instance v1, Lcom/tom_roush/fontbox/ttf/TTFParser;

    invoke-direct {v1}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>()V

    .line 140
    invoke-virtual {v1, v0}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->lastResortFont:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    return-void

    .line 136
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 144
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000()Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->fontCache:Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;

    return-object v0
.end method

.method private addSubstitutes(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->substitutes:Ljava/util/Map;

    .line 239
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private copySubstitutes(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->substitutes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private createFontInfoByName(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 187
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;

    .line 189
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->getPostScriptNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 191
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private findFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;)Lcom/tom_roush/fontbox/FontBoxFont;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->fontProvider:Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;

    if-nez v1, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->getProvider()Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;

    .line 444
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->getFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 447
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, ""

    const-string v2, "-"

    .line 451
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->getFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 454
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object p1

    return-object p1

    .line 458
    :cond_3
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->getSubstitutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 460
    invoke-direct {p0, p1, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->getFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 463
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v1, ","

    .line 468
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->getFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 471
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object p1

    return-object p1

    .line 475
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "-Regular"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->getFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 478
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v0
.end method

.method private findFontBoxFont(Ljava/lang/String;)Lcom/tom_roush/fontbox/FontBoxFont;
    .locals 1

    .line 403
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->PFB:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->findFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;)Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/type1/Type1Font;

    if-eqz v0, :cond_0

    return-object v0

    .line 409
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->TTF:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->findFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;)Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    if-eqz v0, :cond_1

    return-object v0

    .line 415
    :cond_1
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->OTF:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->findFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;)Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFallbackFontName(Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;)Ljava/lang/String;
    .locals 4

    const-string v0, "Times-Roman"

    if-eqz p1, :cond_c

    .line 268
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "bold"

    .line 272
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "black"

    .line 273
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "heavy"

    .line 274
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    .line 278
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isFixedPitch()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v2, :cond_2

    .line 281
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Courier-BoldOblique"

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const-string p1, "Courier-Bold"

    goto :goto_0

    .line 289
    :cond_3
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isItalic()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Courier-Oblique"

    goto :goto_0

    :cond_4
    const-string p1, "Courier"

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 294
    :cond_5
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isSerif()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v2, :cond_6

    .line 297
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isItalic()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "Times-BoldItalic"

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    const-string p1, "Times-Bold"

    goto :goto_0

    .line 305
    :cond_7
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isItalic()Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "Times-Italic"

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_9

    .line 317
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "Helvetica-BoldOblique"

    goto :goto_0

    :cond_9
    if-eqz v2, :cond_a

    const-string p1, "Helvetica-Bold"

    goto :goto_0

    .line 325
    :cond_a
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isItalic()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "Helvetica-Oblique"

    goto :goto_0

    :cond_b
    const-string p1, "Helvetica"

    goto :goto_0

    :cond_c
    :goto_1
    return-object v0
.end method

.method private getFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;
    .locals 2

    const-string v0, "+"

    .line 490
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    .line 492
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->fontInfoByName:Ljava/util/Map;

    .line 496
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;

    if-eqz v0, :cond_2

    .line 497
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getFormat()Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 499
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "getFont(\'%s\',\'%s\') returns %s"

    .line 501
    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PdfBox-Android"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFontMatches(Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;)Ljava/util/PriorityQueue;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;",
            "Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;",
            ")",
            "Ljava/util/PriorityQueue<",
            "Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 580
    new-instance v2, Ljava/util/PriorityQueue;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/PriorityQueue;-><init>(I)V

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->fontInfoByName:Ljava/util/Map;

    .line 582
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;

    if-eqz v1, :cond_0

    .line 585
    invoke-direct {v0, v1, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->isCharSetMatch(Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    new-instance v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;

    invoke-direct {v5, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;-><init>(Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;)V

    .line 593
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanose;

    move-result-object v6

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-eqz v6, :cond_9

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 595
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanose;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanose;->getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    move-result-object v6

    .line 596
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getFamilyKind()I

    move-result v11

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getFamilyKind()I

    move-result v12

    if-ne v11, v12, :cond_a

    .line 598
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getFamilyKind()I

    move-result v11

    if-nez v11, :cond_2

    .line 599
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "barcode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 600
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Code"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 601
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->probablyBarcodeFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_0

    .line 607
    :cond_2
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getSerifStyle()I

    move-result v11

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getSerifStyle()I

    move-result v12

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    const/4 v15, 0x2

    if-ne v11, v12, :cond_3

    .line 610
    iget-wide v11, v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    add-double/2addr v11, v13

    iput-wide v11, v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    goto :goto_1

    .line 612
    :cond_3
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getSerifStyle()I

    move-result v11

    if-lt v11, v15, :cond_4

    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getSerifStyle()I

    move-result v11

    const/4 v12, 0x5

    if-gt v11, v12, :cond_4

    .line 613
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getSerifStyle()I

    move-result v11

    if-lt v11, v15, :cond_4

    .line 614
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getSerifStyle()I

    move-result v11

    if-gt v11, v12, :cond_4

    .line 617
    iget-wide v11, v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    add-double/2addr v11, v9

    iput-wide v11, v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    goto :goto_1

    .line 619
    :cond_4
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getSerifStyle()I

    move-result v11

    const/16 v12, 0xb

    if-lt v11, v12, :cond_5

    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getSerifStyle()I

    move-result v11

    const/16 v7, 0xd

    if-gt v11, v7, :cond_5

    .line 620
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getSerifStyle()I

    move-result v8

    if-lt v8, v12, :cond_5

    .line 621
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getSerifStyle()I

    move-result v8

    if-gt v8, v7, :cond_5

    .line 624
    iget-wide v7, v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    add-double/2addr v7, v9

    iput-wide v7, v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    goto :goto_1

    .line 626
    :cond_5
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getSerifStyle()I

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getSerifStyle()I

    move-result v7

    if-eqz v7, :cond_6

    .line 629
    iget-wide v7, v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    sub-double/2addr v7, v9

    iput-wide v7, v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    .line 633
    :cond_6
    :goto_1
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getWeight()I

    move-result v7

    .line 634
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getWeightClassAsPanose()I

    move-result v4

    sub-int v8, v7, v4

    .line 635
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v15, :cond_7

    move v7, v4

    .line 641
    :cond_7
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getWeight()I

    move-result v4

    if-ne v4, v7, :cond_8

    .line 644
    iget-wide v6, v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    add-double/2addr v6, v13

    iput-wide v6, v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    goto :goto_2

    .line 646
    :cond_8
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getWeight()I

    move-result v4

    const/4 v8, 0x1

    if-le v4, v8, :cond_a

    if-le v7, v8, :cond_a

    .line 648
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getWeight()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    .line 649
    iget-wide v6, v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    float-to-double v11, v4

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    add-double/2addr v6, v9

    iput-wide v6, v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    goto :goto_2

    .line 656
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontWeight()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_a

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getWeightClass()I

    move-result v6

    if-lez v6, :cond_a

    .line 659
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontWeight()F

    move-result v6

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getWeightClass()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 660
    iget-wide v6, v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v4, v8

    float-to-double v11, v4

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    add-double/2addr v6, v9

    iput-wide v6, v5, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    .line 665
    :cond_a
    :goto_2
    invoke-virtual {v2, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    return-object v2
.end method

.method private getPostScriptNames(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 205
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "-"

    const-string v2, ""

    .line 208
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getSubstitutes(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->substitutes:Ljava/util/Map;

    const-string v1, " "

    const-string v2, ""

    .line 247
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    return-object p1

    .line 254
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private isCharSetMatch(Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;)Z
    .locals 9

    .line 692
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getCIDSystemInfo()Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 694
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getCIDSystemInfo()Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;->getRegistry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;->getRegistry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getCIDSystemInfo()Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;->getOrdering()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;->getOrdering()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 699
    :cond_1
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getCodePageRange()J

    move-result-wide v3

    const-string v0, "MalgunGothic-Semilight"

    .line 707
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-wide/32 v5, -0x160001

    and-long/2addr v3, v5

    .line 712
    :cond_2
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;->getOrdering()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GB1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-wide/32 v5, 0x40000

    and-long v7, v3, v5

    cmp-long p2, v7, v5

    if-nez p2, :cond_3

    return v2

    .line 717
    :cond_3
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;->getOrdering()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CNS1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-wide/32 v5, 0x100000

    and-long v7, v3, v5

    cmp-long p2, v7, v5

    if-nez p2, :cond_4

    return v2

    .line 722
    :cond_4
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;->getOrdering()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Japan1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-wide/32 v5, 0x20000

    and-long v7, v3, v5

    cmp-long p2, v7, v5

    if-nez p2, :cond_5

    return v2

    .line 729
    :cond_5
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;->getOrdering()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Korea1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-wide/32 p1, 0x80000

    and-long v5, v3, p1

    cmp-long p1, v5, p1

    if-eqz p1, :cond_6

    const-wide/32 p1, 0x200000

    and-long/2addr v3, p1

    cmp-long p1, v3, p1

    if-nez p1, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    return v1
.end method

.method private printMatches(Ljava/util/PriorityQueue;)Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;",
            ">;)",
            "Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;"
        }
    .end annotation

    .line 761
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;

    .line 762
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "-------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 763
    :goto_0
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 765
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;

    .line 766
    iget-object v3, v1, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->info:Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;

    .line 767
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v1, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->score:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " | "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getMacStyle()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 768
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getFamilyClass()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 769
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getCIDSystemInfo()Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 770
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getFormat()Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 767
    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 772
    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0
.end method

.method private probablyBarcodeFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;)Z
    .locals 3

    .line 672
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 677
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    const-string p1, "Code"

    .line 682
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "barcode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 683
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method


# virtual methods
.method public addSubstitute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 229
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->substitutes:Ljava/util/Map;

    .line 230
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->substitutes:Ljava/util/Map;

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->substitutes:Ljava/util/Map;

    .line 234
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCIDFont(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;)Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;
    .locals 4

    .line 520
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->OTF:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->findFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;)Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 523
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;

    invoke-direct {p1, v0, v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;-><init>(Lcom/tom_roush/fontbox/ttf/OpenTypeFont;Lcom/tom_roush/fontbox/FontBoxFont;Z)V

    return-object p1

    .line 527
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->TTF:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->findFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;)Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    if-eqz v0, :cond_1

    .line 530
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;

    invoke-direct {p1, v2, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;-><init>(Lcom/tom_roush/fontbox/ttf/OpenTypeFont;Lcom/tom_roush/fontbox/FontBoxFont;Z)V

    return-object p1

    :cond_1
    const/4 v0, 0x1

    if-eqz p3, :cond_5

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;->getRegistry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;->getOrdering()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Adobe-GB1"

    .line 541
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Adobe-CNS1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Adobe-Japan1"

    .line 542
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Adobe-Korea1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 545
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->getFontMatches(Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;)Ljava/util/PriorityQueue;

    move-result-object p2

    .line 546
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;

    if-eqz p2, :cond_5

    .line 549
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 551
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Best match for \'"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\': "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p2, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->info:Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "PdfBox-Android"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_3
    iget-object p1, p2, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$FontMatch;->info:Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object p1

    .line 554
    instance-of p2, p1, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    if-eqz p2, :cond_4

    .line 556
    new-instance p2, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;

    check-cast p1, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    invoke-direct {p2, p1, v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;-><init>(Lcom/tom_roush/fontbox/ttf/OpenTypeFont;Lcom/tom_roush/fontbox/FontBoxFont;Z)V

    return-object p2

    :cond_4
    if-eqz p1, :cond_5

    .line 560
    new-instance p2, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;

    invoke-direct {p2, v2, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;-><init>(Lcom/tom_roush/fontbox/ttf/OpenTypeFont;Lcom/tom_roush/fontbox/FontBoxFont;Z)V

    return-object p2

    .line 567
    :cond_5
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->lastResortFont:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-direct {p1, v2, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;-><init>(Lcom/tom_roush/fontbox/ttf/OpenTypeFont;Lcom/tom_roush/fontbox/FontBoxFont;Z)V

    return-object p1
.end method

.method public getFontBoxFont(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;)Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;",
            ")",
            "Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping<",
            "Lcom/tom_roush/fontbox/FontBoxFont;",
            ">;"
        }
    .end annotation

    .line 377
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->findFontBoxFont(Ljava/lang/String;)Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 380
    new-instance p2, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;-><init>(Lcom/tom_roush/fontbox/FontBoxFont;Z)V

    return-object p2

    .line 385
    :cond_0
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->getFallbackFontName(Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;)Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->findFontBoxFont(Ljava/lang/String;)Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->lastResortFont:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 392
    :cond_1
    new-instance p2, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;-><init>(Lcom/tom_roush/fontbox/FontBoxFont;Z)V

    return-object p2
.end method

.method public getFontCache()Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->fontCache:Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;

    return-object v0
.end method

.method public declared-synchronized getProvider()Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->fontProvider:Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl$DefaultFontProvider;->access$100()Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->setProvider(Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;)V

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->fontProvider:Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTrueTypeFont(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;)Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;",
            ")",
            "Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping<",
            "Lcom/tom_roush/fontbox/ttf/TrueTypeFont;",
            ">;"
        }
    .end annotation

    .line 348
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->TTF:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->findFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;)Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    if-eqz p1, :cond_0

    .line 351
    new-instance p2, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;-><init>(Lcom/tom_roush/fontbox/FontBoxFont;Z)V

    return-object p2

    .line 356
    :cond_0
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->getFallbackFontName(Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;)Ljava/lang/String;

    move-result-object p1

    .line 357
    sget-object p2, Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;->TTF:Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    invoke-direct {p0, p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->findFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;Ljava/lang/String;)Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->lastResortFont:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 363
    :cond_1
    new-instance p2, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;-><init>(Lcom/tom_roush/fontbox/FontBoxFont;Z)V

    return-object p2
.end method

.method public declared-synchronized setProvider(Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;)V
    .locals 1

    monitor-enter p0

    .line 159
    :try_start_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;->getFontInfo()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->createFontInfoByName(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->fontInfoByName:Ljava/util/Map;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapperImpl;->fontProvider:Lcom/tom_roush/pdfbox/pdmodel/font/FontProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
