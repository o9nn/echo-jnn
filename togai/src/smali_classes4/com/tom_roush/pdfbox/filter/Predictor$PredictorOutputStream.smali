.class final Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;
.super Ljava/io/FilterOutputStream;
.source "Predictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/filter/Predictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PredictorOutputStream"
.end annotation


# instance fields
.field private final bitsPerComponent:I

.field private final colors:I

.field private final columns:I

.field private currentRow:[B

.field private currentRowData:I

.field private lastRow:[B

.field private predictor:I

.field private final predictorPerRow:Z

.field private predictorRead:Z

.field private final rowLength:I


# direct methods
.method constructor <init>(Ljava/io/OutputStream;IIII)V
    .locals 0

    .line 280
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->currentRowData:I

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->predictorRead:Z

    iput p2, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->predictor:I

    iput p3, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->colors:I

    iput p4, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->bitsPerComponent:I

    iput p5, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->columns:I

    .line 285
    invoke-static {p3, p4, p5}, Lcom/tom_roush/pdfbox/filter/Predictor;->calculateRowLength(III)I

    move-result p3

    iput p3, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->rowLength:I

    const/16 p4, 0xa

    if-lt p2, p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->predictorPerRow:Z

    .line 287
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->currentRow:[B

    .line 288
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->lastRow:[B

    return-void
.end method

.method private decodeAndWriteRow()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->predictor:I

    iget v1, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->colors:I

    iget v2, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->bitsPerComponent:I

    iget v3, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->columns:I

    iget-object v4, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->currentRow:[B

    iget-object v5, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->lastRow:[B

    .line 331
    invoke-static/range {v0 .. v5}, Lcom/tom_roush/pdfbox/filter/Predictor;->decodePredictorRow(IIII[B[B)V

    .line 332
    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->currentRow:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 333
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->flipRows()V

    return-void
.end method

.method private flipRows()V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->lastRow:[B

    iget-object v1, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->currentRow:[B

    iput-object v1, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->lastRow:[B

    iput-object v0, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->currentRow:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->currentRowData:I

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->predictorRead:Z

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->currentRowData:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->currentRow:[B

    iget v2, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->rowLength:I

    const/4 v3, 0x0

    .line 355
    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 356
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->decodeAndWriteRow()V

    .line 358
    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 294
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_2

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->predictorPerRow:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->currentRowData:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->predictorRead:Z

    if-nez v0, :cond_1

    .line 308
    aget-byte v0, p1, p2

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->predictor:I

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->predictorRead:Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->rowLength:I

    iget v1, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->currentRowData:I

    sub-int/2addr v0, v1

    sub-int v1, p3, p2

    .line 314
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->currentRow:[B

    iget v2, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->currentRowData:I

    .line 315
    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->currentRowData:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->currentRowData:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->currentRow:[B

    .line 321
    array-length v0, v0

    if-ne v1, v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/Predictor$PredictorOutputStream;->decodeAndWriteRow()V

    goto :goto_0

    :cond_2
    return-void
.end method
