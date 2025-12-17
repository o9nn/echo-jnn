.class Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Sub;
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
    name = "Sub"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;)V
    .locals 6

    .line 362
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->getStack()Ljava/util/Stack;

    move-result-object v0

    .line 363
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->popNumber()Ljava/lang/Number;

    move-result-object v1

    .line 364
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->popNumber()Ljava/lang/Number;

    move-result-object p1

    .line 365
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 367
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, -0x80000000

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p1, v2

    .line 374
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    long-to-float p1, v2

    .line 370
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 379
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr p1, v1

    .line 380
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
