.class public Lcom/tom_roush/pdfbox/pdmodel/PDPage;
.super Ljava/lang/Object;
.source "PDPage.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;
.implements Lcom/tom_roush/pdfbox/contentstream/PDContentStream;


# instance fields
.field private mediaBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

.field private final page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private pageResources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

.field private resourceCache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->LETTER:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->resourceCache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 79
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 80
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MEDIA_BOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method private clipToMediaBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 4

    .line 456
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getMediaBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    .line 457
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>()V

    .line 458
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftX(F)V

    .line 459
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 460
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 461
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 717
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getActions()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDPageAdditionalActions;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 596
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 597
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 599
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    goto :goto_0

    .line 603
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 604
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->AA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 606
    :goto_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDPageAdditionalActions;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDPageAdditionalActions;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDPage$1;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage$1;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getAnnotations(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 680
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ANNOTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 681
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v1, :cond_0

    .line 683
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ANNOTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)V

    return-object p1

    .line 686
    :cond_0
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 687
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 688
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 690
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 695
    :cond_1
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->createAnnotation(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v3

    .line 696
    invoke-interface {p1, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;->accept(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 698
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 701
    :cond_3
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {p1, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-object p1
.end method

.method public getArtBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 423
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ART_BOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 424
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 426
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->clipToMediaBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    return-object v0

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCropBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    return-object v0
.end method

.method public getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCropBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    return-object v0
.end method

.method public getBleedBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 350
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BLEED_BOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 351
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 353
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->clipToMediaBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    return-object v0

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCropBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getContentStreams()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 123
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 124
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v2, :cond_0

    .line 126
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    :cond_0
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v2, :cond_1

    .line 130
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v2, 0x0

    .line 131
    :goto_0
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 133
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 134
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-direct {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getContents()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 150
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 151
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_0

    .line 153
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v0

    return-object v0

    .line 155
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v3, 0xa

    aput-byte v3, v1, v2

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 162
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    .line 163
    instance-of v5, v4, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v5, :cond_1

    .line 165
    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 166
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_2
    new-instance v0, Ljava/io/SequenceInputStream;

    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    return-object v0

    .line 172
    :cond_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v1, v2, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getCropBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 313
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CROP_BOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->getInheritableAttribute(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 314
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 316
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->clipToMediaBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    return-object v0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getMediaBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    return-object v0
.end method

.method public getMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 1

    .line 260
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>()V

    return-object v0
.end method

.method public getMediaBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->mediaBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 273
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MEDIA_BOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->getInheritableAttribute(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 274
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 276
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->mediaBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    goto :goto_0

    :cond_0
    const-string v0, "PdfBox-Android"

    const-string v1, "Can\'t find MediaBox, will use U.S. Letter"

    .line 280
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->LETTER:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->mediaBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->mediaBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    return-object v0
.end method

.method public getMetadata()Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 570
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->METADATA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 571
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_0

    .line 573
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getResourceCache()Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->resourceCache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    return-object v0
.end method

.method public getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->pageResources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 200
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RESOURCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->getInheritableAttribute(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 203
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 205
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->resourceCache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    invoke-direct {v1, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->pageResources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->pageResources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    return-object v0
.end method

.method public getRotation()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 475
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ROTATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->getInheritableAttribute(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 476
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v1, :cond_0

    .line 478
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v0

    .line 479
    rem-int/lit8 v1, v0, 0x5a

    if-nez v1, :cond_0

    .line 481
    rem-int/lit16 v0, v0, 0x168

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStructParents()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 237
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STRUCT_PARENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    return v0
.end method

.method public getThreadBeads()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 531
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->B:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 536
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 537
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 539
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 542
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v4, :cond_1

    .line 544
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 546
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 548
    :cond_2
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-object v2
.end method

.method public getTransition()Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 624
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TRANS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 625
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getTrimBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 386
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TRIM_BOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 387
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 389
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->clipToMediaBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    return-object v0

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCropBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    return-object v0
.end method

.method public getUserUnit()F
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 794
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->USER_UNIT:Lcom/tom_roush/pdfbox/cos/COSName;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method public getViewports()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDViewportDictionary;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 743
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 744
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 748
    :cond_0
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 749
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 750
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 752
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 753
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v4, :cond_1

    .line 755
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDViewportDictionary;

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDViewportDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 759
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Array element "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is skipped, must be a (viewport) dictionary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PdfBox-Android"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public hasContents()Z
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 180
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 181
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 183
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 185
    :cond_1
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_3

    .line 187
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    :cond_3
    return v3
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 723
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setActions(Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDPageAdditionalActions;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 616
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setAnnotations(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 711
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ANNOTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setArtBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 443
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ART_BOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 447
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ART_BOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    :goto_0
    return-void
.end method

.method public setBleedBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 370
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->BLEED_BOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 374
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BLEED_BOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    :goto_0
    return-void
.end method

.method public setContents(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 504
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setContents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;",
            ">;)V"
        }
    .end annotation

    .line 514
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 515
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    .line 517
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 519
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setCropBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 333
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->CROP_BOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 337
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CROP_BOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_0
    return-void
.end method

.method public setMediaBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->mediaBox:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 297
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->MEDIA_BOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 301
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MEDIA_BOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    :goto_0
    return-void
.end method

.method public setMetadata(Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 585
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->METADATA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->pageResources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 221
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RESOURCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 225
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->RESOURCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    :goto_0
    return-void
.end method

.method public setRotation(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 494
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ROTATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setStructParents(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 247
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STRUCT_PARENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setThreadBeads(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 558
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->B:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setTransition(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 633
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TRANS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setTransition(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 645
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TRANS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 646
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DUR:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, p2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setTrimBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 406
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TRIM_BOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 410
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TRIM_BOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    :goto_0
    return-void
.end method

.method public setUserUnit(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 811
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->USER_UNIT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void

    .line 809
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "User unit must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewports(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDViewportDictionary;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 774
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->VP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    return-void

    .line 777
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 778
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDViewportDictionary;

    .line 780
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 782
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
