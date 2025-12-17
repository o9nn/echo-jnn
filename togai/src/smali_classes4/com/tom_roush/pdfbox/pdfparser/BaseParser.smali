.class public abstract Lcom/tom_roush/pdfbox/pdfparser/BaseParser;
.super Ljava/lang/Object;
.source "BaseParser.java"


# static fields
.field protected static final A:I = 0x61

.field protected static final ASCII_CR:B = 0xdt

.field protected static final ASCII_LF:B = 0xat

.field private static final ASCII_NINE:B = 0x39t

.field private static final ASCII_SPACE:B = 0x20t

.field private static final ASCII_ZERO:B = 0x30t

.field protected static final B:I = 0x62

.field protected static final D:I = 0x64

.field public static final DEF:Ljava/lang/String; = "def"

.field protected static final E:I = 0x65

.field protected static final ENDOBJ_STRING:Ljava/lang/String; = "endobj"

.field protected static final ENDSTREAM_STRING:Ljava/lang/String; = "endstream"

.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final GENERATION_NUMBER_THRESHOLD:J = 0xffffL

.field protected static final J:I = 0x6a

.field protected static final M:I = 0x6d

.field static final MAX_LENGTH_LONG:I

.field protected static final N:I = 0x6e

.field private static final NULL:Ljava/lang/String; = "null"

.field protected static final O:I = 0x6f

.field private static final OBJECT_NUMBER_THRESHOLD:J = 0x2540be400L

.field protected static final R:I = 0x72

.field protected static final S:I = 0x73

.field protected static final STREAM_STRING:Ljava/lang/String; = "stream"

.field protected static final T:I = 0x74

.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field protected document:Lcom/tom_roush/pdfbox/cos/COSDocument;

.field final seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

.field private final utf8Decoder:Ljava/nio/charset/CharsetDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->MAX_LENGTH_LONG:I

    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/tom_roush/pdfbox/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    return-void
.end method

.method private checkForEndOfString(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 370
    invoke-interface {v2, v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read([B)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_2

    aget-byte v0, v1, v3

    const/16 v4, 0xd

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    aget-byte v0, v1, v0

    const/16 v4, 0xa

    const/16 v5, 0x2f

    const/4 v6, 0x2

    if-ne v0, v4, :cond_0

    aget-byte v4, v1, v6

    if-eq v4, v5, :cond_1

    :cond_0
    aget-byte v4, v1, v6

    const/16 v6, 0x3e

    if-eq v4, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-ne v0, v6, :cond_2

    :cond_1
    move p1, v3

    :cond_2
    if-lez v2, :cond_3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 388
    invoke-interface {v0, v1, v3, v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread([BII)V

    :cond_3
    return p1
.end method

.method private getObjectFromPool(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getObjectFromPool(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object p1

    return-object p1

    .line 191
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "object reference "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " at offset "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " in content stream"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isCR(I)Z
    .locals 1

    const/16 v0, 0xd

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected static isDigit(I)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isHexDigit(C)Z
    .locals 1

    .line 134
    invoke-static {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isLF(I)Z
    .locals 1

    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isValidUTF8([B)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 793
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private parseCOSDictionaryNameValuePair(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->parseCOSName()Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Empty COSName at offset "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v3}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->parseCOSDictionaryValue()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 298
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->skipSpaces()V

    if-nez v2, :cond_2

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Bad dictionary declaration at offset "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 304
    :cond_2
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSInteger;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSInteger;->isValid()Z

    move-result v3

    if-nez v3, :cond_3

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Skipped out of range number value at offset "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    :cond_3
    invoke-virtual {v2, v4}, Lcom/tom_roush/pdfbox/cos/COSBase;->setDirect(Z)V

    .line 312
    invoke-virtual {p1, v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_0
    return v4
.end method

.method private parseCOSDictionaryValue()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 148
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v0

    .line 149
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->parseDirObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 150
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->skipSpaces()V

    .line 152
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isDigit()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 157
    invoke-interface {v3}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v3

    .line 158
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->parseDirObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    .line 159
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->skipSpaces()V

    const/16 v6, 0x52

    .line 160
    invoke-virtual {p0, v6}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->readExpectedChar(C)V

    .line 161
    instance-of v6, v2, Lcom/tom_roush/pdfbox/cos/COSInteger;

    const-string v7, "expected number, actual="

    const-string v8, " at offset "

    const-string v9, "PdfBox-Android"

    if-nez v6, :cond_1

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    return-object v0

    .line 166
    :cond_1
    instance-of v6, v5, Lcom/tom_roush/pdfbox/cos/COSInteger;

    if-nez v6, :cond_2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    return-object v0

    .line 171
    :cond_2
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSInteger;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-gtz v4, :cond_3

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invalid object number value ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    return-object v0

    .line 177
    :cond_3
    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSInteger;->intValue()I

    move-result v4

    if-gez v4, :cond_4

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid generation number value ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    return-object v0

    .line 184
    :cond_4
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-direct {v0, v2, v3, v4}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->getObjectFromPool(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_0
    return-object v2
.end method

.method private parseCOSHexString()Lcom/tom_roush/pdfbox/cos/COSString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 570
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v1

    int-to-char v2, v1

    .line 571
    invoke-static {v2}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isHexDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 573
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "Missing closing bracket for hex string. Reached EOS."

    if-ltz v1, :cond_7

    const/16 v4, 0x20

    if-eq v1, v4, :cond_0

    const/16 v4, 0xa

    if-eq v1, v4, :cond_0

    const/16 v4, 0x9

    if-eq v1, v4, :cond_0

    const/16 v4, 0xd

    if-eq v1, v4, :cond_0

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    const/16 v4, 0xc

    if-ne v1, v4, :cond_3

    goto :goto_0

    .line 593
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 595
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 601
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v1

    if-eq v1, v2, :cond_5

    if-gez v1, :cond_4

    :cond_5
    if-ltz v1, :cond_6

    .line 617
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->parseHex(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSString;

    move-result-object v0

    return-object v0

    .line 610
    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseCOSNumber()Lcom/tom_roush/pdfbox/cos/COSNumber;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 943
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v1

    :goto_0
    int-to-char v2, v1

    .line 945
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_2

    const/16 v3, 0x45

    if-eq v2, v3, :cond_2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 953
    invoke-interface {v2, v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread(I)V

    .line 955
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->get(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSNumber;

    move-result-object v0

    return-object v0

    .line 947
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 948
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v1

    goto :goto_0
.end method

.method private readUntilEndOfCOSDictionary()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 255
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_4

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_4

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 262
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    const/16 v4, 0x6e

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 265
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    const/16 v4, 0x64

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 268
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    const/16 v4, 0x73

    if-ne v0, v4, :cond_0

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 269
    invoke-interface {v4}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v4

    const/16 v5, 0x74

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v4}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v4

    const/16 v5, 0x72

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 270
    invoke-interface {v4}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v4

    if-ne v4, v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v1

    const/16 v4, 0x61

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v1

    const/16 v4, 0x6d

    if-ne v1, v4, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_1

    const/16 v4, 0x6f

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 271
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    const/16 v4, 0x62

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    const/16 v4, 0x6a

    if-ne v0, v4, :cond_1

    move v2, v3

    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    return v3

    :cond_3
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 280
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    goto/16 :goto_0

    :cond_4
    if-ne v0, v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 286
    invoke-interface {v1, v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread(I)V

    return v2
.end method


# virtual methods
.method protected isClosing()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1075
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isClosing(I)Z

    move-result v0

    return v0
.end method

.method protected isClosing(I)Z
    .locals 1

    const/16 v0, 0x5d

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isDigit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1215
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isDigit(I)Z

    move-result v0

    return v0
.end method

.method protected isEOL()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1135
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isEOL(I)Z

    move-result v0

    return v0
.end method

.method protected isEOL(I)Z
    .locals 1

    .line 1146
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isLF(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isCR(I)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method protected isEndOfName(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x29

    if-eq p1, v0, :cond_1

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x25

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

.method protected isSpace()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1192
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isSpace(I)Z

    move-result v0

    return v0
.end method

.method protected isSpace(I)Z
    .locals 1

    const/16 v0, 0x20

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isWhitespace()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1168
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method protected isWhitespace(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

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

.method protected parseBoolean()Lcom/tom_roush/pdfbox/cos/COSBoolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 812
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0x74

    const-string v2, "Error parsing boolean: expected=\'true\' actual=\'"

    const-string v3, "\' at offset "

    if-ne v0, v1, :cond_1

    .line 815
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    const/4 v4, 0x4

    invoke-interface {v1, v4}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->readFully(I)[B

    move-result-object v1

    sget-object v4, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v1, "true"

    .line 816
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 823
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->TRUE:Lcom/tom_roush/pdfbox/cos/COSBoolean;

    goto :goto_0

    .line 818
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 819
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/16 v1, 0x66

    if-ne v0, v1, :cond_3

    .line 828
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    const/4 v4, 0x5

    invoke-interface {v1, v4}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->readFully(I)[B

    move-result-object v1

    sget-object v4, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v1, "false"

    .line 829
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 836
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->FALSE:Lcom/tom_roush/pdfbox/cos/COSBoolean;

    :goto_0
    return-object v0

    .line 831
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 832
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 841
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error parsing boolean expected=\'t or f\' actual=\'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 842
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected parseCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 629
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v0

    const/16 v2, 0x5b

    .line 630
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->readExpectedChar(C)V

    .line 631
    new-instance v3, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v3}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 633
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->skipSpaces()V

    :goto_0
    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 635
    invoke-interface {v4}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v4

    if-lez v4, :cond_6

    int-to-char v4, v4

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_6

    .line 637
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->parseDirObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    .line 638
    instance-of v5, v4, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v5, :cond_1

    .line 641
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_0

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    instance-of v4, v4, Lcom/tom_roush/pdfbox/cos/COSInteger;

    if-eqz v4, :cond_0

    .line 643
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSInteger;

    .line 644
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v6

    instance-of v6, v6, Lcom/tom_roush/pdfbox/cos/COSInteger;

    if-eqz v6, :cond_0

    .line 646
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSInteger;

    .line 647
    new-instance v6, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSInteger;->longValue()J

    move-result-wide v7

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSInteger;->intValue()I

    move-result v4

    invoke-direct {v6, v7, v8, v4}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    .line 648
    invoke-direct {p0, v6}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->getObjectFromPool(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v5

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 663
    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_2

    .line 668
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Corrupt array element at offset "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 669
    invoke-interface {v5}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", start offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PdfBox-Android"

    .line 668
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->readString()Ljava/lang/String;

    move-result-object v4

    .line 673
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v5}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v5

    if-ne v5, v2, :cond_3

    return-object v3

    :cond_3
    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 677
    sget-object v6, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread([B)V

    const-string v5, "endobj"

    .line 680
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "endstream"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    .line 685
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->skipSpaces()V

    goto/16 :goto_0

    :cond_5
    :goto_3
    return-object v3

    :cond_6
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 688
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    .line 689
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->skipSpaces()V

    return-object v3
.end method

.method protected parseCOSDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3c

    .line 206
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->readExpectedChar(C)V

    .line 207
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->readExpectedChar(C)V

    .line 208
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->skipSpaces()V

    .line 209
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/16 v2, 0x3e

    if-nez v1, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->skipSpaces()V

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 214
    invoke-interface {v3}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v3

    int-to-char v3, v3

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x2f

    if-ne v3, v2, :cond_2

    .line 223
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->parseCOSDictionaryNameValuePair(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 231
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid dictionary, found: \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' but expected: \'/\' at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v3}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PdfBox-Android"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->readUntilEndOfCOSDictionary()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 239
    :cond_3
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->readExpectedChar(C)V

    .line 240
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->readExpectedChar(C)V

    return-object v0
.end method

.method protected parseCOSName()Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2f

    .line 714
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->readExpectedChar(C)V

    .line 715
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 716
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    const/16 v3, 0x23

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 722
    invoke-interface {v3}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v3

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 723
    invoke-interface {v4}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v4

    int-to-char v5, v3

    .line 730
    invoke-static {v5}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isHexDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    int-to-char v6, v4

    invoke-static {v6}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isHexDigit(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    .line 735
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 741
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v3

    goto :goto_1

    :catch_0
    move-exception v0

    .line 739
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: expected hex digit, actual=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    if-eq v4, v2, :cond_2

    if-ne v3, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 752
    invoke-interface {v2, v4}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread(I)V

    .line 754
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_2
    :goto_2
    const-string v1, "PdfBox-Android"

    const-string v3, "Premature EOF in BaseParser#parseCOSName"

    .line 748
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_3

    .line 757
    :cond_3
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isEndOfName(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 763
    :cond_4
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 764
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v1

    goto/16 :goto_0

    :cond_5
    :goto_3
    if-eq v1, v2, :cond_6

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 769
    invoke-interface {v2, v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread(I)V

    .line 772
    :cond_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 774
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isValidUTF8([B)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 776
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_4

    .line 781
    :cond_7
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->WINDOWS_1252:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 783
    :goto_4
    invoke-static {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    return-object v0
.end method

.method protected parseCOSString()Lcom/tom_roush/pdfbox/cos/COSString;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 402
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->parseCOSHexString()Lcom/tom_roush/pdfbox/cos/COSString;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x28

    if-ne v0, v1, :cond_13

    .line 413
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 417
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    const/4 v4, -0x1

    if-lez v3, :cond_11

    if-eq v2, v4, :cond_11

    int-to-char v2, v2

    const/16 v5, 0x29

    const/4 v6, -0x2

    if-ne v2, v5, :cond_2

    add-int/lit8 v3, v3, -0x1

    .line 427
    invoke-direct {p0, v3}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->checkForEndOfString(I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 430
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1
    :goto_1
    move v2, v6

    goto/16 :goto_3

    :cond_2
    if-ne v2, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 436
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_3
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_e

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 441
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v2

    int-to-char v2, v2

    const/16 v8, 0xa

    if-eq v2, v8, :cond_d

    const/16 v9, 0xd

    if-eq v2, v9, :cond_d

    if-eq v2, v7, :cond_c

    const/16 v4, 0x62

    const/16 v10, 0x8

    if-eq v2, v4, :cond_b

    const/16 v4, 0x66

    if-eq v2, v4, :cond_a

    const/16 v4, 0x6e

    if-eq v2, v4, :cond_9

    const/16 v4, 0x72

    if-eq v2, v4, :cond_8

    const/16 v4, 0x74

    if-eq v2, v4, :cond_7

    if-eq v2, v1, :cond_c

    if-eq v2, v5, :cond_5

    packed-switch v2, :pswitch_data_0

    .line 530
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 493
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 495
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v2

    int-to-char v5, v2

    const/16 v7, 0x30

    if-lt v5, v7, :cond_4

    const/16 v8, 0x37

    if-gt v5, v8, :cond_4

    .line 499
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 500
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v2

    int-to-char v5, v2

    if-lt v5, v7, :cond_4

    if-gt v5, v8, :cond_4

    .line 504
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v6

    .line 519
    :cond_4
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    :catch_0
    move-exception v0

    .line 523
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: Expected octal character, actual=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 461
    :cond_5
    invoke-direct {p0, v3}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->checkForEndOfString(I)I

    move-result v3

    if-eqz v3, :cond_6

    .line 464
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 468
    :cond_6
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    :cond_7
    const/16 v2, 0x9

    .line 451
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 448
    :cond_8
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 445
    :cond_9
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    :cond_a
    const/16 v2, 0xc

    .line 457
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 454
    :cond_b
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 473
    :cond_c
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    :cond_d
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 478
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v2

    .line 479
    :goto_2
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isEOL(I)Z

    move-result v5

    if-eqz v5, :cond_f

    if-eq v2, v4, :cond_f

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 481
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v2

    goto :goto_2

    .line 535
    :cond_e
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    :cond_f
    :goto_3
    if-eq v2, v6, :cond_10

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 543
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v2

    goto/16 :goto_0

    :cond_11
    if-eq v2, v4, :cond_12

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 548
    invoke-interface {v1, v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread(I)V

    .line 550
    :cond_12
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    return-object v1

    .line 409
    :cond_13
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parseCOSString string should start with \'(\' or \'<\' and not \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' at offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 410
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected parseDirObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->skipSpaces()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 857
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_10

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_f

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_d

    const/16 v1, 0x52

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_b

    const/16 v1, 0x66

    const-string v3, "\' "

    const-string v4, "\' at offset "

    if-eq v0, v1, :cond_9

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_8

    const/16 v1, 0x74

    if-eq v0, v1, :cond_6

    const v1, 0xffff

    if-eq v0, v1, :cond_5

    .line 907
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 914
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v5

    .line 915
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->readString()Ljava/lang/String;

    move-result-object v1

    .line 916
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const-string v7, ")"

    const-string v8, " (start offset: "

    if-nez v3, :cond_3

    const-string v0, "endobj"

    .line 927
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "endstream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 933
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Skipped unexpected dir object = \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 934
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    .line 933
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 929
    sget-object v3, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread([B)V

    :goto_1
    return-object v2

    :cond_3
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 918
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v1

    .line 920
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown dir object c=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' cInt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " peek=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' peekInt="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 922
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 909
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->parseCOSNumber()Lcom/tom_roush/pdfbox/cos/COSNumber;

    move-result-object v0

    return-object v0

    :cond_5
    return-object v2

    .line 880
    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->readFully(I)[B

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v1, "true"

    .line 881
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 883
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->TRUE:Lcom/tom_roush/pdfbox/cos/COSBoolean;

    return-object v0

    .line 887
    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "expected true actual=\'"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 888
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string v0, "null"

    .line 877
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->readExpectedString(Ljava/lang/String;)V

    .line 878
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    return-object v0

    .line 891
    :cond_9
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->readFully(I)[B

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v1, "false"

    .line 892
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 894
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;->FALSE:Lcom/tom_roush/pdfbox/cos/COSBoolean;

    return-object v0

    .line 898
    :cond_a
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "expected false actual=\'"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 899
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 869
    :cond_b
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->parseCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 902
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    .line 903
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-direct {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 862
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 864
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v2

    int-to-char v2, v2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 865
    invoke-interface {v3, v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread(I)V

    if-ne v2, v1, :cond_e

    .line 866
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->parseCOSDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->parseCOSString()Lcom/tom_roush/pdfbox/cos/COSString;

    move-result-object v0

    :goto_3
    return-object v0

    .line 874
    :cond_f
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->parseCOSName()Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    return-object v0

    .line 871
    :cond_10
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->parseCOSString()Lcom/tom_roush/pdfbox/cos/COSString;

    move-result-object v0

    return-object v0
.end method

.method protected readExpectedChar(C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1025
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    int-to-char v0, v0

    if-ne v0, p1, :cond_0

    return-void

    .line 1028
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\' actual=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' at offset "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected readExpectedString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 991
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->readExpectedString([CZ)V

    return-void
.end method

.method protected final readExpectedString([CZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1003
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->skipSpaces()V

    .line 1004
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-char v1, p1, v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1006
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1008
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected string \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' but missed at character \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' at offset "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1010
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1013
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->skipSpaces()V

    return-void
.end method

.method protected readGenerationNumber()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1286
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->readInt()I

    move-result v0

    if-ltz v0, :cond_0

    int-to-long v1, v0

    const-wide/32 v3, 0xffff

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    return v0

    .line 1289
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Generation Number \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' has more than 5 digits"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1303
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->skipSpaces()V

    .line 1306
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->readStringNumber()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1310
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread([B)V

    .line 1315
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: Expected an integer type at offset "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1316
    invoke-interface {v4}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", instead got \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1100
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->isEOF()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1109
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1112
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isEOL(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    int-to-char v1, v1

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1119
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isCR(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->peek()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isLF(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1121
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    .line 1123
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1102
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: End-of-File, expected line at offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1103
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1332
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->skipSpaces()V

    .line 1335
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->readStringNumber()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1339
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread([B)V

    .line 1344
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: Expected a long type at offset "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1345
    invoke-interface {v4}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", instead got \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected readObjectNumber()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1270
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x2540be400L

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    return-wide v0

    .line 1273
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Object Number \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' has more than 10 digits or is negative"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 967
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->skipSpaces()V

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 969
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v1

    :goto_0
    int-to-char v2, v1

    .line 970
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isEndOfName(I)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_0

    if-eq v1, v4, :cond_0

    .line 972
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 973
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v1

    goto :goto_0

    :cond_0
    if-eq v1, v4, :cond_1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 977
    invoke-interface {v2, v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread(I)V

    .line 979
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readString(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1043
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->skipSpaces()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1045
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1050
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isWhitespace(I)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isClosing(I)Z

    move-result v2

    if-nez v2, :cond_0

    if-eq v0, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v2, p1, :cond_0

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_0

    int-to-char v0, v0

    .line 1056
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1057
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    goto :goto_0

    :cond_0
    if-eq v0, v3, :cond_1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1061
    invoke-interface {p1, v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread(I)V

    .line 1063
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final readStringNumber()Ljava/lang/StringBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1361
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_1

    int-to-char v1, v1

    .line 1363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget v2, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->MAX_LENGTH_LONG:I

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 1366
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Number \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' is getting too long, stop reading at offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1367
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1372
    invoke-interface {v2, v1}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread(I)V

    :cond_2
    return-object v0
.end method

.method protected skipSpaces()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1236
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    .line 1238
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isWhitespace(I)Z

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x25

    if-nez v1, :cond_3

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    if-eq v0, v2, :cond_2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1256
    invoke-interface {v1, v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread(I)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1243
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    .line 1244
    :goto_2
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->isEOL(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1246
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 1251
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    goto :goto_0
.end method

.method protected skipWhiteSpaces()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 322
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    :goto_0
    const/16 v1, 0x20

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 329
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    const/16 v2, 0xa

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 334
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->read()I

    move-result v0

    if-eq v2, v0, :cond_2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 337
    invoke-interface {v1, v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread(I)V

    goto :goto_1

    :cond_1
    if-eq v2, v0, :cond_2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;->seqSource:Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;

    .line 347
    invoke-interface {v1, v0}, Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;->unread(I)V

    :cond_2
    :goto_1
    return-void
.end method
