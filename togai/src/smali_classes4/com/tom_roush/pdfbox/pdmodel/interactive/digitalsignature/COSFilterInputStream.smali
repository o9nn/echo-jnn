.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;
.super Ljava/io/FilterInputStream;
.source "COSFilterInputStream.java"


# instance fields
.field private position:J

.field private range:I

.field private ranges:[[I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[I)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->position:J

    .line 42
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->calculateRanges([I)V

    return-void
.end method

.method public constructor <init>([B[I)V
    .locals 1

    .line 47
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;-><init>(Ljava/io/InputStream;[I)V

    return-void
.end method

.method private calculateRanges([I)V
    .locals 4

    .line 87
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->ranges:[[I

    const/4 v0, 0x0

    .line 88
    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->ranges:[[I

    mul-int/lit8 v2, v0, 0x2

    .line 90
    aget v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    add-int/2addr v2, v3

    filled-new-array {v3, v2}, [I

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->range:I

    return-void
.end method

.method private getRemaining()J
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->ranges:[[I

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->range:I

    .line 97
    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->position:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private nextRange()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->range:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->ranges:[[I

    .line 102
    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->range:I

    :goto_0
    iget-wide v4, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->position:J

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->ranges:[[I

    iget v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->range:I

    .line 105
    aget-object v0, v0, v2

    aget v0, v0, v3

    int-to-long v6, v0

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    int-to-long v6, v0

    sub-long/2addr v6, v4

    .line 107
    invoke-super {p0, v6, v7}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    iget-wide v6, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->position:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->position:J

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FilterInputStream.skip() returns 0, range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->ranges:[[I

    iget v3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->range:I

    aget-object v2, v2, v3

    .line 111
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1

    :cond_2
    return v3
.end method


# virtual methods
.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->range:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->getRemaining()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->nextRange()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 57
    :cond_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    iget-wide v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->position:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->position:J

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->range:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->getRemaining()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->nextRange()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    int-to-long v0, p3

    .line 75
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->getRemaining()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    iget-wide p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->position:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->position:J

    return p1
.end method

.method public toByteArray()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lcom/tom_roush/pdfbox/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method
