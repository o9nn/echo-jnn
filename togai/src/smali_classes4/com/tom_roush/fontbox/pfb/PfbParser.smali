.class public Lcom/tom_roush/fontbox/pfb/PfbParser;
.super Ljava/lang/Object;
.source "PfbParser.java"


# static fields
.field private static final ASCII_MARKER:I = 0x1

.field private static final BINARY_MARKER:I = 0x2

.field private static final BUFFER_SIZE:I = 0xffff

.field private static final PFB_HEADER_LENGTH:I = 0x12

.field private static final PFB_RECORDS:[I

.field private static final START_MARKER:I = 0x80


# instance fields
.field private lengths:[I

.field private pfbdata:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    filled-new-array {v0, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/tom_roush/fontbox/pfb/PfbParser;->PFB_RECORDS:[I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/pfb/PfbParser;->readFully(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/pfb/PfbParser;->parsePfb([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const p1, 0xffff

    invoke-direct {v1, v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/pfb/PfbParser;->readFully(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/pfb/PfbParser;->parsePfb([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 104
    :cond_0
    throw p1
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/pfb/PfbParser;->parsePfb([B)V

    return-void
.end method

.method private parsePfb([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    array-length v0, p1

    const/16 v1, 0x12

    if-lt v0, v1, :cond_7

    .line 139
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 140
    array-length p1, p1

    sub-int/2addr p1, v1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/tom_roush/fontbox/pfb/PfbParser;->pfbdata:[B

    sget-object p1, Lcom/tom_roush/fontbox/pfb/PfbParser;->PFB_RECORDS:[I

    .line 141
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/tom_roush/fontbox/pfb/PfbParser;->lengths:[I

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    sget-object v2, Lcom/tom_roush/fontbox/pfb/PfbParser;->PFB_RECORDS:[I

    .line 143
    array-length v3, v2

    if-ge p1, v3, :cond_6

    .line 145
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    const/16 v4, 0x80

    if-ne v3, v4, :cond_5

    .line 150
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    aget v2, v2, p1

    if-ne v3, v2, :cond_4

    .line 155
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 156
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 157
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    .line 158
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    add-int/2addr v2, v3

    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/tom_roush/fontbox/pfb/PfbParser;->lengths:[I

    .line 163
    aput v2, v3, p1

    iget-object v3, p0, Lcom/tom_roush/fontbox/pfb/PfbParser;->pfbdata:[B

    .line 164
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 168
    array-length v4, v3

    sub-int/2addr v4, v1

    if-gt v2, v4, :cond_1

    .line 174
    invoke-virtual {v0, v3, v1, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 177
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 170
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "attempted to read "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes at position "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " into array of size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/fontbox/pfb/PfbParser;->pfbdata:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", but only space for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/fontbox/pfb/PfbParser;->pfbdata:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes left"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "attempted to read past EOF"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PFB record size is negative: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Incorrect record type"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Start marker missing"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void

    .line 137
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "PFB header missing"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readFully(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const v1, 0xffff

    new-array v1, v1, [B

    .line 195
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 197
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 226
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/tom_roush/fontbox/pfb/PfbParser;->pfbdata:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getLengths()[I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/pfb/PfbParser;->lengths:[I

    return-object v0
.end method

.method public getPfbdata()[B
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/pfb/PfbParser;->pfbdata:[B

    return-object v0
.end method

.method public getSegment1()[B
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/fontbox/pfb/PfbParser;->pfbdata:[B

    iget-object v1, p0, Lcom/tom_roush/fontbox/pfb/PfbParser;->lengths:[I

    const/4 v2, 0x0

    .line 244
    aget v1, v1, v2

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getSegment2()[B
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/fontbox/pfb/PfbParser;->pfbdata:[B

    iget-object v1, p0, Lcom/tom_roush/fontbox/pfb/PfbParser;->lengths:[I

    const/4 v2, 0x0

    .line 253
    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    add-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/pfb/PfbParser;->pfbdata:[B

    .line 235
    array-length v0, v0

    return v0
.end method
