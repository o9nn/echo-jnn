.class public Lcom/tom_roush/fontbox/ttf/GlyphData;
.super Ljava/lang/Object;
.source "GlyphData.java"


# instance fields
.field private boundingBox:Lcom/tom_roush/fontbox/util/BoundingBox;

.field private glyphDescription:Lcom/tom_roush/fontbox/ttf/GlyfDescript;

.field private numberOfContours:S

.field private xMax:S

.field private xMin:S

.field private yMax:S

.field private yMin:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->boundingBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->glyphDescription:Lcom/tom_roush/fontbox/ttf/GlyfDescript;

    return-void
.end method


# virtual methods
.method public getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->boundingBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    return-object v0
.end method

.method public getDescription()Lcom/tom_roush/fontbox/ttf/GlyphDescription;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->glyphDescription:Lcom/tom_roush/fontbox/ttf/GlyfDescript;

    return-object v0
.end method

.method public getNumberOfContours()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->numberOfContours:S

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    .line 128
    new-instance v0, Lcom/tom_roush/fontbox/ttf/GlyphRenderer;

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->glyphDescription:Lcom/tom_roush/fontbox/ttf/GlyfDescript;

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer;-><init>(Lcom/tom_roush/fontbox/ttf/GlyphDescription;)V

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer;->getPath()Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public getXMaximum()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->xMax:S

    return v0
.end method

.method public getXMinimum()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->xMin:S

    return v0
.end method

.method public getYMaximum()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->yMax:S

    return v0
.end method

.method public getYMinimum()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->yMin:S

    return v0
.end method

.method initData(Lcom/tom_roush/fontbox/ttf/GlyphTable;Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->numberOfContours:S

    .line 51
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->xMin:S

    .line 52
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->yMin:S

    .line 53
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->xMax:S

    .line 54
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->yMax:S

    .line 55
    new-instance v0, Lcom/tom_roush/fontbox/util/BoundingBox;

    iget-short v1, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->xMin:S

    int-to-float v1, v1

    iget-short v2, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->yMin:S

    int-to-float v2, v2

    iget-short v3, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->xMax:S

    int-to-float v3, v3

    iget-short v4, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->yMax:S

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tom_roush/fontbox/util/BoundingBox;-><init>(FFFF)V

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->boundingBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->numberOfContours:S

    if-ltz v0, :cond_0

    iget-short p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->xMin:S

    sub-int/2addr p3, p1

    int-to-short p1, p3

    .line 61
    new-instance p3, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->numberOfContours:S

    invoke-direct {p3, v0, p2, p1}, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;-><init>(SLcom/tom_roush/fontbox/ttf/TTFDataStream;S)V

    iput-object p3, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->glyphDescription:Lcom/tom_roush/fontbox/ttf/GlyfDescript;

    goto :goto_0

    .line 66
    :cond_0
    new-instance p3, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;

    invoke-direct {p3, p2, p1}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;-><init>(Lcom/tom_roush/fontbox/ttf/TTFDataStream;Lcom/tom_roush/fontbox/ttf/GlyphTable;)V

    iput-object p3, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->glyphDescription:Lcom/tom_roush/fontbox/ttf/GlyfDescript;

    :goto_0
    return-void
.end method

.method initEmptyData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/ttf/GlyfSimpleDescript;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->glyphDescription:Lcom/tom_roush/fontbox/ttf/GlyfDescript;

    .line 78
    new-instance v0, Lcom/tom_roush/fontbox/util/BoundingBox;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/util/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->boundingBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    return-void
.end method

.method public setBoundingBox(Lcom/tom_roush/fontbox/util/BoundingBox;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->boundingBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    return-void
.end method

.method public setNumberOfContours(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphData;->numberOfContours:S

    return-void
.end method
