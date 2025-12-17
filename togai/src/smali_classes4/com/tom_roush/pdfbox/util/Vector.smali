.class public final Lcom/tom_roush/pdfbox/util/Vector;
.super Ljava/lang/Object;
.source "Vector.java"


# instance fields
.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tom_roush/pdfbox/util/Vector;->x:F

    iput p2, p0, Lcom/tom_roush/pdfbox/util/Vector;->y:F

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/util/Vector;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/util/Vector;->y:F

    return v0
.end method

.method public scale(F)Lcom/tom_roush/pdfbox/util/Vector;
    .locals 3

    .line 57
    new-instance v0, Lcom/tom_roush/pdfbox/util/Vector;

    iget v1, p0, Lcom/tom_roush/pdfbox/util/Vector;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/tom_roush/pdfbox/util/Vector;->y:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/util/Vector;-><init>(FF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tom_roush/pdfbox/util/Vector;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/pdfbox/util/Vector;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
