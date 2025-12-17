.class public Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;
.super Lcom/tom_roush/fontbox/ttf/TTFTable;
.source "HorizontalMetricsTable.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "hmtx"


# instance fields
.field private advanceWidth:[I

.field private leftSideBearing:[S

.field private nonHorizontalLeftSideBearing:[S

.field private numHMetrics:I


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    return-void
.end method


# virtual methods
.method public getAdvanceWidth(I)I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->advanceWidth:[I

    .line 104
    array-length v1, v0

    if-nez v1, :cond_0

    const/16 p1, 0xfa

    return p1

    :cond_0
    iget v1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->numHMetrics:I

    if-ge p1, v1, :cond_1

    .line 110
    aget p1, v0, p1

    return p1

    .line 116
    :cond_1
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    return p1
.end method

.method public getLeftSideBearing(I)I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->leftSideBearing:[S

    .line 127
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->numHMetrics:I

    if-ge p1, v1, :cond_1

    .line 133
    aget-short p1, v0, p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->nonHorizontalLeftSideBearing:[S

    sub-int/2addr p1, v1

    .line 137
    aget-short p1, v0, p1

    return p1
.end method

.method read(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHorizontalHeader()Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 57
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getNumberOfHMetrics()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->numHMetrics:I

    .line 58
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getNumberOfGlyphs()I

    move-result p1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->numHMetrics:I

    .line 61
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->advanceWidth:[I

    .line 62
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->leftSideBearing:[S

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->numHMetrics:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->advanceWidth:[I

    .line 65
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v4

    aput v4, v3, v1

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->leftSideBearing:[S

    .line 66
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v4

    aput-short v4, v3, v1

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int v1, p1, v3

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v1

    .line 80
    :goto_1
    new-array v1, p1, [S

    iput-object v1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->nonHorizontalLeftSideBearing:[S

    int-to-long v3, v2

    .line 82
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->getLength()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    :goto_2
    if-ge v0, p1, :cond_3

    int-to-long v3, v2

    .line 86
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->getLength()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->nonHorizontalLeftSideBearing:[S

    .line 88
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v3

    aput-short v3, v1, v0

    add-int/lit8 v2, v2, 0x2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->initialized:Z

    return-void

    .line 55
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not get hmtx table"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
