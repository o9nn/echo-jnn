.class Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;
.super Ljava/lang/Object;
.source "RC4Cipher.java"


# instance fields
.field private b:I

.field private c:I

.field private final salt:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->salt:[I

    return-void
.end method

.method private static fixByte(B)I
    .locals 0

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    :cond_0
    return p0
.end method

.method private static swap([III)V
    .locals 2

    .line 93
    aget v0, p0, p1

    .line 94
    aget v1, p0, p2

    aput v1, p0, p1

    .line 95
    aput v0, p0, p2

    return-void
.end method


# virtual methods
.method public setKey([B)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->b:I

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->c:I

    .line 52
    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    array-length v1, p1

    const/16 v3, 0x20

    if-gt v1, v3, :cond_2

    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->salt:[I

    .line 56
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 58
    aput v1, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->salt:[I

    .line 63
    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 65
    aget-byte v4, p1, v1

    invoke-static {v4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->fixByte(B)I

    move-result v4

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->salt:[I

    aget v6, v5, v0

    add-int/2addr v4, v6

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x100

    .line 66
    invoke-static {v5, v0, v3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->swap([III)V

    add-int/2addr v1, v2

    .line 67
    array-length v4, p1

    rem-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "number of bytes must be between 1 and 32"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(BLjava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 108
    rem-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->b:I

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->salt:[I

    .line 109
    aget v2, v1, v0

    iget v3, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->c:I

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->c:I

    .line 110
    invoke-static {v1, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->swap([III)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->salt:[I

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->b:I

    .line 111
    aget v1, v0, v1

    iget v2, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->c:I

    aget v2, v0, v2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x100

    .line 112
    aget v0, v0, v1

    int-to-byte v0, v0

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 143
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0, v0, v2, v1, p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->write([BIILjava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write([BIILjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 163
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1, p4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->write(BLjava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write([BLjava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 127
    invoke-virtual {p0, v2, p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->write(BLjava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
