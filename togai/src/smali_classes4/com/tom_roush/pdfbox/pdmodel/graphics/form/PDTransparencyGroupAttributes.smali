.class public final Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;
.super Ljava/lang/Object;
.source "PDTransparencyGroupAttributes.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 43
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->TRANSPARENCY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;->getColorSpace(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    return-object v0
.end method

.method public getColorSpace(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->create(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    return-object p1
.end method

.method public isIsolated()Z
    .locals 3

    .line 94
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->I:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public isKnockout()Z
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method
