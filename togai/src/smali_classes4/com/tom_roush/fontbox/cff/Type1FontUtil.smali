.class public final Lcom/tom_roush/fontbox/cff/Type1FontUtil;
.super Ljava/lang/Object;
.source "Type1FontUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charstringDecrypt([BI)[B
    .locals 1

    const/16 v0, 0x10ea

    .line 135
    invoke-static {p0, v0, p1}, Lcom/tom_roush/fontbox/cff/Type1FontUtil;->decrypt([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static charstringEncrypt([BI)[B
    .locals 1

    const/16 v0, 0x10ea

    .line 90
    invoke-static {p0, v0, p1}, Lcom/tom_roush/fontbox/cff/Type1FontUtil;->encrypt([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static decrypt([BII)[B
    .locals 5

    .line 140
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 145
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 147
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p1, 0x8

    xor-int/2addr v4, v3

    int-to-byte v4, v4

    .line 150
    aput-byte v4, v0, v2

    add-int/2addr v3, p1

    const p1, 0xce6d

    mul-int/2addr v3, p1

    add-int/lit16 v3, v3, 0x58bf

    const p1, 0xffff

    and-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_0
    array-length p0, p0

    sub-int/2addr p0, p2

    new-array p1, p0, [B

    .line 156
    invoke-static {v0, p2, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static eexecDecrypt([B)[B
    .locals 2

    const v0, 0xd971

    const/4 v1, 0x4

    .line 124
    invoke-static {p0, v0, v1}, Lcom/tom_roush/fontbox/cff/Type1FontUtil;->decrypt([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static eexecEncrypt([B)[B
    .locals 2

    const v0, 0xd971

    const/4 v1, 0x4

    .line 79
    invoke-static {p0, v0, v1}, Lcom/tom_roush/fontbox/cff/Type1FontUtil;->encrypt([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static encrypt([BII)[B
    .locals 4

    .line 95
    array-length v0, p0

    add-int/2addr v0, p2

    new-array v1, v0, [B

    sub-int v2, v0, p2

    const/4 v3, 0x0

    .line 97
    invoke-static {p0, v3, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    new-array p0, v0, [B

    :goto_0
    if-ge v3, v0, :cond_0

    .line 106
    aget-byte p2, v1, v3

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v2, p1, 0x8

    xor-int/2addr p2, v2

    int-to-byte v2, p2

    .line 109
    aput-byte v2, p0, v3

    add-int/2addr p2, p1

    const p1, 0xce6d

    mul-int/2addr p2, p1

    add-int/lit16 p2, p2, 0x58bf

    const p1, 0xffff

    and-int/2addr p1, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static hexDecode(Ljava/lang/String;)[B
    .locals 5

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 65
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 67
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static hexEncode([B)Ljava/lang/String;
    .locals 6

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string v4, "0"

    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
