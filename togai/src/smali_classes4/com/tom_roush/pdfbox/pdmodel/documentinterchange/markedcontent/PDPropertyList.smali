.class public Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;
.super Ljava/lang/Object;
.source "PDPropertyList.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field protected final dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method protected constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public static create(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;
    .locals 2

    .line 43
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OCG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0

    .line 48
    :cond_0
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OCMD:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentMembershipDictionary;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentMembershipDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0

    .line 55
    :cond_1
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method
