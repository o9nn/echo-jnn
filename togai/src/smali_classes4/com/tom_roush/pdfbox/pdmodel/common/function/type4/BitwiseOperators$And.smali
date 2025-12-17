.class Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$And;
.super Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$AbstractLogicalOperator;
.source "BitwiseOperators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "And"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$AbstractLogicalOperator;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$1;)V

    return-void
.end method


# virtual methods
.method protected applyForBoolean(ZZ)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected applyforInteger(II)I
    .locals 0

    and-int/2addr p1, p2

    return p1
.end method
