.class public Lcom/tom_roush/pdfbox/cos/COSObjectKey;
.super Ljava/lang/Object;
.source "COSObjectKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/tom_roush/pdfbox/cos/COSObjectKey;",
        ">;"
    }
.end annotation


# instance fields
.field private generation:I

.field private final number:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->number:J

    iput p3, p0, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->generation:I

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSObject;)V
    .locals 2

    .line 37
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObjectNumber()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getGenerationNumber()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)I
    .locals 6

    .line 116
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v4

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_1

    return v2

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v3

    if-ge v0, v3, :cond_2

    return v1

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result p1

    if-le v0, p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->compareTo(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 58
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public fixGeneration(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->generation:I

    return-void
.end method

.method public getGeneration()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->generation:I

    return v0
.end method

.method public getNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->number:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->number:J

    const/4 v2, 0x4

    shl-long/2addr v0, v2

    iget v2, p0, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->generation:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->number:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->generation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
