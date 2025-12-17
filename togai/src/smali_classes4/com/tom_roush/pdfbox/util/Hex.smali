.class public final Lcom/tom_roush/pdfbox/util/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final HEX_BYTES:[B

.field private static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/tom_roush/pdfbox/util/Hex;->HEX_BYTES:[B

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tom_roush/pdfbox/util/Hex;->HEX_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 8

    const-string v0, "PdfBox-Android"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "java.util.Base64"

    .line 197
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getDecoder"

    new-array v5, v2, [Ljava/lang/Class;

    .line 198
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 199
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "decode"

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "\\s"

    const-string v7, ""

    .line 201
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    .line 225
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v3

    .line 221
    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v3

    .line 217
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v3

    .line 213
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception v3

    .line 209
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_5
    move-exception v3

    .line 205
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :try_start_1
    const-string v3, "javax.xml.bind.DatatypeConverter"

    .line 230
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "parseBase64Binary"

    new-array v1, v1, [Ljava/lang/Class;

    .line 231
    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 232
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    .line 256
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_7
    move-exception p0

    .line 252
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_8
    move-exception p0

    .line 248
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_9
    move-exception p0

    .line 244
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_a
    move-exception p0

    .line 240
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_b
    move-exception p0

    .line 236
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const-string p0, "Can\'t decode base64 value, try adding javax.xml.bind:jaxb-api to your build"

    .line 258
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v2, [B

    return-object p0
.end method

.method public static decodeHex(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 273
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 275
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x2

    .line 281
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    .line 284
    :try_start_0
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t parse "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", aborting decode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PdfBox-Android"

    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytes(B)[B
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    sget-object v1, Lcom/tom_roush/pdfbox/util/Hex;->HEX_BYTES:[B

    .line 73
    invoke-static {p0}, Lcom/tom_roush/pdfbox/util/Hex;->getHighNibble(B)I

    move-result v2

    aget-byte v2, v1, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    invoke-static {p0}, Lcom/tom_roush/pdfbox/util/Hex;->getLowNibble(B)I

    move-result p0

    aget-byte p0, v1, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static getBytes([B)[B
    .locals 5

    .line 81
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 82
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    sget-object v3, Lcom/tom_roush/pdfbox/util/Hex;->HEX_BYTES:[B

    .line 84
    aget-byte v4, p0, v1

    invoke-static {v4}, Lcom/tom_roush/pdfbox/util/Hex;->getHighNibble(B)I

    move-result v4

    aget-byte v4, v3, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 85
    aget-byte v4, p0, v1

    invoke-static {v4}, Lcom/tom_roush/pdfbox/util/Hex;->getLowNibble(B)I

    move-result v4

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getChars(S)[C
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [C

    sget-object v1, Lcom/tom_roush/pdfbox/util/Hex;->HEX_CHARS:[C

    shr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0xf

    .line 96
    aget-char v2, v1, v2

    const/4 v3, 0x0

    aput-char v2, v0, v3

    shr-int/lit8 v2, p0, 0x8

    and-int/lit8 v2, v2, 0xf

    .line 97
    aget-char v2, v1, v2

    const/4 v3, 0x1

    aput-char v2, v0, v3

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 98
    aget-char v2, v1, v2

    const/4 v3, 0x2

    aput-char v2, v0, v3

    and-int/lit8 p0, p0, 0xf

    .line 99
    aget-char p0, v1, p0

    const/4 v1, 0x3

    aput-char p0, v0, v1

    return-object v0
.end method

.method public static getCharsUTF16BE(Ljava/lang/String;)[C
    .locals 8

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    .line 122
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 124
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v2, 0x1

    sget-object v5, Lcom/tom_roush/pdfbox/util/Hex;->HEX_CHARS:[C

    shr-int/lit8 v6, v3, 0xc

    and-int/lit8 v6, v6, 0xf

    .line 125
    aget-char v6, v5, v6

    aput-char v6, v0, v2

    add-int/lit8 v6, v2, 0x2

    shr-int/lit8 v7, v3, 0x8

    and-int/lit8 v7, v7, 0xf

    .line 126
    aget-char v7, v5, v7

    aput-char v7, v0, v4

    add-int/lit8 v4, v2, 0x3

    shr-int/lit8 v7, v3, 0x4

    and-int/lit8 v7, v7, 0xf

    .line 127
    aget-char v7, v5, v7

    aput-char v7, v0, v6

    add-int/lit8 v2, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 128
    aget-char v3, v5, v3

    aput-char v3, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getHighNibble(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xf0

    shr-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private static getLowNibble(B)I
    .locals 0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static getString(B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [C

    sget-object v1, Lcom/tom_roush/pdfbox/util/Hex;->HEX_CHARS:[C

    .line 51
    invoke-static {p0}, Lcom/tom_roush/pdfbox/util/Hex;->getHighNibble(B)I

    move-result v2

    aget-char v2, v1, v2

    const/4 v3, 0x0

    aput-char v2, v0, v3

    invoke-static {p0}, Lcom/tom_roush/pdfbox/util/Hex;->getLowNibble(B)I

    move-result p0

    aget-char p0, v1, p0

    const/4 v1, 0x1

    aput-char p0, v0, v1

    .line 52
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static getString([B)Ljava/lang/String;
    .locals 6

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 61
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    sget-object v4, Lcom/tom_roush/pdfbox/util/Hex;->HEX_CHARS:[C

    .line 63
    invoke-static {v3}, Lcom/tom_roush/pdfbox/util/Hex;->getHighNibble(B)I

    move-result v5

    aget-char v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/tom_roush/pdfbox/util/Hex;->getLowNibble(B)I

    move-result v3

    aget-char v3, v4, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeHexByte(BLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/tom_roush/pdfbox/util/Hex;->HEX_BYTES:[B

    .line 142
    invoke-static {p0}, Lcom/tom_roush/pdfbox/util/Hex;->getHighNibble(B)I

    move-result v1

    aget-byte v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 143
    invoke-static {p0}, Lcom/tom_roush/pdfbox/util/Hex;->getLowNibble(B)I

    move-result p0

    aget-byte p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeHexBytes([BLjava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    .line 156
    invoke-static {v2, p1}, Lcom/tom_roush/pdfbox/util/Hex;->writeHexByte(BLjava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
