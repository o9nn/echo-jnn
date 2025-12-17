.class public Lcom/tom_roush/pdfbox/pdmodel/common/PDTypedDictionaryWrapper;
.super Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;
.source "PDTypedDictionaryWrapper.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDTypedDictionaryWrapper;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDTypedDictionaryWrapper;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
