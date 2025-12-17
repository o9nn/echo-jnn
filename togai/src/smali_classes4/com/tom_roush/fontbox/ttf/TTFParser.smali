.class public Lcom/tom_roush/fontbox/ttf/TTFParser;
.super Ljava/lang/Object;
.source "TTFParser.java"


# instance fields
.field private isEmbedded:Z

.field private parseOnDemandOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/tom_roush/fontbox/ttf/TTFParser;->isEmbedded:Z

    iput-boolean p2, p0, Lcom/tom_roush/fontbox/ttf/TTFParser;->parseOnDemandOnly:Z

    return-void
.end method

.method private parseTables(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTables()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/ttf/TTFTable;

    .line 184
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/TTFTable;->getInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    invoke-virtual {p1, v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->readTable(Lcom/tom_roush/fontbox/ttf/TTFTable;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p1, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->tables:Ljava/util/Map;

    const-string v1, "CFF "

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 191
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TTFParser;->allowCFF()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 193
    :goto_1
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHeader()Lcom/tom_roush/fontbox/ttf/HeaderTable;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 199
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHorizontalHeader()Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 205
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getMaximumProfile()Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 211
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getPostScript()Lcom/tom_roush/fontbox/ttf/PostScriptTable;

    move-result-object v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/tom_roush/fontbox/ttf/TTFParser;->isEmbedded:Z

    if-eqz v2, :cond_3

    goto :goto_2

    .line 215
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "\'post\' table is mandatory"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    if-nez v1, :cond_8

    if-eqz v0, :cond_5

    const-string v0, "; this an OpenType CFF font, but we expected a TrueType font here"

    goto :goto_3

    :cond_5
    const-string v0, ""

    .line 225
    :goto_3
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getIndexToLocation()Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 231
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getGlyph()Lcom/tom_roush/fontbox/ttf/GlyphTable;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_4

    .line 233
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v1, "\'glyf\' table is mandatory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v1, "\'loca\' table is mandatory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 237
    :cond_8
    :goto_4
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getNaming()Lcom/tom_roush/fontbox/ttf/NamingTable;

    move-result-object v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/TTFParser;->isEmbedded:Z

    if-eqz v0, :cond_9

    goto :goto_5

    .line 239
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "\'name\' table is mandatory"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_a
    :goto_5
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHorizontalMetrics()Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/TTFParser;->isEmbedded:Z

    if-nez v0, :cond_c

    .line 247
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getCmap()Lcom/tom_roush/fontbox/ttf/CmapTable;

    move-result-object p1

    if-eqz p1, :cond_b

    goto :goto_6

    .line 249
    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "\'cmap\' table is mandatory"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_6
    return-void

    .line 244
    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "\'hmtx\' table is mandatory"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_e
    new-instance p1, Ljava/io/IOException;

    const-string v0, "\'maxp\' table is mandatory"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string v0, "\'hhea\' table is mandatory"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :cond_10
    new-instance p1, Ljava/io/IOException;

    const-string v0, "\'head\' table is mandatory"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readTableDirectory(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/TTFTable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 261
    invoke-virtual {p2, v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmap"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "glyf"

    if-eqz v1, :cond_0

    .line 264
    new-instance v1, Lcom/tom_roush/fontbox/ttf/CmapTable;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/ttf/CmapTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto/16 :goto_0

    .line 266
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    new-instance v1, Lcom/tom_roush/fontbox/ttf/GlyphTable;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/ttf/GlyphTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "head"

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    new-instance v1, Lcom/tom_roush/fontbox/ttf/HeaderTable;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/ttf/HeaderTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "hhea"

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 276
    new-instance v1, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "hmtx"

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 280
    new-instance v1, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "loca"

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 284
    new-instance v1, Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "maxp"

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 288
    new-instance v1, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "name"

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 292
    new-instance v1, Lcom/tom_roush/fontbox/ttf/NamingTable;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/ttf/NamingTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "OS/2"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 296
    new-instance v1, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto :goto_0

    :cond_8
    const-string v1, "post"

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 300
    new-instance v1, Lcom/tom_roush/fontbox/ttf/PostScriptTable;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/ttf/PostScriptTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto :goto_0

    :cond_9
    const-string v1, "DSIG"

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 304
    new-instance v1, Lcom/tom_roush/fontbox/ttf/DigitalSignatureTable;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/ttf/DigitalSignatureTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto :goto_0

    :cond_a
    const-string v1, "kern"

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 308
    new-instance v1, Lcom/tom_roush/fontbox/ttf/KerningTable;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/ttf/KerningTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto :goto_0

    :cond_b
    const-string v1, "vhea"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 312
    new-instance v1, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto :goto_0

    :cond_c
    const-string v1, "vmtx"

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 316
    new-instance v1, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto :goto_0

    :cond_d
    const-string v1, "VORG"

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 320
    new-instance v1, Lcom/tom_roush/fontbox/ttf/VerticalOriginTable;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/ttf/VerticalOriginTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto :goto_0

    :cond_e
    const-string v1, "GSUB"

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 324
    new-instance v1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto :goto_0

    .line 328
    :cond_f
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/fontbox/ttf/TTFParser;->readTable(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v1

    .line 330
    :goto_0
    invoke-virtual {v1, v0}, Lcom/tom_roush/fontbox/ttf/TTFTable;->setTag(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFTable;->setCheckSum(J)V

    .line 332
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFTable;->setOffset(J)V

    .line 333
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/tom_roush/fontbox/ttf/TTFTable;->setLength(J)V

    .line 336
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/TTFTable;->getLength()J

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-nez p1, :cond_10

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x0

    return-object p1

    :cond_10
    return-object v1
.end method


# virtual methods
.method protected allowCFF()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method newFont(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 1

    .line 171
    new-instance v0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-direct {v0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;-><init>(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    return-object v0
.end method

.method parse(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->newFont(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v0

    .line 134
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read32Fixed()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->setVersion(F)V

    .line 135
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v1

    .line 136
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 137
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 138
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 141
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->readTableDirectory(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 146
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/TTFTable;->getOffset()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/TTFTable;->getLength()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getOriginalDataSize()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Skip table \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/TTFTable;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' which goes past the file size; offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 150
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/TTFTable;->getOffset()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 151
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/TTFTable;->getLength()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", font size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 152
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getOriginalDataSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PdfBox-Android"

    .line 149
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 156
    :cond_0
    invoke-virtual {v0, v3}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->addTable(Lcom/tom_roush/fontbox/ttf/TTFTable;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/tom_roush/fontbox/ttf/TTFParser;->parseOnDemandOnly:Z

    if-nez p1, :cond_3

    .line 163
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parseTables(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    :cond_3
    return-object v0
.end method

.method public parse(Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Lcom/tom_roush/fontbox/ttf/RAFDataStream;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/RAFDataStream;->close()V

    .line 95
    throw p1
.end method

.method public parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;

    invoke-direct {v0, p1}, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object p1

    return-object p1
.end method

.method public parseEmbedded(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/TTFParser;->isEmbedded:Z

    .line 121
    new-instance v0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;

    invoke-direct {v0, p1}, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object p1

    return-object p1
.end method

.method protected readTable(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;
    .locals 0

    .line 347
    new-instance p2, Lcom/tom_roush/fontbox/ttf/TTFTable;

    invoke-direct {p2, p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    return-object p2
.end method
