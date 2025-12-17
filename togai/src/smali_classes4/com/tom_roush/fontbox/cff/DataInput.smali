.class public Lcom/tom_roush/fontbox/cff/DataInput;
.super Ljava/lang/Object;
.source "DataInput.java"


# instance fields
.field private bufferPosition:I

.field private final inputBuffer:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/fontbox/cff/DataInput;->bufferPosition:I

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/DataInput;->inputBuffer:[B

    return-void
.end method

.method private peek(I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/DataInput;->inputBuffer:[B

    iget v1, p0, Lcom/tom_roush/fontbox/cff/DataInput;->bufferPosition:I

    add-int/2addr v1, p1

    .line 214
    aget-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p1, p1, 0xff

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method private read()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/DataInput;->inputBuffer:[B

    iget v1, p0, Lcom/tom_roush/fontbox/cff/DataInput;->bufferPosition:I

    .line 200
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tom_roush/fontbox/cff/DataInput;->bufferPosition:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/cff/DataInput;->bufferPosition:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/DataInput;->inputBuffer:[B

    sget-object v2, Lcom/tom_roush/fontbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public hasRemaining()Z
    .locals 2

    iget v0, p0, Lcom/tom_roush/fontbox/cff/DataInput;->bufferPosition:I

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/DataInput;->inputBuffer:[B

    .line 50
    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/DataInput;->inputBuffer:[B

    .line 224
    array-length v0, v0

    return v0
.end method

.method public peekUnsignedByte(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/DataInput;->peek(I)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 125
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/DataInput;->inputBuffer:[B

    iget v1, p0, Lcom/tom_roush/fontbox/cff/DataInput;->bufferPosition:I

    .line 90
    aget-byte v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tom_roush/fontbox/cff/DataInput;->bufferPosition:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method

.method public readBytes(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/DataInput;->inputBuffer:[B

    .line 186
    array-length v1, v0

    iget v2, p0, Lcom/tom_roush/fontbox/cff/DataInput;->bufferPosition:I

    sub-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    .line 190
    new-array v1, p1, [B

    const/4 v3, 0x0

    .line 191
    invoke-static {v0, v2, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/tom_roush/fontbox/cff/DataInput;->bufferPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tom_roush/fontbox/cff/DataInput;->bufferPosition:I

    return-object v1

    .line 188
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 184
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "length is negative"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/DataInput;->read()I

    move-result v0

    .line 164
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/DataInput;->read()I

    move-result v1

    .line 165
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/DataInput;->read()I

    move-result v2

    .line 166
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/DataInput;->read()I

    move-result v3

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_0

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0

    .line 169
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/DataInput;->readUnsignedShort()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/DataInput;->read()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 110
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUnsignedShort()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/DataInput;->read()I

    move-result v0

    .line 148
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/DataInput;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0

    .line 151
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/cff/DataInput;->bufferPosition:I

    return-void
.end method
