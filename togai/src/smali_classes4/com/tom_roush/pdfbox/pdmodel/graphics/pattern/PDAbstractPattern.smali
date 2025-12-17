.class public abstract Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;
.super Ljava/lang/Object;
.source "PDAbstractPattern.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field public static final TYPE_SHADING_PATTERN:I = 0x2

.field public static final TYPE_TILING_PATTERN:I = 0x1


# instance fields
.field private final patternDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;->patternDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 85
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->PATTERN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;->patternDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public static create(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-static {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;->create(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PATTERN_TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    .line 69
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDShadingPattern;

    invoke-direct {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDShadingPattern;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    .line 72
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error: Unknown pattern type "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_1
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;->patternDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 2

    .line 145
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MATRIX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->createMatrix(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPatternType()I
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 122
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PATTERN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMatrix(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 6

    .line 154
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    const/4 v1, 0x6

    new-array v2, v1, [D

    .line 156
    invoke-virtual {p1, v2}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getMatrix([D)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_0

    .line 157
    aget-wide v3, v2, p1

    .line 159
    new-instance v5, Lcom/tom_roush/pdfbox/cos/COSFloat;

    double-to-float v3, v3

    invoke-direct {v5, v3}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MATRIX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setPaintType(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;->patternDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 113
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAINT_TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setPatternType(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;->patternDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 131
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PATTERN_TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method
