.class Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Add;
.super Ljava/lang/Object;
.source "ArithmeticOperators.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Add"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;)V
    .locals 5

    .line 58
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->popNumber()Ljava/lang/Number;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->popNumber()Ljava/lang/Number;

    move-result-object v1

    .line 60
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 62
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    const-wide/32 v3, -0x80000000

    cmp-long v0, v1, v3

    if-ltz v0, :cond_1

    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->getStack()Ljava/util/Stack;

    move-result-object p1

    long-to-int v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->getStack()Ljava/util/Stack;

    move-result-object p1

    long-to-float v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    add-float/2addr v1, v0

    .line 75
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->getStack()Ljava/util/Stack;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
