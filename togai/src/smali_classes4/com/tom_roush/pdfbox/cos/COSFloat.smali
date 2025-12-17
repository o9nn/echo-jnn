.class public Lcom/tom_roush/pdfbox/cos/COSFloat;
.super Lcom/tom_roush/pdfbox/cos/COSNumber;
.source "COSFloat.java"


# instance fields
.field private value:Ljava/math/BigDecimal;

.field private valueAsString:Ljava/lang/String;


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSNumber;-><init>()V

    .line 43
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->value:Ljava/math/BigDecimal;

    .line 44
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;->removeNullDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->valueAsString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSNumber;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->valueAsString:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->valueAsString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->value:Ljava/math/BigDecimal;

    .line 60
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSFloat;->checkMinMaxValues()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "--"

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "\'"

    const-string v3, "Error expected floating point number actual=\'"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->valueAsString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "^0\\.0*\\-\\d+"

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->valueAsString:Ljava/lang/String;

    const-string v4, "\\-"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->valueAsString:Ljava/lang/String;

    .line 82
    :goto_0
    :try_start_1
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->valueAsString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->value:Ljava/math/BigDecimal;

    .line 83
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSFloat;->checkMinMaxValues()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_1
    move-exception v0

    .line 87
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 78
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private checkMinMaxValues()V
    .locals 8

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->value:Ljava/math/BigDecimal;

    .line 94
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->value:Ljava/math/BigDecimal;

    .line 95
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v3, v0, v3

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    cmpl-float v3, v0, v4

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_3

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_3

    .line 108
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3810000000000000L    # 1.1754943508222875E-38

    cmpg-double v1, v1, v3

    if-gez v1, :cond_3

    goto :goto_2

    .line 101
    :cond_1
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v6, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v1, v1, v6

    if-lez v1, :cond_3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    int-to-float v0, v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    mul-float/2addr v0, v1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    float-to-double v0, v0

    .line 116
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->value:Ljava/math/BigDecimal;

    .line 117
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSFloat;->removeNullDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->valueAsString:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method private removeNullDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2e

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const-string v0, ".0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const-string v1, "0"

    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-interface {p1, p0}, Lcom/tom_roush/pdfbox/cos/ICOSVisitor;->visitFromFloat(Lcom/tom_roush/pdfbox/cos/COSFloat;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public doubleValue()D
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->value:Ljava/math/BigDecimal;

    .line 155
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 186
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    iget-object p1, p1, Lcom/tom_roush/pdfbox/cos/COSFloat;->value:Ljava/math/BigDecimal;

    .line 187
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public floatValue()F
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->value:Ljava/math/BigDecimal;

    .line 142
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->value:Ljava/math/BigDecimal;

    .line 196
    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->value:Ljava/math/BigDecimal;

    .line 177
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->value:Ljava/math/BigDecimal;

    .line 166
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "COSFloat{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->valueAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writePDF(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSFloat;->valueAsString:Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
