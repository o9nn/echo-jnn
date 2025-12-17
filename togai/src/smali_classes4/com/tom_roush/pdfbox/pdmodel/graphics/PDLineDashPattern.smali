.class public final Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;
.super Ljava/lang/Object;
.source "PDLineDashPattern.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final array:[F

.field private final phase:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->array:[F

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->phase:I

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;I)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->array:[F

    iput p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->phase:I

    return-void
.end method


# virtual methods
.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 3

    .line 60
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 61
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->array:[F

    .line 62
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->setFloatArray([F)V

    .line 63
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->phase:I

    int-to-long v1, v1

    .line 64
    invoke-static {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object v0
.end method

.method public getDashArray()[F
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->array:[F

    .line 84
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public getPhase()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->phase:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PDLineDashPattern{array="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->array:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->phase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
