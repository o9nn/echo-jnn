.class Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Ge;
.super Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$AbstractNumberComparisonOperator;
.source "RelationalOperators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ge"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$AbstractNumberComparisonOperator;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$1;)V

    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 0

    .line 90
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
