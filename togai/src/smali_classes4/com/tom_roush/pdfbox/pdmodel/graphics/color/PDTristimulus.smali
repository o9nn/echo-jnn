.class public final Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDTristimulus;
.super Ljava/lang/Object;
.source "PDTristimulus.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final values:Lcom/tom_roush/pdfbox/cos/COSArray;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDTristimulus;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 41
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 42
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 43
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDTristimulus;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-void
.end method

.method public constructor <init>([F)V
    .locals 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDTristimulus;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v0, 0x0

    .line 62
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDTristimulus;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 64
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSFloat;

    aget v3, p1, v0

    invoke-direct {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDTristimulus;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getX()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDTristimulus;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDTristimulus;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0
.end method

.method public getZ()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDTristimulus;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x2

    .line 119
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0
.end method

.method public setX(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDTristimulus;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 92
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setY(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDTristimulus;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 110
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setZ(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDTristimulus;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 128
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
