.class final Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;
.super Ljava/lang/Object;
.source "ToUnicodeWriter.java"


# static fields
.field static final MAX_ENTRIES_PER_OPERATOR:I = 0x64


# instance fields
.field private final cidToUnicode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wMode:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->cidToUnicode:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->wMode:I

    return-void
.end method

.method static allowCIDToUnicodeRange(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->allowCodeRange(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->allowDestinationRange(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method static allowCodeRange(II)Z
    .locals 3

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p1, p1, 0xff

    if-ne v0, v2, :cond_1

    if-ge p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static allowDestinationRange(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 216
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 221
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 226
    invoke-static {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->allowCodeRange(II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->codePointCount(II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    move v1, p1

    :cond_1
    :goto_0
    return v1
.end method

.method private writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 p2, 0xa

    .line 181
    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(I)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;)V
    .locals 1

    if-ltz p1, :cond_1

    const v0, 0xffff

    if-gt p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->cidToUnicode:Ljava/util/Map;

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Text is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CID is not valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWMode(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->wMode:I

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string p1, "/CIDInit /ProcSet findresource begin"

    .line 95
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    const-string p1, "12 dict begin\n"

    .line 96
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    const-string p1, "begincmap"

    .line 98
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    const-string p1, "/CIDSystemInfo"

    .line 99
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    const-string p1, "<< /Registry (Adobe)"

    .line 100
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    const-string p1, "/Ordering (UCS)"

    .line 101
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    const-string p1, "/Supplement 0"

    .line 102
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    const-string p1, ">> def\n"

    .line 103
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    const-string p1, "/CMapName /Adobe-Identity-UCS def"

    .line 105
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    const-string p1, "/CMapType 2 def\n"

    .line 106
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    iget p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->wMode:I

    if-eqz p1, :cond_0

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "/WMode /"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->wMode:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " def"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    :cond_0
    const-string p1, "1 begincodespacerange"

    .line 114
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    const-string p1, "<0000> <FFFF>"

    .line 115
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    const-string p1, "endcodespacerange\n"

    .line 116
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->cidToUnicode:Ljava/util/Map;

    .line 125
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 127
    invoke-static {v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->allowCIDToUnicodeRange(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 135
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object v4, v5

    goto :goto_0

    .line 143
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_5

    add-int/lit8 v6, v3, -0x1

    if-ne v5, v6, :cond_3

    .line 148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v7, v5, 0x64

    sub-int/2addr v6, v7

    goto :goto_3

    :cond_3
    const/16 v6, 0x64

    .line 150
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " beginbfrange\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    move v7, v4

    :goto_4
    if-ge v7, v6, :cond_4

    mul-int/lit8 v8, v5, 0x64

    add-int/2addr v8, v7

    const/16 v9, 0x3c

    .line 154
    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(I)V

    .line 155
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->shortValue()S

    move-result v10

    invoke-static {v10}, Lcom/tom_roush/pdfbox/util/Hex;->getChars(S)[C

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/BufferedWriter;->write([C)V

    const-string v10, "> "

    .line 156
    invoke-virtual {v0, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(I)V

    .line 159
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->shortValue()S

    move-result v11

    invoke-static {v11}, Lcom/tom_roush/pdfbox/util/Hex;->getChars(S)[C

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/BufferedWriter;->write([C)V

    .line 160
    invoke-virtual {v0, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(I)V

    .line 163
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/tom_roush/pdfbox/util/Hex;->getCharsUTF16BE(Ljava/lang/String;)[C

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/BufferedWriter;->write([C)V

    const-string v8, ">\n"

    .line 164
    invoke-virtual {v0, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    const-string v6, "endbfrange\n"

    .line 166
    invoke-direct {p0, v0, v6}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    const-string p1, "endcmap"

    .line 170
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    const-string p1, "CMapName currentdict /CMap defineresource pop"

    .line 171
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    const-string p1, "end"

    .line 172
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeLine(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    return-void
.end method
