.class public Lcom/tom_roush/pdfbox/multipdf/Overlay;
.super Ljava/lang/Object;
.source "Overlay.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;,
        Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;
    }
.end annotation


# instance fields
.field private allPagesOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private allPagesOverlayFilename:Ljava/lang/String;

.field private defaultOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private defaultOverlayFilename:Ljava/lang/String;

.field private defaultOverlayPage:Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

.field private evenPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private evenPageOverlayFilename:Ljava/lang/String;

.field private evenPageOverlayPage:Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

.field private firstPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private firstPageOverlayFilename:Ljava/lang/String;

.field private firstPageOverlayPage:Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

.field private inputFileName:Ljava/lang/String;

.field private inputPDFDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private lastPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private lastPageOverlayFilename:Ljava/lang/String;

.field private lastPageOverlayPage:Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

.field private numberOfOverlayPages:I

.field private oddPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private oddPageOverlayFilename:Ljava/lang/String;

.field private oddPageOverlayPage:Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

.field private final openDocuments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/pdmodel/PDDocument;",
            ">;"
        }
    .end annotation
.end field

.field private position:Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

.field private specificPageOverlayPage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;",
            ">;"
        }
    .end annotation
.end field

.field private useAllOverlayPages:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->openDocuments:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->specificPageOverlayPage:Ljava/util/Map;

    .line 73
    sget-object v0, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;->BACKGROUND:Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->position:Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->inputFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->inputPDFDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->defaultOverlayFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->defaultOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->firstPageOverlayFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->firstPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->lastPageOverlayFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->lastPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->allPagesOverlayFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->allPagesOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->oddPageOverlayFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->oddPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->evenPageOverlayFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->evenPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->numberOfOverlayPages:I

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->useAllOverlayPages:Z

    return-void
.end method

.method private addOriginalContent(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 428
    :cond_0
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 432
    :cond_1
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_2

    .line 434
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->addAll(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    :goto_0
    return-void

    .line 438
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown content type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private createCombinedContentStream(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->createContentStreamList(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->inputPDFDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 337
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    .line 338
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createOutputStream(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/io/OutputStream;

    move-result-object v1

    .line 339
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 341
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v2

    .line 342
    invoke-static {v2, v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 343
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 344
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-object v0
.end method

.method private createContentStreamList(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ")",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSStream;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 355
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 357
    :cond_0
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v0, :cond_1

    .line 359
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 362
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_2

    .line 365
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 367
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->createContentStreamList(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 370
    :cond_2
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v1, :cond_4

    .line 372
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->createContentStreamList(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0

    .line 376
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown content type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createLayoutPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 312
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v1

    if-nez v1, :cond_0

    .line 315
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    .line 317
    :cond_0
    new-instance v8, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getMediaBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->createCombinedContentStream(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v4

    .line 318
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v5

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getRotation()I

    move-result p1

    int-to-short v6, p1

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;SLcom/tom_roush/pdfbox/multipdf/Overlay$1;)V

    return-object v8
.end method

.method private createOverlayStream(Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "q\nq\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-static {p2}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->access$300(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 526
    invoke-static {p2}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->access$400(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)S

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    invoke-static {p2}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->access$400(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)S

    move-result v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    .line 528
    :cond_0
    invoke-static {p2}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->access$300(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftX(F)V

    .line 529
    invoke-static {p2}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->access$300(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 530
    invoke-static {p2}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->access$300(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 531
    invoke-static {p2}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->access$300(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result p2

    invoke-virtual {v1, p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    .line 533
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->calculateAffineTransform(Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    const/4 p2, 0x6

    new-array v1, p2, [D

    .line 535
    invoke-virtual {p1, v1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getMatrix([D)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_2

    .line 536
    aget-wide v2, v1, p1

    double-to-float v2, v2

    .line 538
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->float2String(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 539
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, " cm\n /"

    .line 541
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Do Q\nQ\n"

    .line 549
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->createStream(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    return-object p1
.end method

.method private createOverlayXObject(Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 6

    .line 492
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    invoke-static {p2}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->access$100(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    .line 493
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-static {p2}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->access$200(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    const/4 v1, 0x1

    .line 494
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setFormType(I)V

    .line 495
    invoke-static {p2}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->access$300(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->createRetranslatedRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 496
    new-instance v1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    .line 497
    invoke-static {p2}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->access$400(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)S

    move-result v2

    const/16 v3, 0x5a

    const-wide/16 v4, 0x0

    if-eq v2, v3, :cond_2

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_1

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 508
    :cond_0
    invoke-static {p2}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->access$300(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p2

    float-to-double v2, p2

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->translate(DD)V

    const-wide v2, -0x3f8f200000000000L    # -270.0

    .line 509
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->rotate(D)V

    goto :goto_0

    .line 504
    :cond_1
    invoke-static {p2}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->access$300(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v2

    float-to-double v2, v2

    invoke-static {p2}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->access$300(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p2

    float-to-double v4, p2

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->translate(DD)V

    const-wide v2, -0x3f99800000000000L    # -180.0

    .line 505
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->rotate(D)V

    goto :goto_0

    .line 500
    :cond_2
    invoke-static {p2}, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;->access$300(Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result p2

    float-to-double v2, p2

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->translate(DD)V

    const-wide v2, -0x3fa9800000000000L    # -90.0

    .line 501
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->rotate(D)V

    .line 514
    :goto_0
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setMatrix(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    .line 515
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p1

    const-string p2, "OL"

    .line 516
    invoke-virtual {p1, v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1
.end method

.method private createStream(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->inputPDFDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 591
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    .line 593
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 592
    :goto_0
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createOutputStream(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "ISO-8859-1"

    .line 594
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 595
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-object v0
.end method

.method private float2String(F)Ljava/lang/String;
    .locals 3

    .line 576
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    .line 579
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const-string v0, ".0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const-string v1, "0"

    .line 581
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private getLayoutPage(II)Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;
    .locals 2

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->useAllOverlayPages:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->specificPageOverlayPage:Ljava/util/Map;

    .line 458
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->specificPageOverlayPage:Ljava/util/Map;

    .line 460
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->firstPageOverlayPage:Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    if-eqz v1, :cond_1

    :goto_0
    move-object p1, v1

    goto :goto_2

    :cond_1
    if-ne p1, p2, :cond_2

    iget-object p2, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->lastPageOverlayPage:Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    if-eqz p2, :cond_2

    :goto_1
    move-object p1, p2

    goto :goto_2

    .line 470
    :cond_2
    rem-int/lit8 p2, p1, 0x2

    if-ne p2, v0, :cond_3

    iget-object v1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->oddPageOverlayPage:Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->evenPageOverlayPage:Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->defaultOverlayPage:Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    iget-boolean p2, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->useAllOverlayPages:Z

    if-eqz p2, :cond_6

    sub-int/2addr p1, v0

    iget p2, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->numberOfOverlayPages:I

    .line 484
    rem-int/2addr p1, p2

    iget-object p2, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->specificPageOverlayPage:Ljava/util/Map;

    .line 485
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method private getLayoutPage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPage(I)Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->createLayoutPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    move-result-object p1

    return-object p1
.end method

.method private getLayoutPages(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/pdmodel/PDDocument;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 325
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    .line 327
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->createLayoutPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private loadPDF(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/File;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p1

    return-object p1
.end method

.method private loadPDFs()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->inputFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->loadPDF(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->inputPDFDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->defaultOverlayFilename:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->loadPDF(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->defaultOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->defaultOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v0, :cond_2

    .line 216
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->getLayoutPage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->defaultOverlayPage:Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->firstPageOverlayFilename:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 221
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->loadPDF(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->firstPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    :cond_3
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->firstPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v0, :cond_4

    .line 225
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->getLayoutPage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->firstPageOverlayPage:Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    :cond_4
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->lastPageOverlayFilename:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 230
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->loadPDF(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->lastPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    :cond_5
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->lastPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v0, :cond_6

    .line 234
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->getLayoutPage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->lastPageOverlayPage:Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    :cond_6
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->oddPageOverlayFilename:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 239
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->loadPDF(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->oddPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    :cond_7
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->oddPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v0, :cond_8

    .line 243
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->getLayoutPage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->oddPageOverlayPage:Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    :cond_8
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->evenPageOverlayFilename:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 248
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->loadPDF(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->evenPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    :cond_9
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->evenPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v0, :cond_a

    .line 252
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->getLayoutPage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->evenPageOverlayPage:Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    :cond_a
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->allPagesOverlayFilename:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 257
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->loadPDF(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->allPagesOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    :cond_b
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->allPagesOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v0, :cond_c

    .line 261
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->getLayoutPages(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->specificPageOverlayPage:Ljava/util/Map;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->useAllOverlayPages:Z

    .line 263
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->numberOfOverlayPages:I

    :cond_c
    return-void
.end method

.method private overlayPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v0

    if-nez v0, :cond_0

    .line 448
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    .line 449
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    .line 451
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->createOverlayXObject(Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    .line 452
    invoke-direct {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->createOverlayStream(Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method private processPages(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object p1

    .line 385
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->getCount()I

    move-result v0

    .line 386
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 389
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->getLayoutPage(II)Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v5

    .line 395
    sget-object v6, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v5, v6}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v6

    .line 396
    new-instance v7, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v7}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 397
    sget-object v8, Lcom/tom_roush/pdfbox/multipdf/Overlay$1;->$SwitchMap$com$tom_roush$pdfbox$multipdf$Overlay$Position:[I

    iget-object v9, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->position:Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v3, :cond_2

    const/4 v3, 0x2

    if-ne v8, v3, :cond_1

    .line 410
    invoke-direct {p0, v2, v4, v7}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->overlayPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 412
    invoke-direct {p0, v6, v7}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->addOriginalContent(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_1

    .line 415
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type of position:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->position:Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string v3, "q\n"

    .line 401
    invoke-direct {p0, v3}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->createStream(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 402
    invoke-direct {p0, v6, v7}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->addOriginalContent(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    const-string v3, "Q\n"

    .line 404
    invoke-direct {p0, v3}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->createStream(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 406
    invoke-direct {p0, v2, v4, v7}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->overlayPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 417
    :goto_1
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v5, v2, v7}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected calculateAffineTransform(Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)Lcom/tom_roush/harmony/awt/geom/AffineTransform;
    .locals 3

    .line 564
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    .line 565
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getMediaBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    .line 566
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v1

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 567
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p2

    sub-float/2addr p1, p2

    div-float/2addr p1, v2

    float-to-double v1, v1

    float-to-double p1, p1

    .line 568
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->translate(DD)V

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->defaultOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->close()V

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->firstPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->close()V

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->lastPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->close()V

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->allPagesOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->close()V

    :cond_3
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->oddPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v0, :cond_4

    .line 188
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->close()V

    :cond_4
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->evenPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v0, :cond_5

    .line 192
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->close()V

    :cond_5
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->openDocuments:Ljava/util/Set;

    .line 194
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 196
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->close()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->openDocuments:Ljava/util/Set;

    .line 198
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->specificPageOverlayPage:Ljava/util/Map;

    .line 199
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getDefaultOverlayFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->defaultOverlayFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getInputFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->inputFileName:Ljava/lang/String;

    return-object v0
.end method

.method public overlay(Ljava/util/Map;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tom_roush/pdfbox/pdmodel/PDDocument;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->loadPDFs()V

    .line 117
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    if-nez v3, :cond_0

    .line 123
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->loadPDF(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v4

    .line 124
    invoke-direct {p0, v4}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->getLayoutPage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->openDocuments:Ljava/util/Set;

    .line 125
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->specificPageOverlayPage:Ljava/util/Map;

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->inputPDFDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 129
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->processPages(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->inputPDFDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-object p1
.end method

.method public overlayDocuments(Ljava/util/Map;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tom_roush/pdfbox/pdmodel/PDDocument;",
            ">;)",
            "Lcom/tom_roush/pdfbox/pdmodel/PDDocument;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->loadPDFs()V

    .line 150
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->specificPageOverlayPage:Ljava/util/Map;

    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->getLayoutPage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/multipdf/Overlay$LayoutPage;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->inputPDFDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 158
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/multipdf/Overlay;->processPages(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->inputPDFDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-object p1
.end method

.method public setAllPagesOverlayFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->allPagesOverlayFilename:Ljava/lang/String;

    return-void
.end method

.method public setAllPagesOverlayPDF(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->allPagesOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-void
.end method

.method public setDefaultOverlayFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->defaultOverlayFilename:Ljava/lang/String;

    return-void
.end method

.method public setDefaultOverlayPDF(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->defaultOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-void
.end method

.method public setEvenPageOverlayFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->evenPageOverlayFilename:Ljava/lang/String;

    return-void
.end method

.method public setEvenPageOverlayPDF(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->evenPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-void
.end method

.method public setFirstPageOverlayFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->firstPageOverlayFilename:Ljava/lang/String;

    return-void
.end method

.method public setFirstPageOverlayPDF(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->firstPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-void
.end method

.method public setInputFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->inputFileName:Ljava/lang/String;

    return-void
.end method

.method public setInputPDF(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->inputPDFDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-void
.end method

.method public setLastPageOverlayFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->lastPageOverlayFilename:Ljava/lang/String;

    return-void
.end method

.method public setLastPageOverlayPDF(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->lastPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-void
.end method

.method public setOddPageOverlayFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->oddPageOverlayFilename:Ljava/lang/String;

    return-void
.end method

.method public setOddPageOverlayPDF(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->oddPageOverlay:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-void
.end method

.method public setOverlayPosition(Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Overlay;->position:Lcom/tom_roush/pdfbox/multipdf/Overlay$Position;

    return-void
.end method
