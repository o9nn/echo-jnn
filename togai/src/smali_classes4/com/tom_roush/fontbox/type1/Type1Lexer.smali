.class Lcom/tom_roush/fontbox/type1/Type1Lexer;
.super Ljava/lang/Object;
.source "Type1Lexer.java"


# instance fields
.field private aheadToken:Lcom/tom_roush/fontbox/type1/Token;

.field private final buffer:Ljava/nio/ByteBuffer;

.field private openParens:I


# direct methods
.method constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->openParens:I

    .line 59
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->readToken(Lcom/tom_roush/fontbox/type1/Token;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->aheadToken:Lcom/tom_roush/fontbox/type1/Token;

    return-void
.end method

.method private getChar()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v0, v0

    return v0

    .line 105
    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Premature end of buffer reached"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readCharString(I)Lcom/tom_roush/fontbox/type1/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 502
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 503
    new-array p1, p1, [B

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 504
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 505
    new-instance v0, Lcom/tom_roush/fontbox/type1/Token;

    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->CHARSTRING:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {v0, p1, v1}, Lcom/tom_roush/fontbox/type1/Token;-><init>([BLcom/tom_roush/fontbox/type1/Token$Kind;)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 509
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Premature end of buffer reached"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readComment()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 410
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 419
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 422
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readRegular()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 378
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 380
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 381
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v1

    .line 382
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 394
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 389
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 397
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    return-object v0

    .line 401
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readString()Lcom/tom_roush/fontbox/type1/Token;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 432
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 434
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v1

    const/16 v2, 0xa

    const-string v3, "\n"

    if-eq v1, v2, :cond_c

    const/16 v2, 0xd

    if-eq v1, v2, :cond_c

    const/4 v2, 0x1

    const/16 v4, 0x5c

    const/16 v5, 0x29

    const/16 v6, 0x28

    if-eq v1, v4, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_1

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->openParens:I

    if-nez v1, :cond_2

    .line 447
    new-instance v1, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/tom_roush/fontbox/type1/Token;->STRING:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {v1, v0, v2}, Lcom/tom_roush/fontbox/type1/Token;-><init>(Ljava/lang/String;Lcom/tom_roush/fontbox/type1/Token$Kind;)V

    return-object v1

    .line 449
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->openParens:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->openParens:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->openParens:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->openParens:I

    .line 441
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 454
    :cond_4
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v6, :cond_b

    if-eq v1, v5, :cond_a

    if-eq v1, v4, :cond_9

    const/16 v4, 0x62

    if-eq v1, v4, :cond_8

    const/16 v4, 0x66

    if-eq v1, v4, :cond_7

    const/16 v4, 0x6e

    if-eq v1, v4, :cond_6

    const/16 v4, 0x72

    if-eq v1, v4, :cond_6

    const/16 v3, 0x74

    if-eq v1, v3, :cond_5

    goto :goto_1

    :cond_5
    const/16 v3, 0x9

    .line 459
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 458
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const/16 v3, 0xc

    .line 461
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 460
    :cond_8
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 462
    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 464
    :cond_a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 463
    :cond_b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 469
    :goto_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [C

    const/4 v4, 0x0

    aput-char v1, v3, v4

    .line 471
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v1

    aput-char v1, v3, v2

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v2

    aput-char v2, v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 474
    :try_start_0
    invoke-static {v1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 479
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 485
    :cond_c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method private readToken(Lcom/tom_roush/fontbox/type1/Token;)Lcom/tom_roush/fontbox/type1/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 121
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->readComment()Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v0, 0x28

    if-ne v1, v0, :cond_2

    .line 131
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->readString()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0x29

    if-eq v1, v0, :cond_14

    const/16 v0, 0x5b

    if-ne v1, v0, :cond_3

    .line 140
    new-instance p1, Lcom/tom_roush/fontbox/type1/Token;

    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->START_ARRAY:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p1, v1, v0}, Lcom/tom_roush/fontbox/type1/Token;-><init>(CLcom/tom_roush/fontbox/type1/Token$Kind;)V

    return-object p1

    :cond_3
    const/16 v0, 0x7b

    if-ne v1, v0, :cond_4

    .line 144
    new-instance p1, Lcom/tom_roush/fontbox/type1/Token;

    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p1, v1, v0}, Lcom/tom_roush/fontbox/type1/Token;-><init>(CLcom/tom_roush/fontbox/type1/Token$Kind;)V

    return-object p1

    :cond_4
    const/16 v0, 0x5d

    if-ne v1, v0, :cond_5

    .line 148
    new-instance p1, Lcom/tom_roush/fontbox/type1/Token;

    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->END_ARRAY:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p1, v1, v0}, Lcom/tom_roush/fontbox/type1/Token;-><init>(CLcom/tom_roush/fontbox/type1/Token$Kind;)V

    return-object p1

    :cond_5
    const/16 v0, 0x7d

    if-ne v1, v0, :cond_6

    .line 152
    new-instance p1, Lcom/tom_roush/fontbox/type1/Token;

    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->END_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p1, v1, v0}, Lcom/tom_roush/fontbox/type1/Token;-><init>(CLcom/tom_roush/fontbox/type1/Token$Kind;)V

    return-object p1

    :cond_6
    const/16 v0, 0x2f

    const-string v2, "Could not read token at position "

    if-ne v1, v0, :cond_8

    .line 156
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->readRegular()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 163
    new-instance v0, Lcom/tom_roush/fontbox/type1/Token;

    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {v0, p1, v1}, Lcom/tom_roush/fontbox/type1/Token;-><init>(Ljava/lang/String;Lcom/tom_roush/fontbox/type1/Token$Kind;)V

    return-object v0

    .line 160
    :cond_7
    new-instance p1, Lcom/tom_roush/fontbox/type1/DamagedFontException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tom_roush/fontbox/type1/DamagedFontException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    const/16 v0, 0x3c

    const/4 v3, 0x1

    if-ne v1, v0, :cond_a

    .line 167
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result p1

    if-ne p1, v1, :cond_9

    .line 170
    new-instance p1, Lcom/tom_roush/fontbox/type1/Token;

    const-string v0, "<<"

    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->START_DICT:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p1, v0, v1}, Lcom/tom_roush/fontbox/type1/Token;-><init>(Ljava/lang/String;Lcom/tom_roush/fontbox/type1/Token$Kind;)V

    return-object p1

    :cond_9
    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 175
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 176
    new-instance p1, Lcom/tom_roush/fontbox/type1/Token;

    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p1, v1, v0}, Lcom/tom_roush/fontbox/type1/Token;-><init>(CLcom/tom_roush/fontbox/type1/Token$Kind;)V

    return-object p1

    :cond_a
    const/16 v0, 0x3e

    if-ne v1, v0, :cond_c

    .line 181
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result p1

    if-ne p1, v1, :cond_b

    .line 184
    new-instance p1, Lcom/tom_roush/fontbox/type1/Token;

    const-string v0, ">>"

    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->END_DICT:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p1, v0, v1}, Lcom/tom_roush/fontbox/type1/Token;-><init>(Ljava/lang/String;Lcom/tom_roush/fontbox/type1/Token$Kind;)V

    return-object p1

    :cond_b
    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 189
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 190
    new-instance p1, Lcom/tom_roush/fontbox/type1/Token;

    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p1, v1, v0}, Lcom/tom_roush/fontbox/type1/Token;-><init>(CLcom/tom_roush/fontbox/type1/Token$Kind;)V

    return-object p1

    .line 193
    :cond_c
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_1
    move v0, v3

    goto/16 :goto_0

    :cond_d
    if-nez v1, :cond_e

    const-string v0, "PdfBox-Android"

    const-string v1, "NULL byte in font, skipped"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 204
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 207
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->tryReadNumber()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    .line 215
    :cond_f
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->readRegular()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "RD"

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "-|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_2

    .line 237
    :cond_10
    new-instance p1, Lcom/tom_roush/fontbox/type1/Token;

    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p1, v0, v1}, Lcom/tom_roush/fontbox/type1/Token;-><init>(Ljava/lang/String;Lcom/tom_roush/fontbox/type1/Token$Kind;)V

    return-object p1

    :cond_11
    :goto_2
    if-eqz p1, :cond_12

    .line 226
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/type1/Token;->getKind()Lcom/tom_roush/fontbox/type1/Token$Kind;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    if-ne v0, v1, :cond_12

    .line 228
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->readCharString(I)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object p1

    return-object p1

    .line 232
    :cond_12
    new-instance p1, Ljava/io/IOException;

    const-string v0, "expected INTEGER before -| or RD"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_13
    new-instance p1, Lcom/tom_roush/fontbox/type1/DamagedFontException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 220
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tom_roush/fontbox/type1/DamagedFontException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_14
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unexpected closing parenthesis"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method private tryReadNumber()Lcom/tom_roush/fontbox/type1/Token;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 252
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v1

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    if-ne v1, v3, :cond_1

    .line 262
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v1

    .line 267
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v1

    move v4, v5

    goto :goto_0

    :cond_2
    const/16 v2, 0x2e

    const/16 v6, 0x45

    const/16 v7, 0x65

    const/4 v8, 0x0

    if-ne v1, v2, :cond_4

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v1

    :cond_3
    move v2, v1

    move-object v1, v8

    goto :goto_1

    :cond_4
    const/16 v2, 0x23

    if-ne v1, v2, :cond_5

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v2

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_1

    .line 287
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_f

    if-nez v4, :cond_6

    goto/16 :goto_4

    :cond_6
    if-eq v1, v7, :cond_3

    if-eq v1, v6, :cond_3

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 296
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 297
    new-instance v1, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {v1, v0, v2}, Lcom/tom_roush/fontbox/type1/Token;-><init>(Ljava/lang/String;Lcom/tom_roush/fontbox/type1/Token$Kind;)V

    return-object v1

    .line 301
    :goto_1
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v2

    goto :goto_2

    :cond_7
    if-eq v2, v7, :cond_8

    if-eq v2, v6, :cond_8

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 309
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return-object v8

    .line 314
    :cond_8
    :goto_2
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 316
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v2

    goto :goto_2

    :cond_9
    if-eq v2, v6, :cond_a

    if-ne v2, v7, :cond_c

    .line 323
    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v2

    if-ne v2, v3, :cond_b

    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v2

    .line 334
    :cond_b
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 336
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v2

    .line 347
    :goto_3
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 349
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->getChar()C

    move-result v2

    goto :goto_3

    :cond_c
    iget-object v2, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 354
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-eqz v1, :cond_d

    .line 360
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    new-instance v1, Lcom/tom_roush/fontbox/type1/Token;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {v1, v0, v2}, Lcom/tom_roush/fontbox/type1/Token;-><init>(Ljava/lang/String;Lcom/tom_roush/fontbox/type1/Token$Kind;)V

    return-object v1

    :catch_0
    move-exception v1

    .line 364
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid number \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 368
    :cond_d
    new-instance v1, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/tom_roush/fontbox/type1/Token;->REAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {v1, v0, v2}, Lcom/tom_roush/fontbox/type1/Token;-><init>(Ljava/lang/String;Lcom/tom_roush/fontbox/type1/Token$Kind;)V

    return-object v1

    :cond_e
    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 342
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return-object v8

    :cond_f
    :goto_4
    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->buffer:Ljava/nio/ByteBuffer;

    .line 290
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return-object v8
.end method


# virtual methods
.method public nextToken()Lcom/tom_roush/fontbox/type1/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->aheadToken:Lcom/tom_roush/fontbox/type1/Token;

    .line 71
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->readToken(Lcom/tom_roush/fontbox/type1/Token;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v1

    iput-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->aheadToken:Lcom/tom_roush/fontbox/type1/Token;

    return-object v0
.end method

.method public peekKind(Lcom/tom_roush/fontbox/type1/Token$Kind;)Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->aheadToken:Lcom/tom_roush/fontbox/type1/Token;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getKind()Lcom/tom_roush/fontbox/type1/Token$Kind;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public peekToken()Lcom/tom_roush/fontbox/type1/Token;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Lexer;->aheadToken:Lcom/tom_roush/fontbox/type1/Token;

    return-object v0
.end method
