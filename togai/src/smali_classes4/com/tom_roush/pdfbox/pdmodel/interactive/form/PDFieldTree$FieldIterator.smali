.class final Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$FieldIterator;
.super Ljava/lang/Object;
.source "PDFieldTree.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FieldIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
        ">;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
            ">;"
        }
    .end annotation
.end field

.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$FieldIterator;->queue:Ljava/util/Queue;

    .line 71
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 72
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$FieldIterator;->set:Ljava/util/Set;

    .line 76
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFields()Ljava/util/List;

    move-result-object p1

    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    .line 79
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$FieldIterator;->enqueueKids(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$FieldIterator;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    return-void
.end method

.method private enqueueKids(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;)V
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$FieldIterator;->queue:Ljava/util/Queue;

    .line 108
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$FieldIterator;->set:Ljava/util/Set;

    .line 109
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;

    if-eqz v0, :cond_1

    .line 112
    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$FieldIterator;->set:Ljava/util/Set;

    .line 115
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Child of field \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' already exists elsewhere, ignored to avoid recursion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PdfBox-Android"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$FieldIterator;->enqueueKids(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$FieldIterator;->queue:Ljava/util/Queue;

    .line 86
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$FieldIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$FieldIterator;->queue:Ljava/util/Queue;

    .line 97
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree$FieldIterator;->next()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
