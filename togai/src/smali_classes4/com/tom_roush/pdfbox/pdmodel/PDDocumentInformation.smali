.class public Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;
.super Ljava/lang/Object;
.source "PDDocumentInformation.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final info:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 112
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AUTHOR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getCreationDate()Ljava/util/Calendar;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 212
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CREATION_DATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDate(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 172
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CREATOR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomMetadataValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 282
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 152
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KEYWORDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataKeys()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 265
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 267
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getModificationDate()Ljava/util/Calendar;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 232
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MOD_DATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDate(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getProducer()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 192
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PRODUCER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyStringValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 82
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 132
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 92
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TITLE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrapped()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 253
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TRAPPED:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 122
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AUTHOR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setCreationDate(Ljava/util/Calendar;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 222
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CREATION_DATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDate(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)V

    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 182
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CREATOR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setCustomMetadataValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 293
    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 162
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KEYWORDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setModificationDate(Ljava/util/Calendar;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 242
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MOD_DATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDate(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)V

    return-void
.end method

.method public setProducer(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 202
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PRODUCER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 142
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 102
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TITLE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setTrapped(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "True"

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "False"

    .line 308
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Unknown"

    .line 309
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Valid values for trapped are \'True\', \'False\', or \'Unknown\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->info:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 315
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TRAPPED:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method
