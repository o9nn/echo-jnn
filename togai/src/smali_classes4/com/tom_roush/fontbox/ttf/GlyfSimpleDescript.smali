.class public Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;
.super Lcom/tom_roush/fontbox/ttf/GlyfDescript;
.source "GlyfSimpleDescript.java"


# instance fields
.field private endPtsOfContours:[I

.field private flags:[B

.field private final pointCount:I

.field private xCoordinates:[S

.field private yCoordinates:[S


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/fontbox/ttf/GlyfDescript;-><init>(SLcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->pointCount:I

    return-void
.end method

.method constructor <init>(SLcom/tom_roush/fontbox/ttf/TTFDataStream;S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/fontbox/ttf/GlyfDescript;-><init>(SLcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->pointCount:I

    return-void

    .line 73
    :cond_0
    invoke-virtual {p2, p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShortArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->endPtsOfContours:[I

    add-int/lit8 v2, p1, -0x1

    .line 75
    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const p1, 0xffff

    if-ne v1, p1, :cond_1

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->pointCount:I

    return-void

    :cond_1
    add-int/2addr v1, v2

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->pointCount:I

    .line 85
    new-array p1, v1, [B

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->flags:[B

    .line 86
    new-array p1, v1, [S

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->xCoordinates:[S

    .line 87
    new-array p1, v1, [S

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->yCoordinates:[S

    .line 89
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p1

    .line 90
    invoke-virtual {p0, p2, p1}, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->readInstructions(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V

    .line 91
    invoke-direct {p0, v1, p2}, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->readFlags(ILcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    .line 92
    invoke-direct {p0, v1, p2, p3}, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->readCoords(ILcom/tom_roush/fontbox/ttf/TTFDataStream;S)V

    return-void
.end method

.method private readCoords(ILcom/tom_roush/fontbox/ttf/TTFDataStream;S)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->flags:[B

    .line 158
    aget-byte v2, v2, v1

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 162
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedByte()I

    move-result v2

    int-to-short v2, v2

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 169
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedByte()I

    move-result v2

    int-to-short v2, v2

    sub-int/2addr p3, v2

    goto :goto_2

    .line 173
    :cond_1
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v2

    :goto_1
    add-int/2addr p3, v2

    :goto_2
    int-to-short p3, p3

    :cond_2
    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->xCoordinates:[S

    .line 176
    aput-short p3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move p3, v0

    :goto_3
    if-ge v0, p1, :cond_7

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->flags:[B

    .line 181
    aget-byte v1, v1, v0

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 185
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedByte()I

    move-result v1

    int-to-short v1, v1

    goto :goto_4

    :cond_4
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 192
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedByte()I

    move-result v1

    int-to-short v1, v1

    sub-int/2addr p3, v1

    goto :goto_5

    .line 196
    :cond_5
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v1

    :goto_4
    add-int/2addr p3, v1

    :goto_5
    int-to-short p3, p3

    :cond_6
    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->yCoordinates:[S

    .line 199
    aput-short p3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private readFlags(ILcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->flags:[B

    .line 210
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedByte()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->flags:[B

    .line 211
    aget-byte v1, v1, v0

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 213
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedByte()I

    move-result v1

    move v3, v2

    :goto_1
    if-gt v3, v1, :cond_1

    add-int v4, v0, v3

    iget-object v5, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->flags:[B

    .line 216
    array-length v6, v5

    if-lt v4, v6, :cond_0

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "repeat count ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") higher than remaining space"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PdfBox-Android"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 221
    :cond_0
    aget-byte v6, v5, v0

    aput-byte v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    :cond_2
    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getEndPtOfContours(I)I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->endPtsOfContours:[I

    .line 101
    aget p1, v0, p1

    return p1
.end method

.method public getFlags(I)B
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->flags:[B

    .line 110
    aget-byte p1, v0, p1

    return p1
.end method

.method public getPointCount()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->pointCount:I

    return v0
.end method

.method public getXCoordinate(I)S
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->xCoordinates:[S

    .line 119
    aget-short p1, v0, p1

    return p1
.end method

.method public getYCoordinate(I)S
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;->yCoordinates:[S

    .line 128
    aget-short p1, v0, p1

    return p1
.end method

.method public isComposite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
