.class public Lcom/tom_roush/pdfbox/text/TextPositionComparator;
.super Ljava/lang/Object;
.source "TextPositionComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tom_roush/pdfbox/text/TextPosition;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tom_roush/pdfbox/text/TextPosition;Lcom/tom_roush/pdfbox/text/TextPosition;)I
    .locals 8

    .line 35
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getDir()F

    move-result v0

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/text/TextPosition;->getDir()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getXDirAdj()F

    move-result v0

    .line 43
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/text/TextPosition;->getXDirAdj()F

    move-result v1

    .line 45
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getYDirAdj()F

    move-result v2

    .line 46
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/text/TextPosition;->getYDirAdj()F

    move-result v3

    .line 49
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getHeightDir()F

    move-result p1

    sub-float p1, v2, p1

    .line 50
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/text/TextPosition;->getHeightDir()F

    move-result p2

    sub-float p2, v3, p2

    sub-float v4, v2, v3

    .line 52
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_4

    cmpl-float p1, v3, p1

    if-ltz p1, :cond_1

    cmpg-float p1, v3, v2

    if-lez p1, :cond_4

    :cond_1
    cmpl-float p1, v2, p2

    if-ltz p1, :cond_2

    cmpg-float p1, v2, v3

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    cmpg-float p1, v2, v3

    if-gez p1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1

    .line 59
    :cond_4
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/tom_roush/pdfbox/text/TextPosition;

    check-cast p2, Lcom/tom_roush/pdfbox/text/TextPosition;

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/text/TextPositionComparator;->compare(Lcom/tom_roush/pdfbox/text/TextPosition;Lcom/tom_roush/pdfbox/text/TextPosition;)I

    move-result p1

    return p1
.end method
