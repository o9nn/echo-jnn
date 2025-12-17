.class public final Lcom/tom_roush/pdfbox/text/TextPosition;
.super Ljava/lang/Object;
.source "TextPosition.java"


# static fields
.field private static final DIACRITICS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final charCodes:[I

.field private direction:F

.field private final endX:F

.field private final endY:F

.field private final font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

.field private final fontSize:F

.field private final fontSizePt:I

.field private final maxHeight:F

.field private final pageHeight:F

.field private final pageWidth:F

.field private final rotation:I

.field private final textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

.field private unicode:Ljava/lang/String;

.field private final widthOfSpace:F

.field private widths:[F

.field private final x:F

.field private final y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lcom/tom_roush/pdfbox/text/TextPosition;->createDiacritics()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/text/TextPosition;->DIACRITICS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IFFLcom/tom_roush/pdfbox/util/Matrix;FFFFFLjava/lang/String;[ILcom/tom_roush/pdfbox/pdmodel/font/PDFont;FI)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->direction:F

    iput-object p4, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    iput p5, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->endX:F

    iput p6, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->endY:F

    iput p1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->rotation:I

    iput p7, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->maxHeight:F

    iput p3, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->pageHeight:F

    iput p2, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->pageWidth:F

    const/4 p4, 0x1

    new-array p4, p4, [F

    const/4 p5, 0x0

    aput p8, p4, p5

    iput-object p4, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->widths:[F

    iput p9, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->widthOfSpace:F

    iput-object p10, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->unicode:Ljava/lang/String;

    iput-object p11, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->charCodes:[I

    iput-object p12, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    iput p13, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->fontSize:F

    iput p14, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->fontSizePt:I

    int-to-float p4, p1

    .line 107
    invoke-direct {p0, p4}, Lcom/tom_roush/pdfbox/text/TextPosition;->getXRot(F)F

    move-result p4

    iput p4, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->x:F

    if-eqz p1, :cond_1

    const/16 p4, 0xb4

    if-ne p1, p4, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 114
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getYLowerLeftRot(F)F

    move-result p1

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->y:F

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float p1, p1

    .line 110
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getYLowerLeftRot(F)F

    move-result p1

    sub-float/2addr p3, p1

    iput p3, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->y:F

    :goto_1
    return-void
.end method

.method private combineDiacritic(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 699
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    sget-object v1, Lcom/tom_roush/pdfbox/text/TextPosition;->DIACRITICS:Ljava/util/Map;

    .line 702
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 704
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 708
    :cond_0
    sget-object v0, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static createDiacritics()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/16 v1, 0x60

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0300"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2cb

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x27

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0301"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2b9

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2ca

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5e

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0302"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2c6

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7e

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0303"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2c9

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0304"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb0

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u030a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2ba

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u030b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2c7

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u030c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2c8

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u030d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x22

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u030e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2bb

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0312"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2bc

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0313"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x486

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x55a

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2bd

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0314"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x485

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x559

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2d4

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u031d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2d5

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u031e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2d6

    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u031f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2d7

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0320"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2b2

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0321"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2cc

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0329"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2b7

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u032b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2cd

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0331"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5f

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0332"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x204e

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0359"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getWidthRot(F)F
    .locals 1

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x43870000    # 270.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->endX:F

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 396
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateX()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    :cond_1
    :goto_0
    iget p1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->endY:F

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 392
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method private getXRot(F)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 259
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateX()F

    move-result p1

    return p1

    :cond_0
    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 263
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateY()F

    move-result p1

    return p1

    :cond_1
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    iget p1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->pageWidth:F

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 267
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateX()F

    move-result v0

    sub-float/2addr p1, v0

    return p1

    :cond_2
    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget p1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->pageHeight:F

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 271
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateY()F

    move-result v0

    sub-float/2addr p1, v0

    return p1

    :cond_3
    return v0
.end method

.method private getYLowerLeftRot(F)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 322
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateY()F

    move-result p1

    return p1

    :cond_0
    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    iget p1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->pageWidth:F

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 326
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateX()F

    move-result v0

    sub-float/2addr p1, v0

    return p1

    :cond_1
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    iget p1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->pageHeight:F

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 330
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateY()F

    move-result v0

    sub-float/2addr p1, v0

    return p1

    :cond_2
    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 334
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateX()F

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method private insertDiacritic(ILcom/tom_roush/pdfbox/text/TextPosition;)V
    .locals 5

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->unicode:Ljava/lang/String;

    const/4 v2, 0x0

    .line 669
    invoke-virtual {v0, v1, v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->widths:[F

    .line 671
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [F

    .line 672
    invoke-static {v1, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->unicode:Ljava/lang/String;

    .line 676
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->widths:[F

    .line 677
    aget v1, v1, p1

    aput v1, v3, p1

    .line 678
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/text/TextPosition;->getUnicode()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/text/TextPosition;->combineDiacritic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p1, 0x1

    const/4 v1, 0x0

    .line 679
    aput v1, v3, p2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->unicode:Ljava/lang/String;

    .line 682
    invoke-virtual {v1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->widths:[F

    add-int/lit8 v2, p1, 0x2

    .line 683
    array-length v4, v1

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, p2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 685
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->unicode:Ljava/lang/String;

    iput-object v3, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->widths:[F

    return-void
.end method


# virtual methods
.method public contains(Lcom/tom_roush/pdfbox/text/TextPosition;)Z
    .locals 16

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getXDirAdj()F

    move-result v0

    float-to-double v0, v0

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getWidthDirAdj()F

    move-result v2

    float-to-double v2, v2

    add-double v4, v0, v2

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getXDirAdj()F

    move-result v6

    float-to-double v6, v6

    .line 537
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getWidthDirAdj()F

    move-result v8

    float-to-double v8, v8

    add-double/2addr v8, v6

    cmpg-double v10, v8, v0

    if-lez v10, :cond_7

    cmpl-double v10, v6, v4

    if-ltz v10, :cond_0

    goto :goto_3

    .line 547
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getYDirAdj()F

    move-result v10

    float-to-double v12, v10

    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getYDirAdj()F

    move-result v10

    float-to-double v14, v10

    .line 549
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getHeightDir()F

    move-result v10

    float-to-double v10, v10

    add-double/2addr v10, v14

    cmpg-double v10, v10, v12

    if-ltz v10, :cond_6

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getHeightDir()F

    move-result v10

    float-to-double v10, v10

    add-double/2addr v12, v10

    cmpl-double v10, v14, v12

    if-lez v10, :cond_1

    goto :goto_2

    :cond_1
    cmpl-double v10, v6, v0

    const-wide v11, 0x3fc3333333333333L    # 0.15

    const/4 v13, 0x1

    if-lez v10, :cond_3

    cmpl-double v10, v8, v4

    if-lez v10, :cond_3

    sub-double/2addr v4, v6

    div-double/2addr v4, v2

    cmpl-double v0, v4, v11

    if-lez v0, :cond_2

    move v11, v13

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_3
    cmpg-double v6, v6, v0

    if-gez v6, :cond_5

    cmpg-double v4, v8, v4

    if-gez v4, :cond_5

    sub-double/2addr v8, v0

    div-double/2addr v8, v2

    cmpl-double v0, v8, v11

    if-lez v0, :cond_4

    move v11, v13

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    return v11

    :cond_5
    return v13

    :cond_6
    :goto_2
    const/4 v0, 0x0

    return v0

    :cond_7
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 810
    :cond_0
    instance-of v1, p1, Lcom/tom_roush/pdfbox/text/TextPosition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 815
    :cond_1
    check-cast p1, Lcom/tom_roush/pdfbox/text/TextPosition;

    .line 817
    iget v1, p1, Lcom/tom_roush/pdfbox/text/TextPosition;->endX:F

    iget v3, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->endX:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 821
    :cond_2
    iget v1, p1, Lcom/tom_roush/pdfbox/text/TextPosition;->endY:F

    iget v3, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->endY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 825
    :cond_3
    iget v1, p1, Lcom/tom_roush/pdfbox/text/TextPosition;->maxHeight:F

    iget v3, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->maxHeight:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->rotation:I

    .line 829
    iget v3, p1, Lcom/tom_roush/pdfbox/text/TextPosition;->rotation:I

    if-eq v1, v3, :cond_5

    return v2

    .line 833
    :cond_5
    iget v1, p1, Lcom/tom_roush/pdfbox/text/TextPosition;->x:F

    iget v3, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->x:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    .line 837
    :cond_6
    iget v1, p1, Lcom/tom_roush/pdfbox/text/TextPosition;->y:F

    iget v3, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->y:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    .line 841
    :cond_7
    iget v1, p1, Lcom/tom_roush/pdfbox/text/TextPosition;->pageHeight:F

    iget v3, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->pageHeight:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    .line 845
    :cond_8
    iget v1, p1, Lcom/tom_roush/pdfbox/text/TextPosition;->pageWidth:F

    iget v3, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->pageWidth:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_9

    return v2

    .line 849
    :cond_9
    iget v1, p1, Lcom/tom_roush/pdfbox/text/TextPosition;->widthOfSpace:F

    iget v3, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->widthOfSpace:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    .line 853
    :cond_a
    iget v1, p1, Lcom/tom_roush/pdfbox/text/TextPosition;->fontSize:F

    iget v3, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->fontSize:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->fontSizePt:I

    .line 857
    iget v3, p1, Lcom/tom_roush/pdfbox/text/TextPosition;->fontSizePt:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    if-eqz v1, :cond_d

    .line 861
    iget-object v3, p1, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_0

    :cond_d
    iget-object v1, p1, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    if-eqz v1, :cond_e

    :goto_0
    return v2

    :cond_e
    iget-object v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->charCodes:[I

    .line 865
    iget-object v3, p1, Lcom/tom_roush/pdfbox/text/TextPosition;->charCodes:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    .line 869
    iget-object p1, p1, Lcom/tom_roush/pdfbox/text/TextPosition;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    if-eqz v1, :cond_10

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_10
    if-nez p1, :cond_11

    goto :goto_1

    :cond_11
    move v0, v2

    :goto_1
    return v0
.end method

.method public getCharacterCodes()[I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->charCodes:[I

    return-object v0
.end method

.method public getDir()F
    .locals 7

    iget v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->direction:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 211
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleY()F

    move-result v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 212
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/util/Matrix;->getShearY()F

    move-result v2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 213
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/util/Matrix;->getShearX()F

    move-result v3

    iget-object v4, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 214
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleX()F

    move-result v4

    cmpl-float v5, v0, v1

    if-lez v5, :cond_0

    .line 218
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v4

    if-gez v5, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v0

    if-gez v5, :cond_0

    cmpl-float v5, v4, v1

    if-lez v5, :cond_0

    iput v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->direction:F

    goto :goto_0

    :cond_0
    cmpg-float v5, v0, v1

    if-gez v5, :cond_1

    .line 224
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    cmpg-float v5, v4, v1

    if-gez v5, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->direction:F

    goto :goto_0

    .line 230
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    cmpl-float v5, v2, v1

    if-lez v5, :cond_2

    cmpg-float v5, v3, v1

    if-gez v5, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_2

    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->direction:F

    goto :goto_0

    .line 236
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    cmpg-float v0, v2, v1

    if-gez v0, :cond_3

    cmpl-float v0, v3, v1

    if-lez v0, :cond_3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    const/high16 v0, 0x43870000    # 270.0f

    iput v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->direction:F

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->direction:F

    :cond_4
    :goto_0
    iget v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->direction:F

    return v0
.end method

.method public getEndX()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->endX:F

    return v0
.end method

.method public getEndY()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->endY:F

    return v0
.end method

.method public getFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->fontSize:F

    return v0
.end method

.method public getFontSizeInPt()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->fontSizePt:I

    int-to-float v0, v0

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->maxHeight:F

    return v0
.end method

.method public getHeightDir()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->maxHeight:F

    return v0
.end method

.method public getIndividualWidths()[F
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->widths:[F

    return-object v0
.end method

.method public getPageHeight()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->pageHeight:F

    return v0
.end method

.method public getPageWidth()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->pageWidth:F

    return v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->rotation:I

    return v0
.end method

.method public getTextMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    return-object v0
.end method

.method public getUnicode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->unicode:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->rotation:I

    int-to-float v0, v0

    .line 407
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getWidthRot(F)F

    move-result v0

    return v0
.end method

.method public getWidthDirAdj()F
    .locals 1

    .line 417
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getDir()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getWidthRot(F)F

    move-result v0

    return v0
.end method

.method public getWidthOfSpace()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->widthOfSpace:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->x:F

    return v0
.end method

.method public getXDirAdj()F
    .locals 1

    .line 308
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getDir()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getXRot(F)F

    move-result v0

    return v0
.end method

.method public getXScale()F
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 498
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getScalingFactorX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->y:F

    return v0
.end method

.method public getYDirAdj()F
    .locals 2

    .line 370
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getDir()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->pageWidth:F

    .line 378
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getYLowerLeftRot(F)F

    move-result v0

    :goto_0
    sub-float/2addr v1, v0

    return v1

    :cond_1
    :goto_1
    iget v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->pageHeight:F

    .line 374
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getYLowerLeftRot(F)F

    move-result v0

    goto :goto_0
.end method

.method public getYScale()F
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 510
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getScalingFactorY()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->endX:F

    .line 878
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->endY:F

    .line 879
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->maxHeight:F

    .line 880
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->rotation:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->x:F

    .line 882
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->y:F

    .line 883
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->pageHeight:F

    .line 884
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->pageWidth:F

    .line 885
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->widthOfSpace:F

    .line 886
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->charCodes:[I

    .line 887
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    if-eqz v2, :cond_1

    .line 888
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->fontSize:F

    .line 889
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->fontSizePt:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isDiacritic()Z
    .locals 4

    .line 717
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getUnicode()Ljava/lang/String;

    move-result-object v0

    .line 718
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    const-string v1, "\u30fc"

    .line 722
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 730
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2
.end method

.method public mergeDiacritic(Lcom/tom_roush/pdfbox/text/TextPosition;)V
    .locals 12

    .line 582
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getUnicode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    .line 587
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getXDirAdj()F

    move-result v0

    .line 588
    iget-object v2, p1, Lcom/tom_roush/pdfbox/text/TextPosition;->widths:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    add-float/2addr v2, v0

    .line 590
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getXDirAdj()F

    move-result v4

    iget-object v5, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->unicode:Ljava/lang/String;

    .line 592
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v4

    move v4, v3

    :goto_0
    if-ge v3, v5, :cond_8

    if-nez v4, :cond_8

    iget-object v7, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->widths:[F

    .line 597
    array-length v8, v7

    if-lt v3, v8, :cond_1

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "diacritic "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getUnicode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " on ligature "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->unicode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not supported yet and is ignored (PDFBOX-2831)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PdfBox-Android"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 603
    :cond_1
    aget v8, v7, v3

    add-float v9, v6, v8

    cmpg-float v10, v0, v6

    if-gez v10, :cond_4

    cmpg-float v11, v2, v9

    if-gtz v11, :cond_4

    if-nez v3, :cond_2

    .line 612
    invoke-direct {p0, v3, p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->insertDiacritic(ILcom/tom_roush/pdfbox/text/TextPosition;)V

    goto :goto_1

    :cond_2
    sub-float v4, v2, v6

    div-float/2addr v4, v8

    sub-float v8, v6, v0

    add-int/lit8 v9, v3, -0x1

    .line 620
    aget v7, v7, v9

    div-float/2addr v8, v7

    cmpl-float v4, v4, v8

    if-ltz v4, :cond_3

    .line 624
    invoke-direct {p0, v3, p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->insertDiacritic(ILcom/tom_roush/pdfbox/text/TextPosition;)V

    goto :goto_1

    .line 628
    :cond_3
    invoke-direct {p0, v9, p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->insertDiacritic(ILcom/tom_roush/pdfbox/text/TextPosition;)V

    goto :goto_1

    :cond_4
    if-gez v10, :cond_5

    .line 637
    invoke-direct {p0, v3, p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->insertDiacritic(ILcom/tom_roush/pdfbox/text/TextPosition;)V

    :goto_1
    move v4, v1

    goto :goto_2

    :cond_5
    cmpg-float v7, v2, v9

    if-gtz v7, :cond_6

    .line 644
    invoke-direct {p0, v3, p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->insertDiacritic(ILcom/tom_roush/pdfbox/text/TextPosition;)V

    goto :goto_1

    :cond_6
    add-int/lit8 v7, v5, -0x1

    if-ne v3, v7, :cond_7

    .line 650
    invoke-direct {p0, v3, p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->insertDiacritic(ILcom/tom_roush/pdfbox/text/TextPosition;)V

    goto :goto_1

    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/tom_roush/pdfbox/text/TextPosition;->widths:[F

    .line 655
    aget v7, v7, v3

    add-float/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 745
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getUnicode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
