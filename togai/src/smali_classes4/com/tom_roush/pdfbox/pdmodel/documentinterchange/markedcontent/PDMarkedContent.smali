.class public Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;
.super Ljava/lang/Object;
.source "PDMarkedContent.java"


# instance fields
.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final properties:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->properties:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->contents:Ljava/util/List;

    return-void
.end method

.method public static create(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;
    .locals 1

    .line 45
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ARTIFACT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDArtifactMarkedContent;

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDArtifactMarkedContent;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object p0

    .line 49
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;-><init>(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0
.end method


# virtual methods
.method public addMarkedContent(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;)V
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addText(Lcom/tom_roush/pdfbox/text/TextPosition;)V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addXObject(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActualText()Ljava/lang/String;
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->getProperties()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->getProperties()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ACTUAL_TEXT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAlternateDescription()Ljava/lang/String;
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->getProperties()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->getProperties()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ALT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->contents:Ljava/util/List;

    return-object v0
.end method

.method public getExpandedForm()Ljava/lang/String;
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->getProperties()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->getProperties()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->E:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->getProperties()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->getProperties()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LANG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMCID()I
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->getProperties()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->getProperties()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MCID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getProperties()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->properties:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->properties:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->contents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
