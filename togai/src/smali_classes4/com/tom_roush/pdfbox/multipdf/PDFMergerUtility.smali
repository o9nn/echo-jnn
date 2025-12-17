.class public Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;
.super Ljava/lang/Object;
.source "PDFMergerUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;,
        Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;
    }
.end annotation


# instance fields
.field private acroFormMergeMode:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

.field private destinationDocumentInformation:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

.field private destinationFileName:Ljava/lang/String;

.field private destinationMetadata:Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;

.field private destinationStream:Ljava/io/OutputStream;

.field private documentMergeMode:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

.field private ignoreAcroFormErrors:Z

.field private nextFieldNum:I

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->ignoreAcroFormErrors:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationDocumentInformation:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationMetadata:Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;

    .line 94
    sget-object v0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;->PDFBOX_LEGACY_MODE:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->documentMergeMode:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    .line 95
    sget-object v0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;->PDFBOX_LEGACY_MODE:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->acroFormMergeMode:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->nextFieldNum:I

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->sources:Ljava/util/List;

    return-void
.end method

.method private acroFormJoinFieldsMode(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1287
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFields()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1290
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1294
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIELDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 1295
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 1297
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    goto :goto_0

    .line 1301
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 1304
    :goto_0
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFieldTree()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    .line 1308
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getField(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1312
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 1313
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_1

    .line 1317
    :cond_1
    invoke-direct {p0, p1, v2, v1}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->mergeFields(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;)V

    goto :goto_1

    .line 1320
    :cond_2
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->FIELDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_3
    return-void
.end method

.method private acroFormLegacyMode(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1431
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFields()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1434
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1442
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFieldTree()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "dummyFieldName"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    .line 1444
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getPartialName()Ljava/lang/String;

    move-result-object v1

    .line 1445
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    .line 1447
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\d+"

    .line 1448
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->nextFieldNum:I

    .line 1450
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->nextFieldNum:I

    goto :goto_0

    .line 1457
    :cond_1
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIELDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 1458
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_2

    .line 1460
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    goto :goto_1

    .line 1464
    :cond_2
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 1467
    :goto_1
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFields()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    .line 1469
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 1472
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getField(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1474
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->nextFieldNum:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->nextFieldNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 1476
    :cond_3
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_2

    .line 1478
    :cond_4
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->FIELDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_5
    return-void
.end method

.method private cleanupFieldCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    .line 1396
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 1397
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->MK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 1398
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 1399
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->RECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 1400
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 1401
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    return-void
.end method

.method private cleanupWidgetCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1412
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->DA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 1414
    :cond_0
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->FT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 1415
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 1416
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    return-void
.end method

.method static getIDTreeAsMap(Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode<",
            "Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1116
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->getNames()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1119
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 1124
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 1126
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->getKids()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1129
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;

    .line 1131
    invoke-static {v1}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->getIDTreeAsMap(Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method static getNumberTreeAsMap(Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1142
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->getNumbers()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1145
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 1150
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 1152
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->getKids()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1155
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;

    .line 1157
    invoke-static {v1}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->getNumberTreeAsMap(Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private hasOnlyDocumentsOrParts(Lcom/tom_roush/pdfbox/cos/COSArray;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1033
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1035
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 1036
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v3, :cond_0

    return v0

    .line 1040
    :cond_0
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 1041
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v2

    .line 1042
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->DOCUMENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->PART:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private isDynamicXfa(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1641
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->xfaIsDynamic()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private legacyMergeDocuments(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->sources:Ljava/util/List;

    .line 424
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->sources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "PDDocument"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->sources:Ljava/util/List;

    .line 438
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->getPartitionedCopy(I)Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object p1

    goto :goto_0

    .line 439
    :cond_0
    invoke-static {}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setupMainMemoryOnly()Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object p1

    .line 440
    :goto_0
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-direct {v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;-><init>(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->sources:Ljava/util/List;

    .line 442
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 445
    instance-of v6, v5, Ljava/io/File;

    if-eqz v6, :cond_1

    .line 447
    check-cast v5, Ljava/io/File;

    invoke-static {v5, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/File;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v5

    goto :goto_2

    .line 451
    :cond_1
    check-cast v5, Ljava/io/InputStream;

    invoke-static {v5, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/InputStream;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v5

    .line 454
    :goto_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {p0, v3, v5}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->appendDocument(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationDocumentInformation:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

    if-eqz p1, :cond_3

    .line 461
    invoke-virtual {v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->setDocumentInformation(Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;)V

    :cond_3
    iget-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationMetadata:Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;

    if-eqz p1, :cond_4

    .line 465
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object p1

    iget-object v4, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationMetadata:Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;

    invoke-virtual {p1, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->setMetadata(Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;)V

    :cond_4
    iget-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationStream:Ljava/io/OutputStream;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationFileName:Ljava/lang/String;

    .line 470
    invoke-virtual {v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->save(Ljava/lang/String;)V

    goto :goto_3

    .line 474
    :cond_5
    invoke-virtual {v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->save(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    :goto_3
    invoke-static {v3, v1, v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeAndLogException(Ljava/io/Closeable;Ljava/lang/String;Ljava/io/IOException;)Ljava/io/IOException;

    .line 484
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 486
    invoke-static {v0, v1, v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeAndLogException(Ljava/io/Closeable;Ljava/lang/String;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v3, v2

    :goto_5
    if-eqz v3, :cond_6

    .line 481
    invoke-static {v3, v1, v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeAndLogException(Ljava/io/Closeable;Ljava/lang/String;Ljava/io/IOException;)Ljava/io/IOException;

    .line 484
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 486
    invoke-static {v3, v1, v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeAndLogException(Ljava/io/Closeable;Ljava/lang/String;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_6

    .line 488
    :cond_7
    throw p1

    :cond_8
    return-void
.end method

.method private mergeAcroForm(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1241
    :try_start_0
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v0

    .line 1242
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object p3

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 1246
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ACRO_FORM:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 1247
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 1246
    invoke-virtual {p2, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    iget-object p2, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->acroFormMergeMode:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    .line 1254
    sget-object v1, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;->PDFBOX_LEGACY_MODE:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    if-ne p2, v1, :cond_1

    .line 1256
    invoke-direct {p0, p1, v0, p3}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->acroFormLegacyMode(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->acroFormMergeMode:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    .line 1258
    sget-object v1, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;->JOIN_FORM_FIELDS_MODE:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    if-ne p2, v1, :cond_2

    .line 1260
    invoke-direct {p0, p1, v0, p3}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->acroFormJoinFieldsMode(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->ignoreAcroFormErrors:Z

    if-eqz p2, :cond_3

    :cond_2
    :goto_0
    return-void

    .line 1270
    :cond_3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private mergeFields(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;)V
    .locals 7

    .line 1326
    instance-of v0, p2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;

    const-string v1, "PdfBox-Android"

    if-eqz v0, :cond_0

    instance-of v0, p3, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;

    if-eqz v0, :cond_0

    .line 1328
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Skipping non terminal field "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1332
    :cond_0
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getFieldType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Tx"

    if-ne v0, v2, :cond_3

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getFieldType()Ljava/lang/String;

    move-result-object v0

    if-ne v0, v2, :cond_3

    .line 1335
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    const-string v2, "Unable to clone widget for source field "

    if-eqz v0, :cond_1

    .line 1337
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p2

    .line 1338
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getWidgets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    .line 1342
    :try_start_0
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1346
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1353
    :cond_1
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 1356
    :try_start_1
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getWidgets()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 v5, 0x1

    .line 1357
    invoke-direct {p0, v3, v5}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->cleanupWidgetCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;Z)V

    .line 1358
    sget-object v5, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, v5, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    .line 1359
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1360
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getWidgets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1364
    :try_start_2
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 1365
    invoke-direct {p0, v5, v4}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->cleanupWidgetCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;Z)V

    .line 1366
    sget-object v6, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v5, v6, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    .line 1367
    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1371
    :catch_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1375
    :cond_2
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object p3, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p3, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1376
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->cleanupFieldCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1380
    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unable to clone widget for destination field "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string p1, "Only merging two text fields is currently supported"

    .line 1386
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Skipping merging of "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " into "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method private mergeIDTree(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1078
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getIDTree()Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1083
    :cond_0
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getIDTree()Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1086
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDStructureElementNameTreeNode;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDStructureElementNameTreeNode;-><init>()V

    .line 1088
    :cond_1
    invoke-static {p2}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->getIDTreeAsMap(Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;)Ljava/util/Map;

    move-result-object p2

    .line 1089
    invoke-static {v0}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->getIDTreeAsMap(Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;)Ljava/util/Map;

    move-result-object v0

    .line 1090
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1092
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists in destination IDTree"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PdfBox-Android"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1098
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;

    .line 1099
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v3, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 1098
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1102
    :cond_3
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/PDStructureElementNameTreeNode;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDStructureElementNameTreeNode;-><init>()V

    .line 1103
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->setNames(Ljava/util/Map;)V

    .line 1104
    invoke-virtual {p3, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->setIDTree(Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;)V

    return-void
.end method

.method private mergeInto(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ">;)V"
        }
    .end annotation

    .line 1656
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1658
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1660
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBase;

    invoke-virtual {p2, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private mergeKEntries(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 962
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getK()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    .line 963
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 964
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 965
    instance-of p2, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz p2, :cond_0

    .line 967
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->addAll(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_0

    .line 969
    :cond_0
    instance-of p2, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz p2, :cond_1

    .line 971
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 974
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 979
    :cond_2
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 980
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getK()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    .line 981
    instance-of v1, p2, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_3

    .line 983
    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->addAll(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_1

    .line 985
    :cond_3
    instance-of v1, p2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_4

    .line 987
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 990
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    instance-of v1, v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_5

    .line 994
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 995
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DOCUMENT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 997
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1000
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->hasOnlyDocumentsOrParts(Lcom/tom_roush/pdfbox/cos/COSArray;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1004
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->addAll(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 1005
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->PART:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v1, p2, p1}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->updateParentEntry(Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)V

    return-void

    .line 1012
    :cond_5
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_6

    .line 1014
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-direct {p0, v0, p1, v1}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->updateParentEntry(Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 1015
    invoke-virtual {p3, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->setK(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void

    .line 1020
    :cond_6
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->addAll(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 1021
    new-instance p2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 1023
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->hasOnlyDocumentsOrParts(Lcom/tom_roush/pdfbox/cos/COSArray;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PART:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 1024
    :cond_7
    invoke-direct {p0, p1, p2, v1}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->updateParentEntry(Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 1025
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1026
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, p1, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    .line 1027
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DOCUMENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1028
    invoke-virtual {p3, p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->setK(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method private mergeLanguage(Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;)V
    .locals 1

    .line 930
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 932
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getLanguage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 935
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->setLanguage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private mergeMarkInfo(Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;)V
    .locals 4

    .line 942
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getMarkInfo()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;

    move-result-object v0

    .line 943
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getMarkInfo()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;

    move-result-object p2

    if-nez v0, :cond_0

    .line 946
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    .line 950
    new-instance p2, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;

    invoke-direct {p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;-><init>()V

    :cond_1
    const/4 v1, 0x1

    .line 952
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->setMarked(Z)V

    .line 953
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->isSuspect()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->isSuspect()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->setSuspect(Z)V

    .line 954
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->usesUserProperties()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->usesUserProperties()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    :cond_5
    :goto_2
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;->setSuspect(Z)V

    .line 955
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->setMarkInfo(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;)V

    return-void
.end method

.method private mergeOutputIntents(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1200
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getOutputIntents()Ljava/util/List;

    move-result-object p2

    .line 1201
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getOutputIntents()Ljava/util/List;

    move-result-object v0

    .line 1202
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;

    .line 1204
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->getOutputConditionIdentifier()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "Custom"

    .line 1205
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;

    .line 1211
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->getOutputConditionIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1222
    :cond_1
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-virtual {p3, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->addOutputIntent(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;)V

    .line 1223
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private mergeRoleMap(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;)V
    .locals 3

    .line 1165
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ROLE_MAP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    .line 1166
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ROLE_MAP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 1173
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ROLE_MAP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void

    .line 1176
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1178
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1179
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1184
    :cond_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " already exists in destination RoleMap"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PdfBox-Android"

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1190
    :cond_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSBase;

    invoke-virtual {v0, v1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private mergeViewerPreferences(Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;)V
    .locals 3

    .line 887
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getViewerPreferences()Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 892
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getViewerPreferences()Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;

    move-result-object v0

    if-nez v0, :cond_1

    .line 895
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;

    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 896
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->setViewerPreferences(Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;)V

    .line 898
    :cond_1
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    .line 899
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 898
    invoke-direct {p0, p1, v1, v2}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->mergeInto(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Set;)V

    .line 902
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->hideToolbar()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->hideToolbar()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 904
    :cond_2
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->setHideToolbar(Z)V

    .line 906
    :cond_3
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->hideMenubar()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->hideMenubar()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 908
    :cond_4
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->setHideMenubar(Z)V

    .line 910
    :cond_5
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->hideWindowUI()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->hideWindowUI()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 912
    :cond_6
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->setHideWindowUI(Z)V

    .line 914
    :cond_7
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->fitWindow()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->fitWindow()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 916
    :cond_8
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->setFitWindow(Z)V

    .line 918
    :cond_9
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->centerWindow()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->centerWindow()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 920
    :cond_a
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->setCenterWindow(Z)V

    .line 922
    :cond_b
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->displayDocTitle()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->displayDocTitle()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 924
    :cond_c
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;->setDisplayDocTitle(Z)V

    :cond_d
    return-void
.end method

.method private optimizedMergeDocuments(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 354
    :try_start_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;-><init>(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 355
    :try_start_1
    new-instance v2, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;

    invoke-direct {v2, v1}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 356
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object v3

    iget-object v4, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->sources:Ljava/util/List;

    .line 358
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 363
    :try_start_2
    instance-of v6, v5, Ljava/io/File;

    if-eqz v6, :cond_0

    .line 365
    check-cast v5, Ljava/io/File;

    invoke-static {v5, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/File;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v5

    goto :goto_1

    .line 369
    :cond_0
    check-cast v5, Ljava/io/InputStream;

    invoke-static {v5, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/InputStream;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 372
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    .line 374
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v9

    check-cast v9, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v8, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 375
    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCropBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setCropBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 376
    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getMediaBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setMediaBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 377
    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getRotation()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setRotation(I)V

    .line 378
    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 382
    new-instance v9, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-virtual {v2, v7}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v7

    check-cast v7, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v9, v7}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-virtual {v8, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    goto :goto_3

    .line 386
    :cond_1
    new-instance v7, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {v7}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    invoke-virtual {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    .line 388
    :goto_3
    invoke-virtual {v3, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->add(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 393
    :cond_2
    :try_start_4
    invoke-static {v5}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v5

    goto :goto_4

    :catchall_1
    move-exception p1

    :goto_4
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 394
    throw p1

    :cond_3
    iget-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationStream:Ljava/io/OutputStream;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationFileName:Ljava/lang/String;

    .line 399
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->save(Ljava/lang/String;)V

    goto :goto_5

    .line 403
    :cond_4
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->save(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 408
    :goto_5
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception p1

    move-object v0, v1

    goto :goto_6

    :catchall_3
    move-exception p1

    :goto_6
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 409
    throw p1
.end method

.method private updatePageReferences(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/cos/COSArray;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;",
            "Lcom/tom_roush/pdfbox/cos/COSArray;",
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1592
    :goto_0
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1594
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 1595
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v2, :cond_0

    .line 1597
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {p0, p1, v1, p3}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->updatePageReferences(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/cos/COSArray;Ljava/util/Map;)V

    goto :goto_1

    .line 1599
    :cond_0
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v2, :cond_1

    .line 1601
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {p0, p1, v1, p3}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->updatePageReferences(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Map;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updatePageReferences(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1541
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 1542
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1544
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBase;

    invoke-virtual {p2, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1546
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->OBJ:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 1547
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_3

    .line 1549
    move-object v1, v0

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 1550
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1552
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->OBJ:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSBase;

    invoke-virtual {p2, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto/16 :goto_1

    .line 1558
    :cond_1
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->OBJ:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 1559
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    const-string v4, ", T: "

    const-string v5, ", Subtype: "

    const-string v6, "PdfBox-Android"

    if-eqz v3, :cond_2

    .line 1561
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "clone potential orphan object in structure tree: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 1562
    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 1563
    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 1564
    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1561
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1569
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clone potential orphan object in structure tree, Type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 1570
    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 1571
    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 1572
    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1569
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :goto_0
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OBJ:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1577
    :cond_3
    :goto_1
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    .line 1578
    instance-of v0, p2, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_4

    .line 1580
    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->updatePageReferences(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/cos/COSArray;Ljava/util/Map;)V

    goto :goto_2

    .line 1582
    :cond_4
    instance-of v0, p2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_5

    .line 1584
    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->updatePageReferences(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Map;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updatePageReferences(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1512
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1518
    :cond_0
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDParentTreeValue;

    .line 1519
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDParentTreeValue;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 1520
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_1

    .line 1522
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {p0, p1, v0, p3}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->updatePageReferences(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/cos/COSArray;Ljava/util/Map;)V

    goto :goto_0

    .line 1526
    :cond_1
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {p0, p1, v0, p3}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->updatePageReferences(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateParentEntry(Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 3

    const/4 v0, 0x0

    .line 1059
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1061
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 1062
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v2, :cond_0

    .line 1064
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 1065
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    if-eqz p3, :cond_0

    .line 1068
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateStructParentEntries(Lcom/tom_roush/pdfbox/pdmodel/PDPage;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1614
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getStructParents()I

    move-result v0

    if-ltz v0, :cond_0

    add-int/2addr v0, p2

    .line 1617
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setStructParents(I)V

    .line 1619
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getAnnotations()Ljava/util/List;

    move-result-object v0

    .line 1620
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1621
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    .line 1623
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getStructParent()I

    move-result v3

    if-ltz v3, :cond_1

    add-int/2addr v3, p2

    .line 1626
    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->setStructParent(I)V

    .line 1628
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1630
    :cond_2
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setAnnotations(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addSource(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->sources:Ljava/util/List;

    .line 292
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSource(Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->sources:Ljava/util/List;

    .line 302
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->addSource(Ljava/io/File;)V

    return-void
.end method

.method public addSources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->sources:Ljava/util/List;

    .line 313
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public appendDocument(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 503
    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_29

    .line 507
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_28

    .line 512
    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v3

    .line 513
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->isDynamicXfa(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 518
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentInformation()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

    move-result-object v0

    .line 519
    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentInformation()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

    move-result-object v4

    .line 520
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v4, v0, v5}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->mergeInto(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Set;)V

    .line 523
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getVersion()F

    move-result v0

    .line 524
    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getVersion()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    .line 528
    invoke-virtual {v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->setVersion(F)V

    .line 532
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v4

    .line 533
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getOpenAction()Lcom/tom_roush/pdfbox/pdmodel/common/PDDestinationOrAction;

    move-result-object v0

    const-string v6, "PdfBox-Android"

    if-nez v0, :cond_4

    .line 539
    :try_start_0
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getOpenAction()Lcom/tom_roush/pdfbox/pdmodel/common/PDDestinationOrAction;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    const-string v0, "Invalid OpenAction ignored"

    .line 544
    invoke-static {v6, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 547
    :goto_0
    instance-of v8, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;

    if-eqz v8, :cond_1

    .line 549
    move-object v8, v0

    check-cast v8, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;

    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;->getDestination()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;

    move-result-object v8

    goto :goto_1

    .line 551
    :cond_1
    instance-of v8, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;

    if-eqz v8, :cond_2

    .line 553
    move-object v8, v0

    check-cast v8, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 557
    :goto_1
    instance-of v9, v8, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;

    if-eqz v9, :cond_3

    .line 559
    check-cast v8, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;

    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->getPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 562
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->indexOf(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)I

    move-result v8

    goto :goto_2

    :cond_3
    const/4 v8, -0x1

    .line 566
    :goto_2
    invoke-virtual {v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->setOpenAction(Lcom/tom_roush/pdfbox/pdmodel/common/PDDestinationOrAction;)V

    goto :goto_3

    :cond_4
    const/4 v8, -0x1

    .line 569
    :goto_3
    new-instance v9, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;

    invoke-direct {v9, v2}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 570
    invoke-direct {v1, v9, v4, v3}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->mergeAcroForm(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;)V

    .line 572
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v10, Lcom/tom_roush/pdfbox/cos/COSName;->THREADS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v10}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 573
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v10

    sget-object v11, Lcom/tom_roush/pdfbox/cos/COSName;->THREADS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v10, v11}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v10

    check-cast v10, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_5

    .line 577
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v11, Lcom/tom_roush/pdfbox/cos/COSName;->THREADS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v11, v10}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_4

    .line 581
    :cond_5
    invoke-virtual {v0, v10}, Lcom/tom_roush/pdfbox/cos/COSArray;->addAll(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 584
    :goto_4
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getNames()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;

    move-result-object v0

    .line 585
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getNames()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;

    move-result-object v10

    if-eqz v10, :cond_7

    if-nez v0, :cond_6

    .line 590
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v11

    sget-object v12, Lcom/tom_roush/pdfbox/cos/COSName;->NAMES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v9, v10}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_5

    .line 594
    :cond_6
    invoke-virtual {v9, v10, v0}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneMerge(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    .line 598
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v10

    sget-object v11, Lcom/tom_roush/pdfbox/cos/COSName;->ID_TREE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v10, v11}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 601
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v10, Lcom/tom_roush/pdfbox/cos/COSName;->ID_TREE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v10}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string v0, "Removed /IDTree from /Names dictionary, doesn\'t belong there"

    .line 602
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_8
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getDests()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDestinationDictionary;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 608
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getDests()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDestinationDictionary;

    move-result-object v10

    if-nez v10, :cond_9

    .line 611
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v10

    sget-object v11, Lcom/tom_roush/pdfbox/cos/COSName;->DESTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v9, v0}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_6

    .line 615
    :cond_9
    invoke-virtual {v9, v0, v10}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneMerge(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    .line 619
    :cond_a
    :goto_6
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getDocumentOutline()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 622
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getDocumentOutline()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 623
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;->getFirstChild()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v11

    if-nez v11, :cond_b

    goto :goto_9

    .line 631
    :cond_b
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;->getFirstChild()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v10

    .line 634
    :goto_7
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getNextSibling()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v11

    if-nez v11, :cond_c

    .line 641
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;->children()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    .line 645
    invoke-virtual {v9, v11}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v11

    check-cast v11, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 646
    sget-object v12, Lcom/tom_roush/pdfbox/cos/COSName;->PREV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v11, v12}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 647
    sget-object v12, Lcom/tom_roush/pdfbox/cos/COSName;->NEXT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v11, v12}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 648
    new-instance v12, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    invoke-direct {v12, v11}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 649
    invoke-virtual {v10, v12}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->insertSiblingAfter(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V

    .line 650
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getNextSibling()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v10

    goto :goto_8

    :cond_c
    move-object v10, v11

    goto :goto_7

    .line 625
    :cond_d
    :goto_9
    new-instance v10, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;

    invoke-virtual {v9, v0}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v10, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 626
    invoke-virtual {v4, v10}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->setDocumentOutline(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;)V

    .line 655
    :cond_e
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getPageMode()Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    move-result-object v0

    if-nez v0, :cond_f

    .line 658
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getPageMode()Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    move-result-object v0

    .line 659
    invoke-virtual {v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->setPageMode(Lcom/tom_roush/pdfbox/pdmodel/PageMode;)V

    .line 662
    :cond_f
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v10, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE_LABELS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v10}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const/4 v10, 0x0

    if-eqz v0, :cond_12

    .line 665
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getNumberOfPages()I

    move-result v11

    .line 667
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v12

    sget-object v13, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE_LABELS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v12, v13}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v12

    if-nez v12, :cond_10

    .line 670
    new-instance v12, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v12}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 671
    new-instance v13, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v13}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 672
    sget-object v14, Lcom/tom_roush/pdfbox/cos/COSName;->NUMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v12, v14, v13}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 673
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v14

    sget-object v15, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE_LABELS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v14, v15, v12}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_a

    .line 677
    :cond_10
    sget-object v13, Lcom/tom_roush/pdfbox/cos/COSName;->NUMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v12, v13}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 679
    :goto_a
    sget-object v12, Lcom/tom_roush/pdfbox/cos/COSName;->NUMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v12}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_12

    .line 682
    invoke-virtual {v13}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v12

    move v14, v10

    .line 683
    :goto_b
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_12

    .line 685
    invoke-virtual {v0, v14}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v15

    .line 686
    instance-of v5, v15, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-nez v5, :cond_11

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "page labels ignored, index "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " should be a number, but is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :goto_c
    invoke-virtual {v13}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    if-le v0, v12, :cond_12

    .line 692
    invoke-virtual {v13, v12}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    goto :goto_c

    .line 696
    :cond_11
    check-cast v15, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 697
    invoke-virtual {v15}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v5

    move/from16 v16, v8

    int-to-long v7, v5

    move-object/from16 v17, v6

    int-to-long v5, v11

    add-long/2addr v7, v5

    .line 698
    invoke-static {v7, v8}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v5, v14, 0x1

    .line 699
    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v14, v14, 0x2

    move/from16 v8, v16

    move-object/from16 v6, v17

    goto :goto_b

    :cond_12
    move-object/from16 v17, v6

    move/from16 v16, v8

    .line 704
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v5, Lcom/tom_roush/pdfbox/cos/COSName;->METADATA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSStream(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    .line 705
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v5

    sget-object v6, Lcom/tom_roush/pdfbox/cos/COSName;->METADATA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v5, v6}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSStream(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v0, :cond_13

    if-eqz v5, :cond_13

    .line 710
    :try_start_1
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v8, 0x0

    :try_start_2
    move-object v11, v8

    check-cast v11, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {v0, v2, v7, v8}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 711
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v7

    new-instance v11, Ljava/util/HashSet;

    const/4 v12, 0x2

    new-array v12, v12, [Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v13, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    aput-object v13, v12, v10

    sget-object v13, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH:Lcom/tom_roush/pdfbox/cos/COSName;

    aput-object v13, v12, v6

    .line 712
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 711
    invoke-direct {v1, v5, v7, v11}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->mergeInto(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Set;)V

    .line 713
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v5

    sget-object v7, Lcom/tom_roush/pdfbox/cos/COSName;->METADATA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v5, v7, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    const/4 v8, 0x0

    :goto_d
    const-string v5, "Metadata skipped because it could not be read"

    move-object/from16 v7, v17

    .line 718
    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :cond_13
    const/4 v8, 0x0

    .line 722
    :goto_e
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v5, Lcom/tom_roush/pdfbox/cos/COSName;->OCPROPERTIES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 723
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v5

    sget-object v7, Lcom/tom_roush/pdfbox/cos/COSName;->OCPROPERTIES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v5, v7}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v5

    if-nez v0, :cond_14

    if-eqz v5, :cond_14

    .line 726
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v7, Lcom/tom_roush/pdfbox/cos/COSName;->OCPROPERTIES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v9, v5}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_f

    :cond_14
    if-eqz v0, :cond_15

    if-eqz v5, :cond_15

    .line 730
    invoke-virtual {v9, v5, v0}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneMerge(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    .line 733
    :cond_15
    :goto_f
    invoke-direct {v1, v9, v3, v4}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->mergeOutputIntents(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;)V

    .line 740
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getStructureTreeRoot()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;

    move-result-object v0

    .line 741
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getStructureTreeRoot()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;

    move-result-object v5

    if-nez v5, :cond_17

    if-eqz v0, :cond_17

    .line 746
    new-instance v5, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;

    invoke-direct {v5}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;-><init>()V

    .line 747
    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->setStructureTreeRoot(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;)V

    .line 748
    new-instance v7, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;

    const-class v11, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDParentTreeValue;

    invoke-direct {v7, v11}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v5, v7}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->setParentTree(Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;)V

    .line 750
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    .line 752
    invoke-virtual {v11}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v12

    sget-object v13, Lcom/tom_roush/pdfbox/cos/COSName;->STRUCT_PARENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v12, v13}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 753
    invoke-virtual {v11}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getAnnotations()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    .line 755
    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v12

    sget-object v13, Lcom/tom_roush/pdfbox/cos/COSName;->STRUCT_PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v12, v13}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_10

    :cond_17
    if-eqz v5, :cond_1c

    .line 761
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getParentTree()Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;

    move-result-object v7

    .line 762
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getParentTreeNextKey()I

    move-result v11

    if-eqz v7, :cond_1b

    .line 765
    invoke-static {v7}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->getNumberTreeAsMap(Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;)Ljava/util/Map;

    move-result-object v7

    if-gez v11, :cond_19

    .line 768
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_18

    move v11, v10

    goto :goto_11

    .line 774
    :cond_18
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v6

    :cond_19
    :goto_11
    if-ltz v11, :cond_1a

    if-eqz v0, :cond_1a

    .line 779
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getParentTree()Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;

    move-result-object v12

    if-eqz v12, :cond_1a

    .line 782
    invoke-static {v12}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->getNumberTreeAsMap(Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;)Ljava/util/Map;

    move-result-object v8

    .line 783
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1a

    move v12, v6

    goto :goto_12

    :cond_1a
    move v12, v10

    :goto_12
    move-object/from16 v21, v8

    move-object v8, v7

    move-object/from16 v7, v21

    goto :goto_13

    :cond_1b
    move-object v7, v8

    move v12, v10

    goto :goto_13

    :cond_1c
    move-object v7, v8

    move v12, v10

    const/4 v11, -0x1

    .line 792
    :goto_13
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 794
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object v2

    .line 795
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object v14

    invoke-virtual {v14}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v10

    :goto_14
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_24

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    .line 797
    new-instance v10, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    invoke-virtual/range {v17 .. v17}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v6

    check-cast v6, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v10, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    if-nez v12, :cond_1d

    .line 801
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v6

    move-object/from16 p1, v14

    sget-object v14, Lcom/tom_roush/pdfbox/cos/COSName;->STRUCT_PARENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v6, v14}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 802
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getAnnotations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    .line 804
    invoke-virtual {v14}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v14

    move-object/from16 v18, v6

    sget-object v6, Lcom/tom_roush/pdfbox/cos/COSName;->STRUCT_PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v14, v6}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    move-object/from16 v6, v18

    goto :goto_15

    :cond_1d
    move-object/from16 p1, v14

    .line 807
    :cond_1e
    invoke-virtual/range {v17 .. v17}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCropBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setCropBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 808
    invoke-virtual/range {v17 .. v17}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getMediaBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setMediaBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 809
    invoke-virtual/range {v17 .. v17}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getRotation()I

    move-result v6

    invoke-virtual {v10, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setRotation(I)V

    .line 810
    invoke-virtual/range {v17 .. v17}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v6

    if-eqz v6, :cond_1f

    .line 814
    new-instance v14, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-virtual {v9, v6}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v6

    check-cast v6, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v14, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-virtual {v10, v14}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    goto :goto_16

    .line 818
    :cond_1f
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {v6}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    invoke-virtual {v10, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    :goto_16
    if-eqz v12, :cond_20

    .line 824
    invoke-direct {v1, v10, v11}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->updateStructParentEntries(Lcom/tom_roush/pdfbox/pdmodel/PDPage;I)V

    .line 825
    invoke-virtual/range {v17 .. v17}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v6

    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v14

    invoke-interface {v13, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    invoke-virtual/range {v17 .. v17}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getAnnotations()Ljava/util/List;

    move-result-object v6

    .line 827
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getAnnotations()Ljava/util/List;

    move-result-object v14

    move-object/from16 v18, v0

    move-object/from16 v17, v3

    const/4 v3, 0x0

    .line 828
    :goto_17
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_21

    .line 830
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-object/from16 v20, v6

    invoke-virtual/range {v19 .. v19}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v6

    invoke-interface {v13, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v20

    goto :goto_17

    :cond_20
    move-object/from16 v18, v0

    move-object/from16 v17, v3

    .line 834
    :cond_21
    invoke-virtual {v2, v10}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->add(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    move/from16 v3, v16

    if-ne v15, v3, :cond_23

    .line 840
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getOpenAction()Lcom/tom_roush/pdfbox/pdmodel/common/PDDestinationOrAction;

    move-result-object v0

    .line 842
    instance-of v6, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;

    if-eqz v6, :cond_22

    .line 844
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;->getDestination()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;

    goto :goto_18

    .line 848
    :cond_22
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;

    .line 850
    :goto_18
    invoke-virtual {v0, v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->setPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    :cond_23
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v14, p1

    move/from16 v16, v3

    move-object/from16 v3, v17

    move-object/from16 v0, v18

    const/4 v6, 0x1

    const/4 v10, 0x0

    goto/16 :goto_14

    :cond_24
    move-object/from16 v18, v0

    move-object/from16 v17, v3

    if-eqz v12, :cond_26

    .line 856
    invoke-direct {v1, v9, v7, v13}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->updatePageReferences(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Ljava/util/Map;Ljava/util/Map;)V

    .line 858
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, -0x1

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 860
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 861
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v6, v11

    .line 862
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    invoke-interface {v8, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_25
    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/2addr v11, v2

    .line 865
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;

    const-class v2, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDParentTreeValue;

    invoke-direct {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;-><init>(Ljava/lang/Class;)V

    .line 871
    invoke-virtual {v0, v8}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->setNumbers(Ljava/util/Map;)V

    .line 873
    invoke-virtual {v5, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->setParentTree(Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;)V

    .line 874
    invoke-virtual {v5, v11}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->setParentTreeNextKey(I)V

    move-object/from16 v0, v18

    .line 876
    invoke-direct {v1, v9, v0, v5}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->mergeKEntries(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;)V

    .line 877
    invoke-direct {v1, v0, v5}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->mergeRoleMap(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;)V

    .line 878
    invoke-direct {v1, v9, v0, v5}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->mergeIDTree(Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;)V

    move-object/from16 v2, v17

    .line 879
    invoke-direct {v1, v4, v2}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->mergeMarkInfo(Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;)V

    .line 880
    invoke-direct {v1, v4, v2}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->mergeLanguage(Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;)V

    .line 881
    invoke-direct {v1, v4, v2}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->mergeViewerPreferences(Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;)V

    :cond_26
    return-void

    .line 515
    :cond_27
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error: can\'t merge source document containing dynamic XFA form content."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_28
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error: destination PDF is closed."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_29
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error: source PDF is closed."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcroFormMergeMode()Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->acroFormMergeMode:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    return-object v0
.end method

.method public getDestinationDocumentInformation()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationDocumentInformation:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

    return-object v0
.end method

.method public getDestinationFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationMetadata()Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationMetadata:Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;

    return-object v0
.end method

.method public getDestinationStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getDocumentMergeMode()Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->documentMergeMode:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    return-object v0
.end method

.method public isIgnoreAcroFormErrors()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->ignoreAcroFormErrors:Z

    return v0
.end method

.method public mergeDocuments()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 325
    invoke-static {}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setupMainMemoryOnly()Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->mergeDocuments(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V

    return-void
.end method

.method public mergeDocuments(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->documentMergeMode:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    .line 339
    sget-object v1, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;->PDFBOX_LEGACY_MODE:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    if-ne v0, v1, :cond_0

    .line 341
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->legacyMergeDocuments(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->documentMergeMode:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    .line 343
    sget-object v1, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;->OPTIMIZE_RESOURCES_MODE:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    if-ne v0, v1, :cond_1

    .line 345
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->optimizedMergeDocuments(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAcroFormMergeMode(Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->acroFormMergeMode:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$AcroFormMergeMode;

    return-void
.end method

.method public setDestinationDocumentInformation(Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationDocumentInformation:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

    return-void
.end method

.method public setDestinationFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationFileName:Ljava/lang/String;

    return-void
.end method

.method public setDestinationMetadata(Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationMetadata:Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;

    return-void
.end method

.method public setDestinationStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->destinationStream:Ljava/io/OutputStream;

    return-void
.end method

.method public setDocumentMergeMode(Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->documentMergeMode:Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility$DocumentMergeMode;

    return-void
.end method

.method public setIgnoreAcroFormErrors(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/multipdf/PDFMergerUtility;->ignoreAcroFormErrors:Z

    return-void
.end method
