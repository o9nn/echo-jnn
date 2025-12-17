.class public Lcom/tom_roush/pdfbox/cos/COSDocument;
.super Lcom/tom_roush/pdfbox/cos/COSBase;
.source "COSDocument.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private closed:Z

.field private highestXRefObjectNumber:J

.field private isDecrypted:Z

.field private isXRefStream:Z

.field private final objectPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObjectKey;",
            "Lcom/tom_roush/pdfbox/cos/COSObject;",
            ">;"
        }
    .end annotation
.end field

.field private scratchFile:Lcom/tom_roush/pdfbox/io/ScratchFile;

.field private startXref:J

.field private final streams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSStream;",
            ">;"
        }
    .end annotation
.end field

.field private trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private version:F

.field private warnMissingClose:Z

.field private final xrefTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObjectKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-static {}, Lcom/tom_roush/pdfbox/io/ScratchFile;->getMainMemoryOnlyInstance()Lcom/tom_roush/pdfbox/io/ScratchFile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;-><init>(Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/io/ScratchFile;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSBase;-><init>()V

    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->version:F

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->objectPool:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->xrefTable:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->streams:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->warnMissingClose:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->isDecrypted:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->closed:Z

    iput-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->scratchFile:Lcom/tom_roush/pdfbox/io/ScratchFile;

    return-void
.end method


# virtual methods
.method public accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    invoke-interface {p1, p0}, Lcom/tom_roush/pdfbox/cos/ICOSVisitor;->visitFromDocument(Lcom/tom_roush/pdfbox/cos/COSDocument;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public addXRefTable(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObjectKey;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->xrefTable:Ljava/util/Map;

    .line 612
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getObjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "COSStream"

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 473
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 474
    instance-of v4, v2, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v4, :cond_1

    .line 476
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-static {v2, v3, v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeAndLogException(Ljava/io/Closeable;Ljava/lang/String;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->streams:Ljava/util/List;

    .line 479
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 481
    invoke-static {v2, v3, v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeAndLogException(Ljava/io/Closeable;Ljava/lang/String;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->scratchFile:Lcom/tom_roush/pdfbox/io/ScratchFile;

    if-eqz v0, :cond_4

    const-string v2, "ScratchFile"

    .line 485
    invoke-static {v0, v2, v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeAndLogException(Ljava/io/Closeable;Ljava/lang/String;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->closed:Z

    if-nez v1, :cond_5

    return-void

    .line 492
    :cond_5
    throw v1
.end method

.method public createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 2

    .line 116
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->scratchFile:Lcom/tom_roush/pdfbox/io/ScratchFile;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;-><init>(Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->streams:Ljava/util/List;

    .line 120
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createCOSStream(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 3

    .line 133
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->scratchFile:Lcom/tom_roush/pdfbox/io/ScratchFile;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;-><init>(Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    .line 134
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSBase;

    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public dereferenceObjectStreams()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->OBJ_STM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getObjectsByType(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 547
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 548
    new-instance v3, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;

    invoke-direct {v3, v2, p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/cos/COSDocument;)V

    .line 549
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->parse()V

    .line 550
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->getObjects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 552
    new-instance v4, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-direct {v4, v3}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(Lcom/tom_roush/pdfbox/cos/COSObject;)V

    iget-object v5, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->objectPool:Ljava/util/Map;

    .line 553
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->objectPool:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->xrefTable:Ljava/util/Map;

    .line 555
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->xrefTable:Ljava/util/Map;

    .line 556
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObjectNumber()J

    move-result-wide v7

    neg-long v7, v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 558
    :cond_2
    invoke-virtual {p0, v4}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getObjectFromPool(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v4

    .line 559
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tom_roush/pdfbox/cos/COSObject;->setObject(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->closed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->warnMissingClose:Z

    if-eqz v0, :cond_0

    const-string v0, "PdfBox-Android"

    const-string v1, "Warning: You did not close a PDF Document"

    .line 519
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->close()V

    :cond_1
    return-void
.end method

.method public getCatalog()Lcom/tom_roush/pdfbox/cos/COSObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->CATALOG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getObjectByType(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 376
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Catalog cannot be found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentID()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 328
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCRYPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getHighestXRefObjectNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->highestXRefObjectNumber:J

    return-wide v0
.end method

.method public getKey(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSObjectKey;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->objectPool:Ljava/util/Map;

    .line 246
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 248
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 250
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getObjectByType(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "PdfBox-Android"

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->objectPool:Ljava/util/Map;

    .line 151
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 153
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 154
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v4, :cond_0

    .line 158
    :try_start_0
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 159
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 160
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v4, :cond_1

    .line 162
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 163
    invoke-virtual {v3, p1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    if-eqz v3, :cond_0

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a /Name object after /Type, got \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 175
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getObjectFromPool(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)Lcom/tom_roush/pdfbox/cos/COSObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->objectPool:Ljava/util/Map;

    .line 579
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 584
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    if-eqz p1, :cond_1

    .line 587
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSObject;->setObjectNumber(J)V

    .line 588
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSObject;->setGenerationNumber(I)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->objectPool:Ljava/util/Map;

    .line 589
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getObjects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSObject;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->objectPool:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getObjectsByType(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ")",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "PdfBox-Android"

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->objectPool:Ljava/util/Map;

    .line 206
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 208
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    .line 209
    instance-of v5, v4, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v5, :cond_0

    .line 213
    :try_start_0
    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 214
    sget-object v5, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    .line 215
    instance-of v5, v4, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v5, :cond_1

    .line 217
    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 218
    invoke-virtual {v4, p1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_0

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a /Name object after /Type, got \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' instead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 230
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getObjectsByType(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getObjectsByType(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getStartXref()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->startXref:J

    return-wide v0
.end method

.method public getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getVersion()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->version:F

    return v0
.end method

.method public getXrefTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObjectKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->xrefTable:Ljava/util/Map;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->closed:Z

    return v0
.end method

.method public isDecrypted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->isDecrypted:Z

    return v0
.end method

.method public isEncrypted()Z
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 315
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCRYPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    instance-of v0, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isXRefStream()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->isXRefStream:Z

    return v0
.end method

.method public print()V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->objectPool:Ljava/util/Map;

    .line 261
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 263
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeObject(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)Lcom/tom_roush/pdfbox/cos/COSObject;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->objectPool:Ljava/util/Map;

    .line 602
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    return-object p1
.end method

.method public setDecrypted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->isDecrypted:Z

    return-void
.end method

.method public setDocumentID(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    .line 359
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setEncryptionDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 339
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCRYPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setHighestXRefObjectNumber(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->highestXRefObjectNumber:J

    return-void
.end method

.method public setIsXRefStream(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->isXRefStream:Z

    return-void
.end method

.method public setStartXref(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->startXref:J

    return-void
.end method

.method public setTrailer(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public setVersion(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->version:F

    return-void
.end method

.method public setWarnMissingClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/cos/COSDocument;->warnMissingClose:Z

    return-void
.end method
