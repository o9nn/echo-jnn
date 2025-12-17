.class Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;
.super Lcom/tom_roush/fontbox/cff/CFFParser$EmbeddedCharset;
.source "CFFParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/cff/CFFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Format2Charset"
.end annotation


# instance fields
.field private format:I

.field private rangesCID2GID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Z)V
    .locals 0

    .line 1494
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$EmbeddedCharset;-><init>(Z)V

    return-void
.end method

.method static synthetic access$3502(Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;I)I
    .locals 0

    .line 1487
    iput p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;->format:I

    return p1
.end method

.method static synthetic access$3600(Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;)Ljava/util/List;
    .locals 0

    .line 1487
    iget-object p0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;->rangesCID2GID:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1487
    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;->rangesCID2GID:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getCIDForGID(I)I
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;->rangesCID2GID:Ljava/util/List;

    .line 1500
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;

    .line 1502
    invoke-virtual {v1, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->isInRange(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1504
    invoke-virtual {v1, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->mapValue(I)I

    move-result p1

    return p1

    .line 1507
    :cond_1
    invoke-super {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$EmbeddedCharset;->getCIDForGID(I)I

    move-result p1

    return p1
.end method

.method public getGIDForCID(I)I
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;->rangesCID2GID:Ljava/util/List;

    .line 1513
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;

    .line 1515
    invoke-virtual {v1, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->isInReverseRange(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1517
    invoke-virtual {v1, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;->mapReverseValue(I)I

    move-result p1

    return p1

    .line 1520
    :cond_1
    invoke-super {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$EmbeddedCharset;->getGIDForCID(I)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
