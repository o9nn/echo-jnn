.class public Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;
.super Ljava/lang/Object;
.source "PDRange.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private rangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

.field private startingIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->rangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 40
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->rangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 41
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->startingIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->rangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;I)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->rangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    iput p2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->startingIndex:I

    return-void
.end method


# virtual methods
.method public getCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->rangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->rangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getMax()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->rangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->startingIndex:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 119
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 120
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMin()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->rangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->startingIndex:I

    mul-int/lit8 v1, v1, 0x2

    .line 98
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 99
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0
.end method

.method public setMax(F)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->rangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->startingIndex:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 130
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setMin(F)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->rangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->startingIndex:I

    mul-int/lit8 v1, v1, 0x2

    .line 109
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PDRange{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
