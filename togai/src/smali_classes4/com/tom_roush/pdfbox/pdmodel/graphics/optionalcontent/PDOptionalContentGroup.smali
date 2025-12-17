.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;
.super Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;
.source "PDOptionalContentGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 2

    .line 45
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 46
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->OCG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Provided dictionary is not of type \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OCG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;-><init>()V

    .line 35
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->OCG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRenderState(Lcom/tom_roush/pdfbox/rendering/RenderDestination;)Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "Usage"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 127
    sget-object v2, Lcom/tom_roush/pdfbox/rendering/RenderDestination;->PRINT:Lcom/tom_roush/pdfbox/rendering/RenderDestination;

    invoke-virtual {v2, p1}, Lcom/tom_roush/pdfbox/rendering/RenderDestination;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "Print"

    .line 129
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "PrintState"

    .line 130
    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    goto :goto_1

    .line 132
    :cond_1
    sget-object v2, Lcom/tom_roush/pdfbox/rendering/RenderDestination;->VIEW:Lcom/tom_roush/pdfbox/rendering/RenderDestination;

    invoke-virtual {v2, p1}, Lcom/tom_roush/pdfbox/rendering/RenderDestination;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "View"

    .line 134
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "ViewState"

    .line 135
    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    goto :goto_1

    :cond_3
    :goto_0
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_6

    const-string p1, "Export"

    .line 140
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "ExportState"

    .line 141
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    goto :goto_3

    :cond_5
    :goto_2
    move-object p1, v1

    :cond_6
    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    .line 144
    :cond_7
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;->valueOf(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;

    move-result-object v1

    :goto_4
    return-object v1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
