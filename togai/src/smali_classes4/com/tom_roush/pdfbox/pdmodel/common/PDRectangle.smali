.class public Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
.super Ljava/lang/Object;
.source "PDRectangle.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field public static final A0:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

.field public static final A1:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

.field public static final A2:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

.field public static final A3:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

.field public static final A4:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

.field public static final A5:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

.field public static final A6:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

.field public static final LEGAL:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

.field public static final LETTER:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

.field private static final POINTS_PER_INCH:F = 72.0f

.field private static final POINTS_PER_MM:F = 2.8346457f


# instance fields
.field private final rectArray:Lcom/tom_roush/pdfbox/cos/COSArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    const/high16 v1, 0x44460000    # 792.0f

    const/high16 v2, 0x44190000    # 612.0f

    invoke-direct {v0, v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FF)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->LETTER:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 48
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    const/high16 v1, 0x447c0000    # 1008.0f

    invoke-direct {v0, v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FF)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->LEGAL:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 51
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    const v1, 0x4552a64d

    const v2, 0x4514fefe

    invoke-direct {v0, v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FF)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->A0:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 54
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    const v1, 0x44d278f2

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FF)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->A1:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 57
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    const v2, 0x4494d1a4

    invoke-direct {v0, v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FF)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->A2:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 60
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    const v1, 0x445278f2

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FF)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->A3:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 63
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    const v2, 0x4414d1a4

    invoke-direct {v0, v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FF)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->A4:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 66
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    const v1, 0x43d1c387

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FF)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->A5:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 69
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    const v2, 0x4394d1a4

    invoke-direct {v0, v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FF)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->A6:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->rectArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 105
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 106
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, p2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 107
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    add-float/2addr p1, p3

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 108
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    add-float/2addr p2, p4

    invoke-direct {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/fontbox/util/BoundingBox;)V
    .locals 3

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->rectArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 119
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/util/BoundingBox;->getLowerLeftX()F

    move-result v2

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 120
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/util/BoundingBox;->getLowerLeftY()F

    move-result v2

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 121
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/util/BoundingBox;->getUpperRightX()F

    move-result v2

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 122
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/util/BoundingBox;->getUpperRightY()F

    move-result p1

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 8

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 133
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->rectArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 135
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-direct {v1, v3}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 136
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    const/4 v3, 0x1

    aget v5, p1, v3

    const/4 v6, 0x3

    aget v7, p1, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-direct {v1, v5}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 137
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    aget v2, p1, v2

    aget v4, p1, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 138
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    aget v2, p1, v3

    aget p1, p1, v6

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 4

    .line 149
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v0

    .line 150
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v1

    .line 151
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v2

    .line 152
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    cmpl-float p1, p2, v2

    if-ltz p1, :cond_0

    cmpg-float p1, p2, v3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public createRetranslatedRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 2

    .line 168
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>()V

    .line 169
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 170
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    return-object v0
.end method

.method public getCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->rectArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->rectArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    .line 283
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLowerLeftX()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->rectArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    .line 191
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0
.end method

.method public getLowerLeftY()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->rectArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x1

    .line 211
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0
.end method

.method public getUpperRightX()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->rectArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x2

    .line 231
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0
.end method

.method public getUpperRightY()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->rectArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x3

    .line 251
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    .line 272
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public setLowerLeftX(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->rectArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 201
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setLowerLeftY(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->rectArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 221
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setUpperRightX(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->rectArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 241
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setUpperRightY(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->rectArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 261
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public toGeneralPath()Landroid/graphics/Path;
    .locals 5

    .line 334
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v0

    .line 335
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v1

    .line 336
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v2

    .line 337
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v3

    .line 338
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 339
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 340
    invoke-virtual {v4, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 341
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 342
    invoke-virtual {v4, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 343
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 356
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/tom_roush/pdfbox/util/Matrix;)Landroid/graphics/Path;
    .locals 5

    .line 296
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v0

    .line 297
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v1

    .line 298
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v2

    .line 299
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v3

    .line 301
    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/util/Matrix;->transformPoint(FF)Landroid/graphics/PointF;

    move-result-object v4

    .line 302
    invoke-virtual {p1, v2, v1}, Lcom/tom_roush/pdfbox/util/Matrix;->transformPoint(FF)Landroid/graphics/PointF;

    move-result-object v1

    .line 303
    invoke-virtual {p1, v2, v3}, Lcom/tom_roush/pdfbox/util/Matrix;->transformPoint(FF)Landroid/graphics/PointF;

    move-result-object v2

    .line 304
    invoke-virtual {p1, v0, v3}, Lcom/tom_roush/pdfbox/util/Matrix;->transformPoint(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 306
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 307
    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 308
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 309
    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 310
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 311
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method
