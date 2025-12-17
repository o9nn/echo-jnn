.class public Lcom/tom_roush/fontbox/ttf/GlyphTable;
.super Lcom/tom_roush/fontbox/ttf/TTFTable;
.source "GlyphTable.java"


# static fields
.field private static final MAX_CACHED_GLYPHS:I = 0x64

.field private static final MAX_CACHE_SIZE:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "glyf"


# instance fields
.field private cached:I

.field private data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

.field private glyphs:[Lcom/tom_roush/fontbox/ttf/GlyphData;

.field private hmt:Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;

.field private loca:Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;

.field private numGlyphs:I


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->cached:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->hmt:Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;

    return-void
.end method

.method private getGlyphData(I)Lcom/tom_roush/fontbox/ttf/GlyphData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    new-instance v0, Lcom/tom_roush/fontbox/ttf/GlyphData;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/ttf/GlyphData;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->hmt:Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v1, p1}, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->getLeftSideBearing(I)I

    move-result p1

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 219
    invoke-virtual {v0, p0, v1, p1}, Lcom/tom_roush/fontbox/ttf/GlyphData;->initData(Lcom/tom_roush/fontbox/ttf/GlyphTable;Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V

    .line 221
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyphData;->getDescription()Lcom/tom_roush/fontbox/ttf/GlyphDescription;

    move-result-object p1

    invoke-interface {p1}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->isComposite()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 223
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyphData;->getDescription()Lcom/tom_roush/fontbox/ttf/GlyphDescription;

    move-result-object p1

    invoke-interface {p1}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->resolve()V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getGlyph(I)Lcom/tom_roush/fontbox/ttf/GlyphData;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_4

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->numGlyphs:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->glyphs:[Lcom/tom_roush/fontbox/ttf/GlyphData;

    if-eqz v0, :cond_1

    .line 170
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 179
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->loca:Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;

    .line 182
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;->getOffsets()[J

    move-result-object v1

    .line 184
    aget-wide v2, v1, p1

    add-int/lit8 v4, p1, 0x1

    aget-wide v4, v1, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 189
    new-instance v1, Lcom/tom_roush/fontbox/ttf/GlyphData;

    invoke-direct {v1}, Lcom/tom_roush/fontbox/ttf/GlyphData;-><init>()V

    .line 190
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/GlyphData;->initEmptyData()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 195
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->getCurrentPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 197
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/GlyphTable;->getOffset()J

    move-result-wide v5

    aget-wide v7, v1, p1

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    .line 199
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/GlyphTable;->getGlyphData(I)Lcom/tom_roush/fontbox/ttf/GlyphData;

    move-result-object v1

    iget-object v4, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 202
    invoke-virtual {v4, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    :goto_0
    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->glyphs:[Lcom/tom_roush/fontbox/ttf/GlyphData;

    if-eqz v2, :cond_3

    .line 205
    aget-object v3, v2, p1

    if-nez v3, :cond_3

    iget v3, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->cached:I

    const/16 v4, 0x64

    if-ge v3, v4, :cond_3

    .line 207
    aput-object v1, v2, p1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->cached:I

    .line 211
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGlyphs()[Lcom/tom_roush/fontbox/ttf/GlyphData;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 101
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->loca:Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;

    .line 104
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;->getOffsets()[J

    move-result-object v1

    iget v2, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->numGlyphs:I

    .line 110
    aget-wide v2, v1, v2

    .line 111
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/GlyphTable;->getOffset()J

    move-result-wide v4

    iget-object v6, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->glyphs:[Lcom/tom_roush/fontbox/ttf/GlyphData;

    if-nez v6, :cond_0

    iget v6, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->numGlyphs:I

    .line 114
    new-array v6, v6, [Lcom/tom_roush/fontbox/ttf/GlyphData;

    iput-object v6, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->glyphs:[Lcom/tom_roush/fontbox/ttf/GlyphData;

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget v7, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->numGlyphs:I

    const/4 v8, 0x1

    if-ge v6, v7, :cond_5

    const-wide/16 v9, 0x0

    cmp-long v7, v2, v9

    if-eqz v7, :cond_1

    .line 120
    aget-wide v9, v1, v6

    cmp-long v7, v2, v9

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v6, 0x1

    .line 126
    aget-wide v9, v1, v7

    aget-wide v11, v1, v6

    cmp-long v9, v9, v11

    if-gtz v9, :cond_2

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->glyphs:[Lcom/tom_roush/fontbox/ttf/GlyphData;

    .line 130
    aget-object v9, v9, v6

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    add-long/2addr v11, v4

    .line 136
    invoke-virtual {v9, v11, v12}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    iget-object v9, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->glyphs:[Lcom/tom_roush/fontbox/ttf/GlyphData;

    .line 138
    aget-object v10, v9, v6

    if-nez v10, :cond_4

    iget v10, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->cached:I

    add-int/2addr v10, v8

    iput v10, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->cached:I

    .line 142
    :cond_4
    invoke-direct {p0, v6}, Lcom/tom_roush/fontbox/ttf/GlyphTable;->getGlyphData(I)Lcom/tom_roush/fontbox/ttf/GlyphData;

    move-result-object v8

    aput-object v8, v9, v6

    :goto_1
    move v6, v7

    goto :goto_0

    .line 144
    :cond_5
    :goto_2
    iput-boolean v8, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->initialized:Z

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->glyphs:[Lcom/tom_roush/fontbox/ttf/GlyphData;

    .line 145
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 146
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method read(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getIndexToLocation()Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->loca:Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;

    .line 70
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getNumberOfGlyphs()I

    move-result p1

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->numGlyphs:I

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_0

    .line 75
    new-array p1, p1, [Lcom/tom_roush/fontbox/ttf/GlyphData;

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->glyphs:[Lcom/tom_roush/fontbox/ttf/GlyphData;

    :cond_0
    iput-object p2, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 84
    iget-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->font:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHorizontalMetrics()Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->hmt:Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->initialized:Z

    return-void
.end method

.method public setGlyphs([Lcom/tom_roush/fontbox/ttf/GlyphData;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphTable;->glyphs:[Lcom/tom_roush/fontbox/ttf/GlyphData;

    return-void
.end method
