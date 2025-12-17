.class final Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;
.super Ljava/lang/Object;
.source "PDPageTree.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PageIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/tom_roush/pdfbox/pdmodel/PDPage;",
        ">;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;


# direct methods
.method private constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->this$0:Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->queue:Ljava/util/Queue;

    .line 175
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->set:Ljava/util/Set;

    .line 179
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->enqueueKids(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->set:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$1;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method private enqueueKids(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->this$0:Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    .line 185
    invoke-static {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->access$100(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    move-result v0

    const-string v1, "PdfBox-Android"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->this$0:Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    .line 187
    invoke-static {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->access$200(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/util/List;

    move-result-object p1

    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->set:Ljava/util/Set;

    .line 190
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "This page tree node has already been visited"

    .line 193
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_0
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->set:Ljava/util/Set;

    .line 198
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_1
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->enqueueKids(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    .line 205
    :cond_2
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->queue:Ljava/util/Queue;

    .line 207
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Page skipped due to an invalid or missing type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 212
    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->queue:Ljava/util/Queue;

    .line 220
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Lcom/tom_roush/pdfbox/pdmodel/PDPage;
    .locals 3

    .line 226
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->queue:Ljava/util/Queue;

    .line 230
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 232
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->access$300(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->this$0:Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    .line 234
    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->access$400(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->this$0:Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->access$400(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getResourceCache()Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 235
    :goto_0
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    invoke-direct {v2, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V

    return-object v2

    .line 228
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree$PageIterator;->next()Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
