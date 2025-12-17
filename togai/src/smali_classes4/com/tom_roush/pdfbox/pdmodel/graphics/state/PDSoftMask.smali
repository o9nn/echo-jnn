.class public final Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;
.super Ljava/lang/Object;
.source "PDSoftMask.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private backdropColor:Lcom/tom_roush/pdfbox/cos/COSArray;

.field private ctm:Lcom/tom_roush/pdfbox/util/Matrix;

.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private group:Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;

.field private subType:Lcom/tom_roush/pdfbox/cos/COSName;

.field private transferFunction:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->subType:Lcom/tom_roush/pdfbox/cos/COSName;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->group:Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->backdropColor:Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->transferFunction:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public static create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;
    .locals 4

    .line 47
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v1, "Invalid SMask "

    const-string v2, "PdfBox-Android"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->NONE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v3

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 59
    :cond_1
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_2

    .line 61
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;

    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method


# virtual methods
.method public getBackdropColor()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->backdropColor:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->backdropColor:Lcom/tom_roush/pdfbox/cos/COSArray;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->backdropColor:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getGroup()Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->group:Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->G:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 122
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;->createXObject(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;

    move-result-object v0

    .line 123
    instance-of v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;

    if-eqz v1, :cond_0

    .line 125
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->group:Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->group:Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;

    return-object v0
.end method

.method public getInitialTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->ctm:Lcom/tom_roush/pdfbox/util/Matrix;

    return-object v0
.end method

.method public getSubType()Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->subType:Lcom/tom_roush/pdfbox/cos/COSName;

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->subType:Lcom/tom_roush/pdfbox/cos/COSName;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->subType:Lcom/tom_roush/pdfbox/cos/COSName;

    return-object v0
.end method

.method public getTransferFunction()Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->transferFunction:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->transferFunction:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->transferFunction:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    return-object v0
.end method

.method setInitialTransformationMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->ctm:Lcom/tom_roush/pdfbox/util/Matrix;

    return-void
.end method
