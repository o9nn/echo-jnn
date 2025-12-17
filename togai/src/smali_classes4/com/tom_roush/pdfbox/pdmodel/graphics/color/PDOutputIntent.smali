.class public final Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;
.super Ljava/lang/Object;
.source "PDOutputIntent.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 45
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->OUTPUT_INTENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 46
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->GTS_PDFA1:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->configureOutputProfile(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object p1

    .line 48
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->DEST_OUTPUT_PROFILE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method private configureOutputProfile(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {v0, p1, p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 114
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->N:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-object v0
.end method


# virtual methods
.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getDestOutputIntent()Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 64
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DEST_OUTPUT_PROFILE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 69
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputCondition()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 79
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OUTPUT_CONDITION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputConditionIdentifier()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 89
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OUTPUT_CONDITION_IDENTIFIER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegistryName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 99
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->REGISTRY_NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 74
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setOutputCondition(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 84
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OUTPUT_CONDITION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setOutputConditionIdentifier(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 94
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OUTPUT_CONDITION_IDENTIFIER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setRegistryName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 104
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->REGISTRY_NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method
