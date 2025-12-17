.class public final Lcom/tom_roush/pdfbox/cos/COSString;
.super Lcom/tom_roush/pdfbox/cos/COSBase;
.source "COSString.java"


# static fields
.field public static final FORCE_PARSING:Z


# instance fields
.field private bytes:[B

.field private forceHexForm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.tom_roush.pdfbox.forceParsing"

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/tom_roush/pdfbox/cos/COSString;->FORCE_PARSING:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 72
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSBase;-><init>()V

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v0, v3

    .line 77
    invoke-static {v4}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->containsChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    sget-object v0, Lcom/tom_roush/pdfbox/util/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 93
    array-length v0, p1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSString;->bytes:[B

    const/4 v3, -0x2

    .line 94
    aput-byte v3, v0, v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 95
    aput-byte v3, v0, v4

    .line 96
    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSString;->bytes:[B

    :goto_1
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSBase;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSString;->setValue([B)V

    return-void
.end method

.method public static parseHex(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSString;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/16 v2, 0x30

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    add-int/lit8 v4, v3, 0x2

    .line 123
    :try_start_0
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-boolean v5, Lcom/tom_roush/pdfbox/cos/COSString;->FORCE_PARSING:Z

    if-eqz v5, :cond_1

    const-string v3, "PdfBox-Android"

    const-string v5, "Encountered a malformed hex string"

    .line 129
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x3f

    .line 130
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    move v3, v4

    goto :goto_0

    .line 134
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid hex string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 139
    :cond_2
    new-instance p0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    return-object p0
.end method


# virtual methods
.method public accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-interface {p1, p0}, Lcom/tom_roush/pdfbox/cos/ICOSVisitor;->visitFromString(Lcom/tom_roush/pdfbox/cos/COSString;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 245
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSString;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 247
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSString;

    .line 248
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSString;->forceHexForm:Z

    iget-boolean p1, p1, Lcom/tom_roush/pdfbox/cos/COSString;->forceHexForm:Z

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getASCII()Ljava/lang/String;
    .locals 3

    .line 206
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSString;->bytes:[B

    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSString;->bytes:[B

    return-object v0
.end method

.method public getForceHexForm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSString;->forceHexForm:Z

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSString;->bytes:[B

    .line 181
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 183
    aget-byte v1, v0, v1

    and-int/lit16 v3, v1, 0xff

    const/4 v4, 0x1

    const/16 v5, 0xfe

    const/16 v6, 0xff

    if-ne v3, v5, :cond_0

    aget-byte v3, v0, v4

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_0

    .line 186
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSString;->bytes:[B

    array-length v3, v1

    sub-int/2addr v3, v2

    sget-object v4, Lcom/tom_roush/pdfbox/util/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    :cond_0
    and-int/2addr v1, v6

    if-ne v1, v6, :cond_1

    .line 188
    aget-byte v1, v0, v4

    and-int/2addr v1, v6

    if-ne v1, v5, :cond_1

    .line 191
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSString;->bytes:[B

    array-length v3, v1

    sub-int/2addr v3, v2

    sget-object v4, Lcom/tom_roush/pdfbox/util/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    .line 195
    :cond_1
    invoke-static {v0}, Lcom/tom_roush/pdfbox/cos/PDFDocEncoding;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSString;->bytes:[B

    .line 257
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iget-boolean v1, p0, Lcom/tom_roush/pdfbox/cos/COSString;->forceHexForm:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setForceHexForm(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/cos/COSString;->forceHexForm:Z

    return-void
.end method

.method public setValue([B)V
    .locals 0

    .line 149
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSString;->bytes:[B

    return-void
.end method

.method public toHexString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSString;->bytes:[B

    .line 226
    invoke-static {v0}, Lcom/tom_roush/pdfbox/util/Hex;->getString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "COSString{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
