.class public Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;
.super Ljava/lang/Object;
.source "InstructionSequence.java"


# instance fields
.field private final instructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;->instructions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addBoolean(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;->instructions:Ljava/util/List;

    .line 64
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInteger(I)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;->instructions:Ljava/util/List;

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;->instructions:Ljava/util/List;

    .line 37
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addProc(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;->instructions:Ljava/util/List;

    .line 73
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addReal(F)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;->instructions:Ljava/util/List;

    .line 55
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;)V
    .locals 4

    .line 82
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->getStack()Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;->instructions:Ljava/util/List;

    .line 83
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 85
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 87
    check-cast v2, Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->getOperators()Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->getOperator(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 91
    invoke-interface {v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;->execute(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;)V

    goto :goto_0

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown operator or name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

    if-eqz v1, :cond_3

    .line 107
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

    .line 108
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;->execute(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;)V

    goto :goto_1

    :cond_3
    return-void
.end method
