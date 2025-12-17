.class Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/StackOperators$Copy;
.super Ljava/lang/Object;
.source "StackOperators.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/StackOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Copy"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;)V
    .locals 3

    .line 41
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->getStack()Ljava/util/Stack;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    sub-int v0, v1, v0

    .line 48
    invoke-virtual {p1, v0, v1}, Ljava/util/Stack;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    invoke-virtual {p1, v2}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
