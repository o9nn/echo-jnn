.class Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode$1;
.super Ljava/lang/Object;
.source "PDOutlineNode.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->children()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode$1;->this$0:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;",
            ">;"
        }
    .end annotation

    .line 316
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItemIterator;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode$1;->this$0:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getFirstChild()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItemIterator;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V

    return-object v0
.end method
