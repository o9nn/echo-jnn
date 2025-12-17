.class final Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;
.super Ljava/io/OutputStream;
.source "CCITTFaxEncoderStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;
    }
.end annotation


# static fields
.field private static final BLACK_NONTERMINATING_CODES:[Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

.field private static final BLACK_TERMINATING_CODES:[Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

.field private static final WHITE_NONTERMINATING_CODES:[Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

.field private static final WHITE_TERMINATING_CODES:[Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;


# instance fields
.field private changesCurrentRow:[I

.field private changesCurrentRowLength:I

.field private changesReferenceRow:[I

.field private changesReferenceRowLength:I

.field private final columns:I

.field private currentBufferLength:I

.field private currentRow:I

.field private final fillOrder:I

.field private final inputBuffer:[B

.field private final inputBufferLength:I

.field private outputBuffer:B

.field private outputBufferBitLength:B

.field private final rows:I

.field private final stream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x40

    new-array v1, v0, [Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    sput-object v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->WHITE_TERMINATING_CODES:[Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    const/16 v1, 0x28

    new-array v2, v1, [Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    sput-object v2, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->WHITE_NONTERMINATING_CODES:[Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    const/4 v2, 0x0

    move v3, v2

    .line 293
    :goto_0
    sget-object v4, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->WHITE_CODES:[[S

    array-length v4, v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v3, 0x4

    move v6, v2

    .line 295
    :goto_1
    sget-object v7, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->WHITE_CODES:[[S

    aget-object v7, v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 296
    sget-object v7, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->WHITE_RUN_LENGTHS:[[S

    aget-object v7, v7, v3

    aget-short v7, v7, v6

    .line 297
    sget-object v8, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->WHITE_CODES:[[S

    aget-object v8, v8, v3

    aget-short v8, v8, v6

    if-ge v7, v0, :cond_0

    sget-object v9, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->WHITE_TERMINATING_CODES:[Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    .line 300
    new-instance v10, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    invoke-direct {v10, v8, v4, v5}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;-><init>(IILcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$1;)V

    aput-object v10, v9, v7

    goto :goto_2

    :cond_0
    sget-object v9, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->WHITE_NONTERMINATING_CODES:[Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    .line 303
    div-int/lit8 v7, v7, 0x40

    add-int/lit8 v7, v7, -0x1

    new-instance v10, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    invoke-direct {v10, v8, v4, v5}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;-><init>(IILcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$1;)V

    aput-object v10, v9, v7

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array v3, v0, [Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    sput-object v3, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->BLACK_TERMINATING_CODES:[Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    new-array v1, v1, [Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    sput-object v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->BLACK_NONTERMINATING_CODES:[Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    move v1, v2

    .line 310
    :goto_3
    sget-object v3, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->BLACK_CODES:[[S

    array-length v3, v3

    if-ge v1, v3, :cond_5

    add-int/lit8 v3, v1, 0x2

    move v4, v2

    .line 312
    :goto_4
    sget-object v6, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->BLACK_CODES:[[S

    aget-object v6, v6, v1

    array-length v6, v6

    if-ge v4, v6, :cond_4

    .line 313
    sget-object v6, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->BLACK_RUN_LENGTHS:[[S

    aget-object v6, v6, v1

    aget-short v6, v6, v4

    .line 314
    sget-object v7, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->BLACK_CODES:[[S

    aget-object v7, v7, v1

    aget-short v7, v7, v4

    if-ge v6, v0, :cond_3

    sget-object v8, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->BLACK_TERMINATING_CODES:[Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    .line 317
    new-instance v9, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    invoke-direct {v9, v7, v3, v5}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;-><init>(IILcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$1;)V

    aput-object v9, v8, v6

    goto :goto_5

    :cond_3
    sget-object v8, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->BLACK_NONTERMINATING_CODES:[Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    .line 320
    div-int/lit8 v6, v6, 0x40

    add-int/lit8 v6, v6, -0x1

    new-instance v9, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    invoke-direct {v9, v7, v3, v5}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;-><init>(IILcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$1;)V

    aput-object v9, v8, v6

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;III)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->currentBufferLength:I

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->currentRow:I

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesCurrentRowLength:I

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesReferenceRowLength:I

    iput-byte v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->outputBuffer:B

    iput-byte v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->outputBufferBitLength:B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->stream:Ljava/io/OutputStream;

    iput p2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->columns:I

    iput p3, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->rows:I

    iput p4, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->fillOrder:I

    .line 71
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesReferenceRow:[I

    .line 72
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesCurrentRow:[I

    add-int/lit8 p2, p2, 0x7

    .line 74
    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->inputBufferLength:I

    .line 75
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->inputBuffer:[B

    return-void
.end method

.method private clearOutputBuffer()V
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->outputBuffer:B

    iput-byte v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->outputBufferBitLength:B

    return-void
.end method

.method private encode2D()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    iget v4, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->columns:I

    if-ge v2, v4, :cond_3

    .line 171
    invoke-direct {p0, v2, v3}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->getNextChanges(IZ)[I

    move-result-object v4

    .line 173
    invoke-direct {p0, v2, v3}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->getNextRefChanges(IZ)[I

    move-result-object v5

    .line 175
    aget v6, v4, v1

    aget v7, v5, v1

    sub-int v7, v6, v7

    .line 176
    aget v8, v5, v0

    if-le v6, v8, :cond_0

    const/4 v2, 0x4

    .line 178
    invoke-direct {p0, v0, v2}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->write(II)V

    .line 179
    aget v2, v5, v0

    goto :goto_0

    :cond_0
    const/4 v6, 0x3

    if-gt v7, v6, :cond_2

    const/4 v8, -0x3

    if-ge v7, v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x6

    const/4 v4, 0x7

    const/4 v8, 0x2

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 202
    :pswitch_0
    invoke-direct {p0, v6, v4}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->write(II)V

    goto :goto_1

    .line 199
    :pswitch_1
    invoke-direct {p0, v6, v2}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->write(II)V

    goto :goto_1

    .line 196
    :pswitch_2
    invoke-direct {p0, v6, v6}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->write(II)V

    goto :goto_1

    .line 193
    :pswitch_3
    invoke-direct {p0, v0, v0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->write(II)V

    goto :goto_1

    .line 205
    :pswitch_4
    invoke-direct {p0, v8, v6}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->write(II)V

    goto :goto_1

    .line 208
    :pswitch_5
    invoke-direct {p0, v8, v2}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->write(II)V

    goto :goto_1

    .line 211
    :pswitch_6
    invoke-direct {p0, v8, v4}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->write(II)V

    :goto_1
    xor-int/lit8 v3, v3, 0x1

    .line 217
    aget v2, v5, v1

    add-int/2addr v2, v7

    goto :goto_0

    .line 183
    :cond_2
    :goto_2
    invoke-direct {p0, v0, v6}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->write(II)V

    .line 184
    aget v5, v4, v1

    sub-int/2addr v5, v2

    invoke-direct {p0, v5, v3}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->writeRun(IZ)V

    .line 185
    aget v2, v4, v0

    aget v5, v4, v1

    sub-int/2addr v2, v5

    xor-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v2, v5}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->writeRun(IZ)V

    .line 186
    aget v2, v4, v0

    goto :goto_0

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private encodeRow()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->currentRow:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->currentRow:I

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesReferenceRow:[I

    iget-object v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesCurrentRow:[I

    iput-object v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesReferenceRow:[I

    iput-object v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesCurrentRow:[I

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesCurrentRowLength:I

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesReferenceRowLength:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesCurrentRowLength:I

    move v2, v0

    move v3, v1

    :goto_0
    iget v4, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->columns:I

    if-ge v2, v4, :cond_2

    .line 110
    div-int/lit8 v4, v2, 0x8

    .line 111
    rem-int/lit8 v5, v2, 0x8

    iget-object v6, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->inputBuffer:[B

    .line 112
    aget-byte v4, v6, v4

    rsub-int/lit8 v5, v5, 0x7

    shr-int/2addr v4, v5

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesCurrentRow:[I

    iget v5, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesCurrentRowLength:I

    .line 113
    aput v2, v4, v5

    add-int/2addr v5, v1

    iput v5, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesCurrentRowLength:I

    xor-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_2
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->encodeRowType6()V

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->currentRow:I

    iget v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->rows:I

    if-ne v0, v1, :cond_3

    .line 123
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->writeEOL()V

    .line 124
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->writeEOL()V

    .line 125
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->fill()V

    :cond_3
    return-void
.end method

.method private encodeRowType6()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->encode2D()V

    return-void
.end method

.method private fill()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->outputBufferBitLength:B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->stream:Ljava/io/OutputStream;

    iget-byte v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->outputBuffer:B

    .line 261
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->clearOutputBuffer()V

    return-void
.end method

.method private getNextChanges(IZ)[I
    .locals 6

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->columns:I

    filled-new-array {v0, v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesCurrentRowLength:I

    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesCurrentRow:[I

    .line 137
    aget v5, v4, v2

    if-lt p1, v5, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_1
    :goto_1
    aput v5, v0, v1

    const/4 p1, 0x1

    add-int/2addr v2, p1

    if-ge v2, v3, :cond_2

    .line 140
    aget p2, v4, v2

    aput p2, v0, p1

    :cond_2
    return-object v0
.end method

.method private getNextRefChanges(IZ)[I
    .locals 5

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->columns:I

    filled-new-array {v0, v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    :goto_0
    iget v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesReferenceRowLength:I

    if-ge p2, v2, :cond_2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->changesReferenceRow:[I

    .line 225
    aget v4, v3, p2

    if-gt v4, p1, :cond_1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 226
    aput v4, v0, p1

    add-int/2addr p2, v1

    if-ge p2, v2, :cond_2

    .line 228
    aget p1, v3, p2

    aput p1, v0, v1

    :cond_2
    return-object v0
.end method

.method private write(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_5

    sub-int v2, p2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    shr-int v2, p1, v2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    iget v4, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->fillOrder:I

    const/16 v5, 0x8

    if-ne v4, v3, :cond_2

    iget-byte v4, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->outputBuffer:B

    if-eqz v2, :cond_1

    iget-byte v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->outputBufferBitLength:B

    .line 241
    rem-int/2addr v2, v5

    rsub-int/lit8 v2, v2, 0x7

    shl-int v2, v3, v2

    goto :goto_2

    :cond_1
    move v2, v0

    :goto_2
    or-int/2addr v2, v4

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->outputBuffer:B

    goto :goto_4

    :cond_2
    iget-byte v4, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->outputBuffer:B

    if-eqz v2, :cond_3

    iget-byte v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->outputBufferBitLength:B

    .line 244
    rem-int/2addr v2, v5

    shl-int v2, v3, v2

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    or-int/2addr v2, v4

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->outputBuffer:B

    :goto_4
    iget-byte v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->outputBufferBitLength:B

    add-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->outputBufferBitLength:B

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->stream:Ljava/io/OutputStream;

    iget-byte v3, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->outputBuffer:B

    .line 249
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 250
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->clearOutputBuffer()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private writeEOL()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0xc

    .line 256
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->write(II)V

    return-void
.end method

.method private writeRun(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    div-int/lit8 v0, p1, 0x40

    if-eqz p2, :cond_0

    sget-object v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->WHITE_NONTERMINATING_CODES:[Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->BLACK_NONTERMINATING_CODES:[Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    :goto_0
    if-lez v0, :cond_2

    .line 153
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 154
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    iget v2, v2, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;->code:I

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    iget v3, v3, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;->length:I

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->write(II)V

    .line 155
    array-length v2, v1

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 158
    aget-object v2, v1, v0

    iget v2, v2, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;->code:I

    aget-object v0, v1, v0

    iget v0, v0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;->length:I

    invoke-direct {p0, v2, v0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->write(II)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    sget-object p2, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->WHITE_TERMINATING_CODES:[Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    .line 163
    rem-int/lit8 p1, p1, 0x40

    aget-object p1, p2, p1

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->BLACK_TERMINATING_CODES:[Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;

    rem-int/lit8 p1, p1, 0x40

    aget-object p1, p2, p1

    .line 164
    :goto_1
    iget p2, p1, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;->code:I

    iget p1, p1, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream$Code;->length:I

    invoke-direct {p0, p2, p1}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->write(II)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->stream:Ljava/io/OutputStream;

    .line 96
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->stream:Ljava/io/OutputStream;

    .line 91
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->inputBuffer:[B

    iget v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->currentBufferLength:I

    int-to-byte p1, p1

    .line 80
    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->currentBufferLength:I

    iget p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->inputBufferLength:I

    if-ne v1, p1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->encodeRow()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;->currentBufferLength:I

    :cond_0
    return-void
.end method
