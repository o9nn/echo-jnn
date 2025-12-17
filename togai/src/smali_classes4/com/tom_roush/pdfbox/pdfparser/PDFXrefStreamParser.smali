.class public Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;
.super Lcom/tom_roush/pdfbox/pdfparser/BaseParser;
.source "PDFXrefStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;
    }
.end annotation


# instance fields
.field private objectNumbers:Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;

.field private final w:[I

.field private final xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/cos/COSDocument;Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;)V
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

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->w:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->objectNumbers:Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;

    .line 57
    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 61
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->initParserValues(Lcom/tom_roush/pdfbox/cos/COSStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 65
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->close()V

    .line 66
    throw p1
.end method

.method private close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    return-void
.end method

.method private initParserValues(Lcom/tom_roush/pdfbox/cos/COSStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->W:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 77
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->w:[I

    .line 84
    invoke-virtual {v0, v3, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getInt(II)I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->w:[I

    .line 86
    aget v2, v0, v1

    if-ltz v2, :cond_3

    const/4 v2, 0x1

    aget v3, v0, v2

    if-ltz v3, :cond_3

    const/4 v3, 0x2

    aget v0, v0, v3

    if-ltz v0, :cond_3

    .line 91
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->INDEX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 96
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSInteger;->ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 97
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->SIZE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v4, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result p1

    int-to-long v4, p1

    invoke-static {v4, v5}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 99
    :cond_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p1

    rem-int/2addr p1, v3

    if-eq p1, v2, :cond_2

    .line 105
    new-instance p1, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$1;)V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->objectNumbers:Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;

    return-void

    .line 101
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong number of values for /Index array in XRef: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->w:[I

    .line 102
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incorrect /W array in XRef: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->w:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong number of values for /W array in XRef: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->w:[I

    .line 80
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "/W array is missing in Xref stream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseValue([BII)J
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v3, v2, p2

    .line 162
    aget-byte v3, p1, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    sub-int v5, p3, v2

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x8

    shl-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public parse()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->w:[I

    const/4 v1, 0x0

    .line 123
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    add-int/2addr v2, v4

    const/4 v4, 0x2

    aget v0, v0, v4

    add-int/2addr v2, v0

    new-array v0, v2, [B

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->isEOF()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->objectNumbers:Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v2, v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read([B)I

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->objectNumbers:Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;

    .line 129
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->next()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->w:[I

    .line 131
    aget v2, v2, v1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->parseValue([BII)J

    move-result-wide v7

    long-to-int v2, v7

    :goto_1
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->w:[I

    .line 138
    aget v8, v7, v1

    aget v7, v7, v3

    invoke-direct {p0, v0, v8, v7}, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->parseValue([BII)J

    move-result-wide v7

    if-ne v2, v3, :cond_2

    iget-object v9, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->w:[I

    .line 140
    aget v10, v9, v1

    aget v11, v9, v3

    add-int/2addr v10, v11

    aget v9, v9, v4

    invoke-direct {p0, v0, v10, v9}, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->parseValue([BII)J

    move-result-wide v9

    long-to-int v9, v9

    goto :goto_2

    :cond_2
    move v9, v1

    .line 141
    :goto_2
    new-instance v10, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-direct {v10, v5, v6, v9}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 144
    invoke-virtual {v2, v10, v7, v8}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->setXRef(Lcom/tom_roush/pdfbox/cos/COSObjectKey;J)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    neg-long v5, v7

    .line 151
    invoke-virtual {v2, v10, v5, v6}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->setXRef(Lcom/tom_roush/pdfbox/cos/COSObjectKey;J)V

    goto :goto_0

    .line 154
    :cond_4
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->close()V

    return-void
.end method
