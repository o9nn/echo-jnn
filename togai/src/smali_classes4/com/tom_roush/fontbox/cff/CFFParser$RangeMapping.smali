.class final Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;
.super Ljava/lang/Object;
.source "CFFParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/cff/CFFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RangeMapping"
.end annotation


# instance fields
.field private final endMappedValue:I

.field private final endValue:I

.field private final startMappedValue:I

.field private final startValue:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 1542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->startValue:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->endValue:I

    iput p2, p0, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->startMappedValue:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->endMappedValue:I

    return-void
.end method

.method synthetic constructor <init>(IIILcom/tom_roush/fontbox/cff/CFFParser$1;)V
    .locals 0

    .line 1534
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;-><init>(III)V

    return-void
.end method


# virtual methods
.method isInRange(I)Z
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->startValue:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->endValue:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isInReverseRange(I)Z
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->startMappedValue:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->endMappedValue:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method mapReverseValue(I)I
    .locals 2

    .line 1573
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->isInReverseRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->startValue:I

    iget v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->startMappedValue:I

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method mapValue(I)I
    .locals 2

    .line 1561
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->startMappedValue:I

    iget v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->startValue:I

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[start value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->startValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->endValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", start mapped-value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->startMappedValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end mapped-value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->endMappedValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
