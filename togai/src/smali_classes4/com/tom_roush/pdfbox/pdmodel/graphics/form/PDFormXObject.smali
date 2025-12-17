.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;
.source "PDFormXObject.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/contentstream/PDContentStream;


# instance fields
.field private final cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

.field private group:Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V
    .locals 1

    .line 79
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FORM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V
    .locals 1

    .line 89
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FORM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 1

    .line 99
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FORM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSName;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V
    .locals 1

    .line 69
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FORM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    return-void
.end method


# virtual methods
.method public getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BBOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    .line 197
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getContentStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;
    .locals 2

    .line 141
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v1

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

    .line 147
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getFormType()I
    .locals 3

    .line 109
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FORMTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public getGroup()Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->group:Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->GROUP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 133
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->group:Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->group:Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;

    return-object v0
.end method

.method public getMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 2

    .line 225
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MATRIX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->createMatrix(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getOptionalContent()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 274
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 276
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;->create(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;
    .locals 3

    .line 159
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RESOURCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    invoke-direct {v1, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V

    return-object v1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RESOURCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStructParents()I
    .locals 2

    .line 253
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STRUCT_PARENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    return v0
.end method

.method public setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 2

    if-nez p1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->BBOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BBOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_0
    return-void
.end method

.method public setFormType(I)V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FORMTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setMatrix(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 6

    .line 234
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    const/4 v1, 0x6

    new-array v2, v1, [D

    .line 236
    invoke-virtual {p1, v2}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getMatrix([D)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_0

    .line 237
    aget-wide v3, v2, p1

    .line 239
    new-instance v5, Lcom/tom_roush/pdfbox/cos/COSFloat;

    double-to-float v3, v3

    invoke-direct {v5, v3}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MATRIX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setOptionalContent(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)V
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RESOURCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setStructParents(I)V
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STRUCT_PARENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method
