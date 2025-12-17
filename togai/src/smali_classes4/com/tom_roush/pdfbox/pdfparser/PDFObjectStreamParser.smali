.class public Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;
.super Lcom/tom_roush/pdfbox/pdfparser/BaseParser;
.source "PDFObjectStreamParser.java"


# instance fields
.field private final firstObject:I

.field private final numberOfObjects:I

.field private streamObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/cos/COSDocument;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;-><init>(Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->streamObjects:Ljava/util/List;

    .line 57
    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    .line 59
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->N:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result p2

    iput p2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->numberOfObjects:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    if-ltz p2, :cond_2

    .line 69
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->FIRST:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result p1

    iput p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->firstObject:I

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_0

    return-void

    .line 76
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal /First entry in object stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 72
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "/First entry missing in object stream"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal /N entry in object stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "/N entry missing in object stream"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->firstObject:I

    add-int/2addr v2, p1

    if-lez v2, :cond_0

    int-to-long v3, v2

    cmp-long p1, v0, v3

    if-gez p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    long-to-int v0, v0

    sub-int/2addr v2, v0

    invoke-interface {p1, v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->readFully(I)[B

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->parseDirObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    return-object p1
.end method

.method private readOffsets()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v1

    iget v3, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->firstObject:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->numberOfObjects:I

    if-ge v3, v4, :cond_1

    .line 131
    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v4}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-ltz v4, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->readObjectNumber()J

    move-result-wide v4

    .line 136
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->readLong()J

    move-result-wide v6

    long-to-int v6, v6

    .line 137
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->streamObjects:Ljava/util/List;

    return-object v0
.end method

.method public parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->readOffsets()Ljava/util/Map;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->streamObjects:Ljava/util/List;

    .line 92
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    check-cast v1, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->parseObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 95
    new-instance v3, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-direct {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 v2, 0x0

    .line 96
    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSObject;->setGenerationNumber(I)V

    .line 97
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSObject;->setObjectNumber(J)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->streamObjects:Ljava/util/List;

    .line 98
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PdfBox-Android"

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsed="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->close()V

    .line 108
    throw v0
.end method
