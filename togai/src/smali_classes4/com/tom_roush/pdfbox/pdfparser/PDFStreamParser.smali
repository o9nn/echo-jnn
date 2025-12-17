.class public Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;
.super Lcom/tom_roush/pdfbox/pdfparser/BaseParser;
.source "PDFStreamParser.java"


# static fields
.field private static final MAX_BIN_CHAR_TEST_LENGTH:I = 0xa


# instance fields
.field private final binCharTestArr:[B

.field private final streamObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;

    invoke-interface {p1}, Lcom/tom_roush/pdfbox/contentstream/PDContentStream;->getContents()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;-><init>(Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;)V

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->streamObjects:Ljava/util/List;

    const/16 p1, 0xa

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->binCharTestArr:[B

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;-><init>(Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;)V

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->streamObjects:Ljava/util/List;

    const/16 p1, 0xa

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->binCharTestArr:[B

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;-><init>(Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;)V

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->streamObjects:Ljava/util/List;

    const/16 p1, 0xa

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->binCharTestArr:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 97
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;

    new-instance v1, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;-><init>(Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;)V

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->streamObjects:Ljava/util/List;

    const/16 p1, 0xa

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->binCharTestArr:[B

    return-void
.end method

.method private hasNextSpaceOrReturn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->isSpaceOrReturn(I)Z

    move-result v0

    return v0
.end method

.method private hasNoFollowingBinData(Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->binCharTestArr:[B

    const/4 v1, 0x0

    const/16 v2, 0xa

    .line 333
    invoke-interface {p1, v0, v1, v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read([BII)I

    move-result v0

    const/4 v3, 0x1

    if-lez v0, :cond_a

    const/4 v4, -0x1

    move v5, v1

    move v6, v4

    move v7, v6

    :goto_0
    if-ge v5, v0, :cond_6

    iget-object v8, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->binCharTestArr:[B

    .line 342
    aget-byte v8, v8, v5

    const/16 v9, 0x9

    if-eqz v8, :cond_0

    if-lt v8, v9, :cond_1

    :cond_0
    const/16 v10, 0xd

    const/16 v11, 0x20

    if-le v8, v2, :cond_2

    if-ge v8, v11, :cond_2

    if-eq v8, v10, :cond_2

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    if-ne v6, v4, :cond_3

    if-eqz v8, :cond_3

    if-eq v8, v9, :cond_3

    if-eq v8, v11, :cond_3

    if-eq v8, v2, :cond_3

    if-eq v8, v10, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    if-eq v6, v4, :cond_5

    if-ne v7, v4, :cond_5

    if-eqz v8, :cond_4

    if-eq v8, v9, :cond_4

    if-eq v8, v11, :cond_4

    if-eq v8, v2, :cond_4

    if-ne v8, v10, :cond_5

    :cond_4
    move v7, v5

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    if-eq v7, v4, :cond_7

    if-eq v6, v4, :cond_7

    .line 365
    new-instance v5, Ljava/lang/String;

    iget-object v8, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->binCharTestArr:[B

    sub-int v9, v7, v6

    invoke-direct {v5, v8, v6, v9}, Ljava/lang/String;-><init>([BII)V

    const-string v8, "Q"

    .line 366
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "EMC"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "S"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    move v3, v1

    :cond_7
    if-ne v0, v2, :cond_9

    if-eq v6, v4, :cond_8

    if-ne v7, v4, :cond_8

    goto :goto_3

    :cond_8
    move v2, v7

    :goto_3
    if-eq v2, v4, :cond_9

    if-eq v6, v4, :cond_9

    sub-int/2addr v2, v6

    const/4 v4, 0x3

    if-le v2, v4, :cond_9

    move v3, v1

    :cond_9
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->binCharTestArr:[B

    .line 385
    invoke-interface {p1, v2, v1, v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread([BII)V

    :cond_a
    if-nez v3, :cond_b

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ignoring \'EI\' assumed to be in the middle of inline image at stream offset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PdfBox-Android"

    .line 389
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v3
.end method

.method private isSpaceOrReturn(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public getTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->streamObjects:Ljava/util/List;

    return-object v0
.end method

.method public parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseNextToken()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->streamObjects:Ljava/util/List;

    .line 111
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public parseNextToken()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->skipSpaces()V

    .line 135
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->isEOF()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v0

    int-to-char v0, v0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_1e

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_16

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_14

    const/16 v2, 0x42

    if-eq v0, v2, :cond_e

    const/16 v2, 0x49

    if-eq v0, v2, :cond_9

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_8

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_7

    const/16 v2, 0x66

    if-eq v0, v2, :cond_4

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_2

    const/16 v2, 0x74

    if-eq v0, v2, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 313
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->readOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 316
    invoke-static {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getOperator(Ljava/lang/String;)Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1

    .line 168
    :pswitch_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseCOSName()Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    return-object v0

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    return-object v0

    .line 178
    :cond_3
    invoke-static {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getOperator(Ljava/lang/String;)Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    move-result-object v0

    return-object v0

    .line 182
    :cond_4
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 185
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->TRUE:Lcom/tom_roush/pdfbox/cos/COSBoolean;

    return-object v0

    :cond_5
    const-string v1, "false"

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 189
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->FALSE:Lcom/tom_roush/pdfbox/cos/COSBoolean;

    return-object v0

    .line 193
    :cond_6
    invoke-static {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getOperator(Ljava/lang/String;)Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    move-result-object v0

    return-object v0

    .line 308
    :cond_7
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    .line 310
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    return-object v0

    .line 162
    :cond_8
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    return-object v0

    .line 271
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ID"

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 277
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 278
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->isWhitespace()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 281
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v3}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    .line 283
    :cond_a
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v3}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v3

    .line 284
    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v4}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v4

    :goto_0
    const/16 v5, 0x45

    if-ne v3, v5, :cond_b

    if-ne v4, v2, :cond_b

    .line 291
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->hasNextSpaceOrReturn()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 292
    invoke-direct {p0, v5}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->hasNoFollowingBinData(Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 293
    invoke-interface {v5}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->isEOF()Z

    move-result v5

    if-nez v5, :cond_c

    .line 295
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 297
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v3}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v3

    move v7, v4

    move v4, v3

    move v3, v7

    goto :goto_0

    .line 301
    :cond_c
    invoke-static {v1}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getOperator(Ljava/lang/String;)Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    move-result-object v1

    .line 303
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->setImageData([B)V

    return-object v1

    .line 274
    :cond_d
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: Expected operator \'ID\' actual=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' at stream offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 275
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_e
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->readString()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getOperator(Ljava/lang/String;)Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    move-result-object v1

    const-string v2, "BI"

    .line 239
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 241
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 242
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->setImageParameters(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 244
    :goto_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseNextToken()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v4, "PdfBox-Android"

    if-eqz v3, :cond_10

    .line 246
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseNextToken()Ljava/lang/Object;

    move-result-object v3

    .line 247
    instance-of v5, v3, Lcom/tom_roush/pdfbox/cos/COSBase;

    if-nez v5, :cond_f

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected token in inline image dictionary at offset "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 250
    invoke-interface {v3}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 253
    :cond_f
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSBase;

    invoke-virtual {v0, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_1

    .line 256
    :cond_10
    :goto_2
    instance-of v0, v2, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    if-eqz v0, :cond_13

    .line 258
    check-cast v2, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    .line 259
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getImageData()[B

    move-result-object v0

    if-eqz v0, :cond_11

    .line 260
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getImageData()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_12

    .line 262
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "empty inline image at stream offset "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 263
    invoke-interface {v3}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_12
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getImageData()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->setImageData([B)V

    :cond_13
    return-object v1

    .line 144
    :cond_14
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v1

    int-to-char v1, v1

    .line 150
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v3, v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread(I)V

    if-ne v1, v2, :cond_15

    .line 154
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseCOSDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0

    .line 158
    :cond_15
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseCOSString()Lcom/tom_roush/pdfbox/cos/COSString;

    move-result-object v0

    return-object v0

    .line 210
    :cond_16
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_17

    .line 215
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v3}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v3

    if-ne v3, v0, :cond_17

    .line 217
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v3}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    :cond_17
    const/4 v3, 0x0

    const/16 v4, 0x2e

    if-eq v0, v4, :cond_1d

    const/4 v0, 0x1

    .line 221
    :cond_18
    :goto_3
    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v5}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v5

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_1b

    if-eqz v0, :cond_19

    if-eq v5, v4, :cond_1b

    :cond_19
    if-ne v5, v2, :cond_1a

    goto :goto_4

    .line 235
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->get(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSNumber;

    move-result-object v0

    return-object v0

    :cond_1b
    :goto_4
    if-eq v5, v2, :cond_1c

    .line 226
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    :cond_1c
    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v6}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    if-eqz v0, :cond_18

    if-ne v5, v4, :cond_18

    :cond_1d
    move v0, v3

    goto :goto_3

    .line 165
    :cond_1e
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseCOSString()Lcom/tom_roush/pdfbox/cos/COSString;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected readOperator()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->skipSpaces()V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 409
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 412
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 413
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->isClosing(I)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_3

    const/16 v2, 0x28

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_3

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v3, 0x39

    if-le v1, v3, :cond_3

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v1

    int-to-char v1, v1

    .line 422
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v3}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v3

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    if-ne v1, v4, :cond_2

    if-eq v3, v2, :cond_1

    const/16 v1, 0x31

    if-ne v3, v1, :cond_2

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    .line 431
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
