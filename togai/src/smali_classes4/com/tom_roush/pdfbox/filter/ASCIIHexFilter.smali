.class final Lcom/tom_roush/pdfbox/filter/ASCIIHexFilter;
.super Lcom/tom_roush/pdfbox/filter/Filter;
.source "ASCIIHexFilter.java"


# static fields
.field private static final REVERSE_HEX:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tom_roush/pdfbox/filter/ASCIIHexFilter;->REVERSE_HEX:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/Filter;-><init>()V

    return-void
.end method

.method private isEOD(I)Z
    .locals 1

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isWhitespace(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

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
.method public decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/filter/DecodeResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p4

    const/4 v0, -0x1

    if-eq p4, v0, :cond_6

    .line 72
    :goto_1
    invoke-direct {p0, p4}, Lcom/tom_roush/pdfbox/filter/ASCIIHexFilter;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p4

    goto :goto_1

    :cond_0
    if-eq p4, v0, :cond_6

    .line 76
    invoke-direct {p0, p4}, Lcom/tom_roush/pdfbox/filter/ASCIIHexFilter;->isEOD(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    sget-object v1, Lcom/tom_roush/pdfbox/filter/ASCIIHexFilter;->REVERSE_HEX:[I

    .line 81
    aget v2, v1, p4

    const-string v3, " char: "

    const-string v4, "Invalid hex, int: "

    const-string v5, "PdfBox-Android"

    if-ne v2, v0, :cond_2

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v6, p4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_2
    aget p4, v1, p4

    mul-int/lit8 p4, p4, 0x10

    .line 86
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v0, :cond_5

    .line 88
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/filter/ASCIIHexFilter;->isEOD(I)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 94
    :cond_3
    aget v6, v1, v2

    if-ne v6, v0, :cond_4

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_4
    aget v0, v1, v2

    add-int/2addr p4, v0

    .line 99
    invoke-virtual {p2, p4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 91
    :cond_5
    :goto_2
    invoke-virtual {p2, p4}, Ljava/io/OutputStream;->write(I)V

    .line 101
    :cond_6
    :goto_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 102
    new-instance p1, Lcom/tom_roush/pdfbox/filter/DecodeResult;

    invoke-direct {p1, p3}, Lcom/tom_roush/pdfbox/filter/DecodeResult;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object p1
.end method

.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    int-to-byte p3, p3

    .line 129
    invoke-static {p3, p2}, Lcom/tom_roush/pdfbox/util/Hex;->writeHexByte(BLjava/io/OutputStream;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
