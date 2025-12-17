.class abstract Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$AbstractLogicalOperator;
.super Ljava/lang/Object;
.source "BitwiseOperators.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractLogicalOperator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$AbstractLogicalOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract applyForBoolean(ZZ)Z
.end method

.method protected abstract applyforInteger(II)I
.end method

.method public execute(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;)V
    .locals 3

    .line 39
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->getStack()Ljava/util/Stack;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    .line 42
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 44
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 45
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 46
    invoke-virtual {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$AbstractLogicalOperator;->applyForBoolean(ZZ)Z

    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 51
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 52
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 53
    invoke-virtual {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$AbstractLogicalOperator;->applyforInteger(II)I

    move-result v0

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Operands must be bool/bool or int/int"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
