.class public Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;
.super Ljava/lang/Object;
.source "ExecutionContext.java"


# instance fields
.field private final operators:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;

.field private final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->stack:Ljava/util/Stack;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->operators:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;

    return-void
.end method


# virtual methods
.method public getOperators()Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->operators:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;

    return-object v0
.end method

.method public getStack()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->stack:Ljava/util/Stack;

    return-object v0
.end method

.method public popInt()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->stack:Ljava/util/Stack;

    .line 75
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public popNumber()Ljava/lang/Number;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->stack:Ljava/util/Stack;

    .line 65
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public popReal()F
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->stack:Ljava/util/Stack;

    .line 85
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method
