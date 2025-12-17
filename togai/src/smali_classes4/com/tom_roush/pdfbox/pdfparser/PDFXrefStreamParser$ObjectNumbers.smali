.class Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;
.super Ljava/lang/Object;
.source "PDFXrefStreamParser.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjectNumbers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private currentEnd:J

.field private currentNumber:J

.field private currentRange:I

.field private final end:[J

.field private maxValue:J

.field private final start:[J


# direct methods
.method private constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->currentRange:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->currentEnd:J

    iput-wide v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->currentNumber:J

    iput-wide v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->maxValue:J

    .line 178
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->start:[J

    array-length v1, v1

    .line 179
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->end:[J

    .line 181
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    .line 182
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 185
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSInteger;

    const-string v4, "Xref stream must have integer in /Index array"

    if-eqz v3, :cond_2

    .line 189
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSInteger;->longValue()J

    move-result-wide v2

    .line 190
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 195
    instance-of v6, v5, Lcom/tom_roush/pdfbox/cos/COSInteger;

    if-eqz v6, :cond_1

    .line 199
    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSInteger;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->start:[J

    .line 200
    aput-wide v2, v6, v1

    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->end:[J

    add-int/lit8 v7, v1, 0x1

    add-long/2addr v2, v4

    .line 201
    aput-wide v2, v6, v1

    move v1, v7

    goto :goto_0

    .line 197
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->start:[J

    .line 203
    aget-wide v2, p1, v0

    iput-wide v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->currentNumber:J

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->end:[J

    .line 204
    aget-wide v2, p1, v0

    iput-wide v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->currentEnd:J

    add-int/lit8 v1, v1, -0x1

    .line 205
    aget-wide v0, p1, v1

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->maxValue:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->currentNumber:J

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->maxValue:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Long;
    .locals 7

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->currentNumber:J

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->maxValue:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->currentEnd:J

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1

    if-gez v2, :cond_0

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->currentNumber:J

    .line 223
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->start:[J

    iget v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->currentRange:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->currentRange:I

    .line 225
    aget-wide v5, v0, v1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->end:[J

    .line 226
    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->currentEnd:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->currentNumber:J

    .line 227
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 219
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser$ObjectNumbers;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
