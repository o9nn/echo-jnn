.class Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Cvi;
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
    name = "Cvi"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;)V
    .locals 1

    .line 138
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->popNumber()Ljava/lang/Number;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ExecutionContext;->getStack()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
