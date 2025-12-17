.class public Lcom/fasterxml/jackson/core/format/DataFormatMatcher;
.super Ljava/lang/Object;
.source "DataFormatMatcher.java"


# instance fields
.field protected final _bufferedData:[B

.field protected final _bufferedLength:I

.field protected final _bufferedStart:I

.field protected final _match:Lcom/fasterxml/jackson/core/JsonFactory;

.field protected final _matchStrength:Lcom/fasterxml/jackson/core/format/MatchStrength;

.field protected final _originalStream:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;[BIILcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/format/MatchStrength;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_originalStream:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedData:[B

    iput p3, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedStart:I

    iput p4, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedLength:I

    iput-object p5, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_match:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object p6, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_matchStrength:Lcom/fasterxml/jackson/core/format/MatchStrength;

    or-int p1, p3, p4

    if-ltz p1, :cond_0

    add-int p1, p3, p4

    .line 54
    array-length p5, p2

    if-gt p1, p5, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 57
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p3, p4, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Illegal start/length (%d/%d) wrt input array of %d bytes"

    .line 56
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createParserWithMatch()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_match:Lcom/fasterxml/jackson/core/JsonFactory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_originalStream:Ljava/io/InputStream;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedData:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedStart:I

    iget v3, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedLength:I

    .line 119
    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([BII)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    return-object v0

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->getDataStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 10

    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_originalStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedData:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedStart:I

    iget v3, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/io/MergedStream;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_originalStream:Ljava/io/InputStream;

    iget-object v7, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedData:[B

    iget v8, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedStart:I

    iget v9, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_bufferedLength:I

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/jackson/core/io/MergedStream;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BII)V

    return-object v0
.end method

.method public getMatch()Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_match:Lcom/fasterxml/jackson/core/JsonFactory;

    return-object v0
.end method

.method public getMatchStrength()Lcom/fasterxml/jackson/core/format/MatchStrength;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_matchStrength:Lcom/fasterxml/jackson/core/format/MatchStrength;

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    :cond_0
    return-object v0
.end method

.method public getMatchedFormatName()Ljava/lang/String;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->hasMatch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->getMatch()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasMatch()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatMatcher;->_match:Lcom/fasterxml/jackson/core/JsonFactory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
