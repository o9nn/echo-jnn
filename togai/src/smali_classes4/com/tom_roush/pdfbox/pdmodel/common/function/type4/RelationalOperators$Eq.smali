.class Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Eq;
.super Ljava/lang/Object;
.source "RelationalOperators.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Eq"
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

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    .line 42
    invoke-virtual {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Eq;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 49
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 51
    check-cast p1, Ljava/lang/Number;

    .line 52
    check-cast p2, Ljava/lang/Number;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method
