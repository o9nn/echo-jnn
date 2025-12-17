.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;
.source "PDTilingPattern.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/contentstream/PDContentStream;


# static fields
.field public static final PAINT_COLORED:I = 0x1

.field public static final PAINT_UNCOLORED:I = 0x2

.field public static final TILING_CONSTANT_SPACING:I = 0x1

.field public static final TILING_CONSTANT_SPACING_FASTER_TILING:I = 0x3

.field public static final TILING_NO_DISTORTION:I = 0x2


# instance fields
.field private final resourceCache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 60
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;-><init>()V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 61
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->PATTERN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PATTERN_TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    .line 65
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->resourceCache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->resourceCache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    return-void
.end method


# virtual methods
.method public getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 2

    .line 221
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BBOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 222
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 224
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getContentStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;
    .locals 2

    .line 170
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    return-object v0
.end method

.method public getContents()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 177
    instance-of v0, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPaintType()I
    .locals 3

    .line 111
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAINT_TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public getPatternType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;
    .locals 2

    .line 193
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RESOURCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 194
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 196
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getTilingType()I
    .locals 3

    .line 129
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TILING_TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public getXStep()F
    .locals 3

    .line 147
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->X_STEP:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public getYStep()F
    .locals 3

    .line 165
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->Y_STEP:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 2

    if-nez p1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->BBOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BBOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_0
    return-void
.end method

.method public setPaintType(I)V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAINT_TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public final setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RESOURCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setTilingType(I)V
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TILING_TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setXStep(F)V
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->X_STEP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method

.method public setYStep(F)V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->Y_STEP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method
