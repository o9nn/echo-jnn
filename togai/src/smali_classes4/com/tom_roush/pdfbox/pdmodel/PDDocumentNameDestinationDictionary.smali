.class public Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDestinationDictionary;
.super Ljava/lang/Object;
.source "PDDocumentNameDestinationDictionary.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final nameDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDestinationDictionary;->nameDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDestinationDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDestinationDictionary;->nameDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getDestination(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDestinationDictionary;->nameDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 67
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 72
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;

    move-result-object p1

    return-object p1

    .line 76
    :cond_0
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_1

    .line 78
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 79
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
