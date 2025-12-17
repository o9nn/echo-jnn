.class Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItemIterator;
.super Ljava/lang/Object;
.source "PDOutlineItemIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;",
        ">;"
    }
.end annotation


# instance fields
.field private currentItem:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

.field private final startingItem:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItemIterator;->startingItem:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItemIterator;->startingItem:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItemIterator;->currentItem:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 49
    :cond_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getNextSibling()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItemIterator;->startingItem:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    .line 50
    invoke-virtual {v3, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public next()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItemIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItemIterator;->currentItem:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItemIterator;->startingItem:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItemIterator;->currentItem:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getNextSibling()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItemIterator;->currentItem:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItemIterator;->currentItem:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    return-object v0

    .line 58
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItemIterator;->next()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
