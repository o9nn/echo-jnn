.class public Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPage;
.super Ljava/lang/Object;
.source "FDFPage.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final page:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getPageInfo()Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPageInfo;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 105
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPageInfo;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPageInfo;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getTemplates()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFTemplate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 74
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TEMPLATES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 78
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 80
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFTemplate;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFTemplate;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_0
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public setPageInfo(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPageInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 120
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setTemplates(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFTemplate;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPage;->page:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 94
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TEMPLATES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
