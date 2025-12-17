.class public Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;
.super Lcom/tom_roush/fontbox/ttf/TTFTable;
.source "VerticalMetricsTable.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "vmtx"


# instance fields
.field private additionalTopSideBearing:[S

.field private advanceHeight:[I

.field private numVMetrics:I

.field private topSideBearing:[S


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    return-void
.end method


# virtual methods
.method public getAdvanceHeight(I)I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->numVMetrics:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->advanceHeight:[I

    .line 127
    aget p1, v0, p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->advanceHeight:[I

    .line 133
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    return p1
.end method

.method public getTopSideBearing(I)I
    .locals 2

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->numVMetrics:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->topSideBearing:[S

    .line 110
    aget-short p1, v0, p1

    return p1

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->additionalTopSideBearing:[S

    sub-int/2addr p1, v0

    .line 114
    aget-short p1, v1, p1

    return p1
.end method

.method read(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getVerticalHeader()Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 64
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->getNumberOfVMetrics()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->numVMetrics:I

    .line 65
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getNumberOfGlyphs()I

    move-result p1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->numVMetrics:I

    .line 68
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->advanceHeight:[I

    .line 69
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->topSideBearing:[S

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->numVMetrics:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->advanceHeight:[I

    .line 72
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v4

    aput v4, v3, v1

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->topSideBearing:[S

    .line 73
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v4

    aput-short v4, v3, v1

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-long v3, v2

    .line 77
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->getLength()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    iget v1, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->numVMetrics:I

    sub-int v1, p1, v1

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v1

    .line 87
    :goto_1
    new-array v1, p1, [S

    iput-object v1, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->additionalTopSideBearing:[S

    :goto_2
    if-ge v0, p1, :cond_3

    int-to-long v3, v2

    .line 90
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->getLength()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->additionalTopSideBearing:[S

    .line 92
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v3

    aput-short v3, v1, v0

    add-int/lit8 v2, v2, 0x2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->initialized:Z

    return-void

    .line 62
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not get vhea table"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
