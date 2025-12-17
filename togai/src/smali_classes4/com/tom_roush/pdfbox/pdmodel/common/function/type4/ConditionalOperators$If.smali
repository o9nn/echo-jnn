.class Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ConditionalOperators$If;
.super Ljava/lang/Object;
.source "ConditionalOperators.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ConditionalOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "If"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;)V
    .locals 2

    .line 39
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->getStack()Ljava/util/Stack;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

    .line 41
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;->execute(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;)V

    :cond_0
    return-void
.end method
