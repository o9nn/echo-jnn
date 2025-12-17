.class Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Ne;
.super Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Eq;
.source "RelationalOperators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ne"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Eq;-><init>()V

    return-void
.end method


# virtual methods
.method protected isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 138
    invoke-super {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Eq;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
