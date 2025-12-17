.class public final Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;
.super Ljava/lang/Object;
.source "GlyphList.java"


# static fields
.field private static final DEFAULT:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

.field private static final ZAPF_DINGBATS:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;


# instance fields
.field private final nameToUnicode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uniNameToUnicodeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final unicodeToName:Ljava/util/Map;
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
    .locals 2

    const-string v0, "glyphlist.txt"

    const/16 v1, 0x10b9

    .line 39
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->load(Ljava/lang/String;I)Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->DEFAULT:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    const-string v0, "zapfdingbats.txt"

    const/16 v1, 0xc9

    .line 42
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->load(Ljava/lang/String;I)Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->ZAPF_DINGBATS:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    :try_start_0
    const-string v0, "glyphlist_ext"

    .line 82
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "glyphlist_ext is no longer supported, use GlyphList.DEFAULT.addGlyphs(Properties) instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->uniNameToUnicodeCache:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->nameToUnicode:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->nameToUnicode:Ljava/util/Map;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->unicodeToName:Ljava/util/Map;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->unicodeToName:Ljava/util/Map;

    .line 143
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->loadList(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->uniNameToUnicodeCache:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->nameToUnicode:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->unicodeToName:Ljava/util/Map;

    .line 129
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->loadList(Ljava/io/InputStream;)V

    return-void
.end method

.method public static getAdobeGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->DEFAULT:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    return-object v0
.end method

.method public static getZapfDingbats()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->ZAPF_DINGBATS:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    return-object v0
.end method

.method private static load(Ljava/lang/String;I)Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;
    .locals 5

    const-string v0, "GlyphList \'"

    const-string v1, "/"

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com/tom_roush/pdfbox/resources/glyphlist/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 53
    :try_start_0
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    invoke-static {p0}, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->getStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_0
    const-class v3, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_1

    .line 65
    new-instance p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    invoke-direct {p0, v2, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-static {v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    .line 63
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\' not found"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 69
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    :goto_2
    invoke-static {v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 74
    throw p0
.end method

.method private loadList(Ljava/io/InputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, " "

    .line 148
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "ISO-8859-1"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 151
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->ready()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 153
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "#"

    .line 154
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ";"

    .line 156
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 157
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_6

    const/4 p1, 0x0

    .line 162
    aget-object v3, v2, p1

    const/4 v4, 0x1

    .line 163
    aget-object v5, v2, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->nameToUnicode:Ljava/util/Map;

    .line 165
    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "PdfBox-Android"

    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "duplicate value for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v2, v2, v4

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->nameToUnicode:Ljava/util/Map;

    .line 168
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    array-length v2, v5

    new-array v6, v2, [I

    .line 173
    array-length v7, v5

    move v8, p1

    move v9, v8

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v10, v5, v8

    add-int/lit8 v11, v9, 0x1

    const/16 v12, 0x10

    .line 175
    invoke-static {v10, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    aput v10, v6, v9

    add-int/lit8 v8, v8, 0x1

    move v9, v11

    goto :goto_1

    .line 177
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6, p1, v2}, Ljava/lang/String;-><init>([III)V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->nameToUnicode:Ljava/util/Map;

    .line 180
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;

    .line 186
    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacRomanEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacRomanEncoding;

    .line 187
    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacRomanEncoding;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacExpertEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacExpertEncoding;

    .line 188
    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacExpertEncoding;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;

    .line 189
    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/SymbolEncoding;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/ZapfDingbatsEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/ZapfDingbatsEncoding;

    .line 190
    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/ZapfDingbatsEncoding;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move p1, v4

    :cond_4
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->unicodeToName:Ljava/util/Map;

    .line 191
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p1, :cond_0

    :cond_5
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->unicodeToName:Ljava/util/Map;

    .line 193
    invoke-interface {p1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 159
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid glyph list entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 201
    throw p1
.end method


# virtual methods
.method public codePointToName(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->unicodeToName:Ljava/util/Map;

    .line 212
    new-instance v1, Ljava/lang/String;

    filled-new-array {p1}, [I

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Ljava/lang/String;-><init>([III)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ".notdef"

    :cond_0
    return-object p1
.end method

.method public sequenceToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->unicodeToName:Ljava/util/Map;

    .line 228
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ".notdef"

    :cond_0
    return-object p1
.end method

.method public toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->nameToUnicode:Ljava/util/Map;

    .line 249
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->uniNameToUnicodeCache:Ljava/util/Map;

    .line 256
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_8

    const/16 v1, 0x2e

    .line 260
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    const-string v1, "uni"

    .line 264
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const v2, 0xe000

    const v3, 0xd7ff

    const-string v4, "Not a number in Unicode character name: "

    const/16 v5, 0x10

    const-string v6, "PdfBox-Android"

    const-string v7, "Unicode character name with disallowed code area: "

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v8, 0x7

    if-ne v1, v8, :cond_5

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 268
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x3

    :goto_0
    add-int/lit8 v10, v9, 0x4

    if-gt v10, v1, :cond_4

    .line 273
    :try_start_0
    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    if-le v9, v3, :cond_3

    if-ge v9, v2, :cond_3

    .line 276
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    int-to-char v9, v9

    .line 280
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v9, v10

    goto :goto_0

    .line 283
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 287
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string v1, "u"

    .line 290
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v8, 0x5

    if-ne v1, v8, :cond_7

    const/4 v1, 0x1

    .line 295
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v3, :cond_6

    if-ge v1, v2, :cond_6

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    int-to-char v1, v1

    .line 302
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 307
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->uniNameToUnicodeCache:Ljava/util/Map;

    .line 313
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v0
.end method
