.class public Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;
.super Ljava/lang/Object;
.source "PDPageTree.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;,
        Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;",
        "Ljava/lang/Iterable<",
        "Lcom/tom_roush/pdfbox/pdmodel/PDPage;",
        ">;"
    }
.end annotation


# instance fields
.field private final document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private final pageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private final root:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->pageSet:Ljava/util/Set;

    .line 54
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 55
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->PAGES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 56
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 57
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COUNT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSInteger;->ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->pageSet:Ljava/util/Set;

    if-eqz p1, :cond_1

    .line 84
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 87
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 88
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 89
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 90
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->COUNT:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    :goto_0
    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-void

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "page tree root cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->isPageTreeNode(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->getKids(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->sanitizeType(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-object p0
.end method

.method private findPage(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z
    .locals 2

    .line 390
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->getKids(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 392
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;->access$700(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 396
    :cond_0
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->isPageTreeNode(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->findPage(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    goto :goto_0

    .line 402
    :cond_1
    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;->access$800(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    .line 405
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;->access$700(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;)Z

    move-result p1

    return p1
.end method

.method private get(ILcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->pageSet:Ljava/util/Set;

    .line 294
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->pageSet:Ljava/util/Set;

    .line 304
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->isPageTreeNode(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    move-result v0

    const-string v1, "1-based index not found: "

    if-eqz v0, :cond_5

    .line 308
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->COUNT:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    add-int/2addr v0, p3

    if-gt p1, v0, :cond_4

    .line 312
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->getKids(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 315
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->isPageTreeNode(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->COUNT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v3, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v3

    add-int/2addr v3, p3

    if-gt p1, v3, :cond_1

    .line 321
    invoke-direct {p0, p1, v0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->get(ILcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    return-object p1

    :cond_1
    move p3, v3

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p3, 0x1

    if-ne p1, p3, :cond_0

    .line 335
    invoke-direct {p0, p1, v0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->get(ILcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    return-object p1

    .line 340
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 344
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "1-based index out of bounds: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    if-ne p3, p1, :cond_6

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->pageSet:Ljava/util/Set;

    .line 351
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-object p2

    .line 356
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->pageSet:Ljava/util/Set;

    .line 296
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 297
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Possible recursion found when searching for page "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 292
    :cond_8
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Index out of bounds: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static getInheritableAttribute(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 2

    .line 108
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 114
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p0

    .line 115
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_1

    .line 117
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 118
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PAGES:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-static {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->getInheritableAttribute(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getKids(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ")",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 152
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 154
    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 155
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v4, :cond_1

    .line 157
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 161
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "COSDictionary expected, but got "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_2

    const-string v3, "null"

    goto :goto_1

    .line 162
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PdfBox-Android"

    .line 161
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private increaseParents(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 2

    .line 582
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->COUNT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    .line 583
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COUNT:Lcom/tom_roush/pdfbox/cos/COSName;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    .line 584
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez p1, :cond_0

    return-void
.end method

.method private isPageTreeNode(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 368
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 369
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAGES:Lcom/tom_roush/pdfbox/cos/COSName;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private remove(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 2

    .line 468
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 469
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 470
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->removeObject(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz p1, :cond_1

    .line 478
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->COUNT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COUNT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    :cond_1
    if-nez p1, :cond_0

    :cond_2
    return-void
.end method

.method private static sanitizeType(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 3

    .line 266
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 269
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void

    .line 272
    :cond_0
    sget-object p0, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 274
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected \'Page\' but found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 2

    .line 493
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    .line 494
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 499
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 500
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 505
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz p1, :cond_1

    .line 508
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->COUNT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COUNT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    :cond_1
    if-nez p1, :cond_0

    return-void
.end method

.method public get(I)Lcom/tom_roush/pdfbox/pdmodel/PDPage;
    .locals 2

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 v1, 0x0

    .line 256
    invoke-direct {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->get(ILcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    .line 258
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->sanitizeType(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getResourceCache()Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 261
    :goto_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    invoke-direct {v1, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V

    return-object v1
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 433
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COUNT:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)I
    .locals 2

    .line 380
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$1;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 381
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->findPage(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 383
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;->access$600(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$SearchContext;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public insertAfter(Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 5

    .line 556
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 557
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 558
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v2, 0x0

    .line 560
    :goto_0
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 562
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 563
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 565
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 566
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 575
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->increaseParents(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 573
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attempted to insert before orphan page"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertBefore(Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 5

    .line 524
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 525
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 526
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v2, 0x0

    .line 528
    :goto_0
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 530
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 531
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 533
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 534
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 543
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->increaseParents(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 541
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attempted to insert before orphan page"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/tom_roush/pdfbox/pdmodel/PDPage;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$1;)V

    return-object v0
.end method

.method public remove(I)V
    .locals 2

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 v1, 0x0

    .line 448
    invoke-direct {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->get(ILcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    .line 449
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->remove(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method public remove(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 0

    .line 459
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->remove(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method
