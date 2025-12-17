.class abstract Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$AbstractNumberComparisonOperator;
.super Ljava/lang/Object;
.source "RelationalOperators.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractNumberComparisonOperator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$1;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$AbstractNumberComparisonOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract compare(Ljava/lang/Number;Ljava/lang/Number;)Z
.end method

.method public execute(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;)V
    .locals 2

    .line 70
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->getStack()Ljava/util/Stack;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/Number;

    .line 74
    check-cast v0, Ljava/lang/Number;

    .line 75
    invoke-virtual {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$AbstractNumberComparisonOperator;->compare(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
