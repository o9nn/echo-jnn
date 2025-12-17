.class public Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;
.super Ljava/lang/Object;
.source "PDPanoseClassification.java"


# static fields
.field public static final LENGTH:I = 0xa


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->bytes:[B

    return-void
.end method


# virtual methods
.method public getArmStyle()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->bytes:[B

    const/4 v1, 0x6

    .line 71
    aget-byte v0, v0, v1

    return v0
.end method

.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->bytes:[B

    return-object v0
.end method

.method public getContrast()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->bytes:[B

    const/4 v1, 0x4

    .line 61
    aget-byte v0, v0, v1

    return v0
.end method

.method public getFamilyKind()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->bytes:[B

    const/4 v1, 0x0

    .line 41
    aget-byte v0, v0, v1

    return v0
.end method

.method public getLetterform()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->bytes:[B

    const/4 v1, 0x7

    .line 76
    aget-byte v0, v0, v1

    return v0
.end method

.method public getMidline()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->bytes:[B

    const/16 v1, 0x8

    .line 81
    aget-byte v0, v0, v1

    return v0
.end method

.method public getProportion()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->bytes:[B

    const/4 v1, 0x3

    .line 56
    aget-byte v0, v0, v1

    return v0
.end method

.method public getSerifStyle()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->bytes:[B

    const/4 v1, 0x1

    .line 46
    aget-byte v0, v0, v1

    return v0
.end method

.method public getStrokeVariation()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->bytes:[B

    const/4 v1, 0x5

    .line 66
    aget-byte v0, v0, v1

    return v0
.end method

.method public getWeight()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->bytes:[B

    const/4 v1, 0x2

    .line 51
    aget-byte v0, v0, v1

    return v0
.end method

.method public getXHeight()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->bytes:[B

    const/16 v1, 0x9

    .line 86
    aget-byte v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ FamilyKind = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getFamilyKind()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SerifStyle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getSerifStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Weight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getWeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Proportion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getProportion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Contrast = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getContrast()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", StrokeVariation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getStrokeVariation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ArmStyle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getArmStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Letterform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getLetterform()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Midline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getMidline()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", XHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;->getXHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
