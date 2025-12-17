.class public Lcom/tom_roush/fontbox/cmap/CMapParser;
.super Ljava/lang/Object;
.source "CMapParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;,
        Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;
    }
.end annotation


# static fields
.field private static final MARK_END_OF_ARRAY:Ljava/lang/String; = "]"

.field private static final MARK_END_OF_DICTIONARY:Ljava/lang/String; = ">>"


# instance fields
.field private strictMode:Z

.field private final tokenParserByteBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMapParser;->tokenParserByteBuffer:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/fontbox/cmap/CMapParser;->strictMode:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMapParser;->tokenParserByteBuffer:[B

    iput-boolean p1, p0, Lcom/tom_roush/fontbox/cmap/CMapParser;->strictMode:Z

    return-void
.end method

.method private addMappingFrombfrange(Lcom/tom_roush/fontbox/cmap/CMap;[BI[B)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 486
    invoke-direct {p0, p4}, Lcom/tom_roush/fontbox/cmap/CMapParser;->createStringFromBytes([B)Ljava/lang/String;

    move-result-object v2

    .line 487
    invoke-virtual {p1, p2, v2}, Lcom/tom_roush/fontbox/cmap/CMap;->addCharMapping([BLjava/lang/String;)V

    .line 488
    array-length v2, p4

    add-int/lit8 v2, v2, -0x1

    iget-boolean v3, p0, Lcom/tom_roush/fontbox/cmap/CMapParser;->strictMode:Z

    invoke-direct {p0, p4, v2, v3}, Lcom/tom_roush/fontbox/cmap/CMapParser;->increment([BIZ)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 493
    :cond_0
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, p2, v2, v0}, Lcom/tom_roush/fontbox/cmap/CMapParser;->increment([BIZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private addMappingFrombfrange(Lcom/tom_roush/fontbox/cmap/CMap;[BLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/fontbox/cmap/CMap;",
            "[B",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 473
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 475
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cmap/CMapParser;->createStringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/fontbox/cmap/CMap;->addCharMapping([BLjava/lang/String;)V

    .line 477
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->increment([BIZ)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkExpectedOperator(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-static {p1}, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;->access$000(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 263
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error : ~"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " contains an unexpected operator : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 264
    invoke-static {p1}, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;->access$000(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private createIntFromBytes([B)I
    .locals 3

    const/4 v0, 0x0

    .line 803
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 804
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    .line 807
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method private createStringFromBytes([B)Ljava/lang/String;
    .locals 3

    .line 814
    new-instance v0, Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/tom_roush/fontbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tom_roush/fontbox/util/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    :goto_0
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private increment([BIZ)Z
    .locals 3

    const/4 v0, 0x1

    if-lez p2, :cond_1

    .line 783
    aget-byte v1, p1, p2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    return v1

    .line 791
    :cond_0
    aput-byte v1, p1, p2

    sub-int/2addr p2, v0

    .line 792
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/fontbox/cmap/CMapParser;->increment([BIZ)Z

    goto :goto_0

    .line 796
    :cond_1
    aget-byte p3, p1, p2

    add-int/2addr p3, v0

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    :goto_0
    return v0
.end method

.method private isDelimiter(I)Z
    .locals 1

    const/16 v0, 0x25

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    const/16 v0, 0x29

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private isWhitespaceOrEOF(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private parseBeginbfchar(Ljava/lang/Number;Ljava/io/PushbackInputStream;Lcom/tom_roush/fontbox/cmap/CMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 297
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 299
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 300
    instance-of v2, v1, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;

    if-eqz v2, :cond_0

    .line 302
    check-cast v1, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;

    const-string p1, "endbfchar"

    const-string p2, "bfchar"

    invoke-direct {p0, v1, p1, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->checkExpectedOperator(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 305
    :cond_0
    instance-of v2, v1, [B

    if-eqz v2, :cond_3

    .line 309
    check-cast v1, [B

    .line 310
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v2

    .line 311
    instance-of v3, v2, [B

    if-eqz v3, :cond_1

    .line 313
    check-cast v2, [B

    .line 314
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->createStringFromBytes([B)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-virtual {p3, v1, v2}, Lcom/tom_roush/fontbox/cmap/CMap;->addCharMapping([BLjava/lang/String;)V

    goto :goto_1

    .line 317
    :cond_1
    instance-of v3, v2, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;

    if-eqz v3, :cond_2

    .line 319
    check-cast v2, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;

    invoke-static {v2}, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;->access$100(Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/tom_roush/fontbox/cmap/CMap;->addCharMapping([BLjava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error parsing CMap beginbfchar, expected{COSString or COSName} and not "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 307
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "input code missing"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method private parseBeginbfrange(Ljava/lang/Number;Ljava/io/PushbackInputStream;Lcom/tom_roush/fontbox/cmap/CMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 397
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 399
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v2

    .line 400
    instance-of v3, v2, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;

    const-string v4, "bfrange"

    const-string v5, "endbfrange"

    if-eqz v3, :cond_0

    .line 402
    check-cast v2, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;

    invoke-direct {p0, v2, v5, v4}, Lcom/tom_roush/fontbox/cmap/CMapParser;->checkExpectedOperator(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 405
    :cond_0
    instance-of v3, v2, [B

    if-eqz v3, :cond_7

    .line 409
    check-cast v2, [B

    .line 410
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v3

    .line 411
    instance-of v6, v3, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;

    if-eqz v6, :cond_1

    .line 413
    check-cast v3, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;

    invoke-direct {p0, v3, v5, v4}, Lcom/tom_roush/fontbox/cmap/CMapParser;->checkExpectedOperator(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 416
    :cond_1
    instance-of v4, v3, [B

    if-eqz v4, :cond_6

    .line 420
    check-cast v3, [B

    .line 421
    array-length v4, v2

    invoke-static {v2, v4}, Lcom/tom_roush/fontbox/cmap/CMap;->toInt([BI)I

    move-result v4

    .line 422
    array-length v5, v3

    invoke-static {v3, v5}, Lcom/tom_roush/fontbox/cmap/CMap;->toInt([BI)I

    move-result v3

    if-ge v3, v4, :cond_2

    goto :goto_3

    .line 429
    :cond_2
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v5

    .line 430
    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_3

    .line 432
    check-cast v5, Ljava/util/List;

    .line 434
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v3, v4

    if-lt v6, v3, :cond_5

    .line 436
    invoke-direct {p0, p3, v2, v5}, Lcom/tom_roush/fontbox/cmap/CMapParser;->addMappingFrombfrange(Lcom/tom_roush/fontbox/cmap/CMap;[BLjava/util/List;)V

    goto :goto_2

    .line 440
    :cond_3
    instance-of v6, v5, [B

    if-eqz v6, :cond_5

    .line 442
    check-cast v5, [B

    .line 444
    array-length v6, v5

    if-lez v6, :cond_5

    .line 450
    array-length v6, v5

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v6, v7, :cond_4

    if-nez v4, :cond_4

    const v6, 0xffff

    if-ne v3, v6, :cond_4

    aget-byte v6, v5, v0

    if-nez v6, :cond_4

    aget-byte v6, v5, v8

    if-nez v6, :cond_4

    move v3, v0

    :goto_1
    const/16 v4, 0x100

    if-ge v3, v4, :cond_5

    int-to-byte v6, v3

    .line 455
    aput-byte v6, v2, v0

    .line 456
    aput-byte v0, v2, v8

    .line 457
    aput-byte v6, v5, v0

    .line 458
    aput-byte v0, v5, v8

    .line 459
    invoke-direct {p0, p3, v2, v4, v5}, Lcom/tom_roush/fontbox/cmap/CMapParser;->addMappingFrombfrange(Lcom/tom_roush/fontbox/cmap/CMap;[BI[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    sub-int/2addr v3, v4

    add-int/2addr v3, v8

    .line 464
    invoke-direct {p0, p3, v2, v3, v5}, Lcom/tom_roush/fontbox/cmap/CMapParser;->addMappingFrombfrange(Lcom/tom_roush/fontbox/cmap/CMap;[BI[B)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 418
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "end code missing"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "start code missing"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    return-void
.end method

.method private parseBegincidchar(Ljava/lang/Number;Ljava/io/PushbackInputStream;Lcom/tom_roush/fontbox/cmap/CMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 376
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 378
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 379
    instance-of v2, v1, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;

    if-eqz v2, :cond_0

    .line 381
    check-cast v1, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;

    const-string p1, "endcidchar"

    const-string p2, "cidchar"

    invoke-direct {p0, v1, p1, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->checkExpectedOperator(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 384
    :cond_0
    instance-of v2, v1, [B

    if-eqz v2, :cond_1

    .line 388
    check-cast v1, [B

    .line 389
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 390
    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->createIntFromBytes([B)I

    move-result v1

    .line 391
    invoke-virtual {p3, v2, v1}, Lcom/tom_roush/fontbox/cmap/CMap;->addCIDMapping(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "start code missing"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private parseBegincidrange(ILjava/io/PushbackInputStream;Lcom/tom_roush/fontbox/cmap/CMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_5

    .line 333
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v2

    .line 334
    instance-of v3, v2, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;

    if-eqz v3, :cond_0

    .line 336
    check-cast v2, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;

    const-string p1, "endcidrange"

    const-string p2, "cidrange"

    invoke-direct {p0, v2, p1, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->checkExpectedOperator(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 339
    :cond_0
    instance-of v3, v2, [B

    if-eqz v3, :cond_4

    .line 343
    check-cast v2, [B

    .line 344
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->createIntFromBytes([B)I

    move-result v3

    .line 345
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 346
    invoke-direct {p0, v4}, Lcom/tom_roush/fontbox/cmap/CMapParser;->createIntFromBytes([B)I

    move-result v5

    .line 347
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 348
    array-length v7, v2

    const/4 v8, 0x2

    if-gt v7, v8, :cond_2

    array-length v4, v4

    if-gt v4, v8, :cond_2

    if-ne v5, v3, :cond_1

    .line 353
    invoke-virtual {p3, v6, v3}, Lcom/tom_roush/fontbox/cmap/CMap;->addCIDMapping(II)V

    goto :goto_2

    :cond_1
    int-to-char v2, v3

    int-to-char v3, v5

    .line 357
    invoke-virtual {p3, v2, v3, v6}, Lcom/tom_roush/fontbox/cmap/CMap;->addCIDRange(CCI)V

    goto :goto_2

    :cond_2
    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    :goto_1
    if-gt v6, v5, :cond_3

    .line 366
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->createIntFromBytes([B)I

    move-result v3

    add-int/lit8 v4, v6, 0x1

    .line 367
    invoke-virtual {p3, v6, v3}, Lcom/tom_roush/fontbox/cmap/CMap;->addCIDMapping(II)V

    .line 368
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/tom_roush/fontbox/cmap/CMapParser;->increment([BIZ)Z

    move v6, v4

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "start range missing"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    return-void
.end method

.method private parseBegincodespacerange(Ljava/lang/Number;Ljava/io/PushbackInputStream;Lcom/tom_roush/fontbox/cmap/CMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 270
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 272
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 273
    instance-of v2, v1, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;

    if-eqz v2, :cond_0

    .line 275
    check-cast v1, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;

    const-string p1, "endcodespacerange"

    const-string p2, "codespacerange"

    invoke-direct {p0, v1, p1, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->checkExpectedOperator(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 278
    :cond_0
    instance-of v2, v1, [B

    if-eqz v2, :cond_1

    .line 282
    check-cast v1, [B

    .line 283
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 286
    :try_start_0
    new-instance v3, Lcom/tom_roush/fontbox/cmap/CodespaceRange;

    invoke-direct {v3, v1, v2}, Lcom/tom_roush/fontbox/cmap/CodespaceRange;-><init>([B[B)V

    invoke-virtual {p3, v3}, Lcom/tom_roush/fontbox/cmap/CMap;->addCodespaceRange(Lcom/tom_roush/fontbox/cmap/CodespaceRange;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 290
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 280
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "start range missing"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private parseLiteralName(Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;Ljava/io/PushbackInputStream;Lcom/tom_roush/fontbox/cmap/CMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "WMode"

    .line 187
    invoke-static {p1}, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;->access$100(Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object p1

    .line 190
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_7

    .line 192
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->setWMode(I)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "CMapName"

    .line 195
    invoke-static {p1}, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;->access$100(Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object p1

    .line 198
    instance-of p2, p1, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;

    if-eqz p2, :cond_7

    .line 200
    check-cast p1, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;

    invoke-static {p1}, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;->access$100(Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "CMapVersion"

    .line 203
    invoke-static {p1}, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;->access$100(Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object p1

    .line 206
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_2

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_2
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 212
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "CMapType"

    .line 215
    invoke-static {p1}, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;->access$100(Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object p1

    .line 218
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_7

    .line 220
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->setType(I)V

    goto :goto_0

    :cond_4
    const-string v0, "Registry"

    .line 223
    invoke-static {p1}, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;->access$100(Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object p1

    .line 226
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 228
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->setRegistry(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "Ordering"

    .line 231
    invoke-static {p1}, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;->access$100(Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 233
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object p1

    .line 234
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 236
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->setOrdering(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "Supplement"

    .line 239
    invoke-static {p1}, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;->access$100(Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 241
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object p1

    .line 242
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_7

    .line 244
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->setSupplement(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method private parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    :goto_0
    const/16 v1, 0x9

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1a

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1a

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto/16 :goto_d

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_19

    const/16 v3, 0x25

    if-eq v0, v3, :cond_18

    const/16 v3, 0x28

    if-eq v0, v3, :cond_16

    const-string v3, ">>"

    const/16 v4, 0x3c

    const/16 v5, 0x3e

    if-eq v0, v4, :cond_d

    if-eq v0, v5, :cond_b

    const/16 v1, 0x5b

    const-string v3, "]"

    if-eq v0, v1, :cond_a

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_0

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v0, v0

    .line 723
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 728
    :goto_1
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cmap/CMapParser;->isWhitespaceOrEOF(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cmap/CMapParser;->isDelimiter(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-nez v3, :cond_1

    int-to-char v0, v0

    .line 730
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    goto :goto_1

    .line 733
    :cond_1
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cmap/CMapParser;->isDelimiter(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 735
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 737
    :cond_3
    new-instance p1, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;-><init>(Ljava/lang/String;Lcom/tom_roush/fontbox/cmap/CMapParser$1;)V

    goto/16 :goto_4

    .line 692
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v0, v0

    .line 693
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 696
    :goto_2
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cmap/CMapParser;->isWhitespaceOrEOF(I)Z

    move-result v2

    const/16 v3, 0x2e

    if-nez v2, :cond_5

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_4

    if-ne v0, v3, :cond_5

    .line 698
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    goto :goto_2

    .line 701
    :cond_5
    invoke-virtual {p1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 702
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 705
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_6

    .line 707
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    goto :goto_4

    .line 711
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 716
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid number \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 661
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 662
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 664
    :goto_3
    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->isWhitespaceOrEOF(I)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->isDelimiter(I)Z

    move-result v3

    if-nez v3, :cond_7

    int-to-char v1, v1

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    goto :goto_3

    .line 669
    :cond_7
    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->isDelimiter(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 671
    invoke-virtual {p1, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 673
    :cond_8
    new-instance p1, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;-><init>(Ljava/lang/String;Lcom/tom_roush/fontbox/cmap/CMapParser$1;)V

    :goto_4
    move-object v2, p1

    goto/16 :goto_c

    :cond_9
    :goto_5
    move-object v2, v3

    goto/16 :goto_c

    .line 573
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 575
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_19

    .line 576
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 578
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    .line 555
    :cond_b
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result p1

    if-ne p1, v5, :cond_c

    goto :goto_5

    .line 562
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error: expected the end of a dictionary."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 586
    :cond_d
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    if-ne v0, v4, :cond_e

    .line 589
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 591
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 592
    :goto_7
    instance-of v1, v0, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;

    if-eqz v1, :cond_19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 594
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 595
    check-cast v0, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;

    invoke-static {v0}, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;->access$100(Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    :cond_e
    const/16 v2, 0x10

    move v3, v1

    move v4, v2

    :goto_8
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v1, :cond_15

    if-eq v0, v5, :cond_15

    const/16 v8, 0x30

    if-lt v0, v8, :cond_f

    const/16 v8, 0x39

    if-gt v0, v8, :cond_f

    add-int/lit8 v0, v0, -0x30

    goto :goto_9

    :cond_f
    const/16 v8, 0x41

    if-lt v0, v8, :cond_10

    const/16 v8, 0x46

    if-gt v0, v8, :cond_10

    add-int/lit8 v0, v0, -0x37

    goto :goto_9

    :cond_10
    const/16 v8, 0x61

    if-lt v0, v8, :cond_13

    const/16 v8, 0x66

    if-gt v0, v8, :cond_13

    add-int/lit8 v0, v0, -0x57

    :goto_9
    mul-int/2addr v0, v4

    if-ne v4, v2, :cond_12

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/tom_roush/fontbox/cmap/CMapParser;->tokenParserByteBuffer:[B

    .line 638
    array-length v8, v4

    if-ge v3, v8, :cond_11

    .line 643
    aput-byte v6, v4, v3

    move v4, v7

    goto :goto_a

    .line 640
    :cond_11
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cmap token ist larger than buffer size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/fontbox/cmap/CMapParser;->tokenParserByteBuffer:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    move v4, v2

    :goto_a
    iget-object v6, p0, Lcom/tom_roush/fontbox/cmap/CMapParser;->tokenParserByteBuffer:[B

    .line 650
    aget-byte v7, v6, v3

    add-int/2addr v7, v0

    int-to-byte v0, v7

    aput-byte v0, v6, v3

    .line 651
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    goto :goto_8

    .line 623
    :cond_13
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cmap/CMapParser;->isWhitespaceOrEOF(I)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 626
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    goto :goto_8

    .line 631
    :cond_14
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: expected hex character and not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    add-int/2addr v3, v7

    .line 653
    new-array v2, v3, [B

    iget-object p1, p0, Lcom/tom_roush/fontbox/cmap/CMapParser;->tokenParserByteBuffer:[B

    .line 654
    invoke-static {p1, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    .line 542
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    :goto_b
    if-eq v2, v1, :cond_17

    const/16 v3, 0x29

    if-eq v2, v3, :cond_17

    int-to-char v2, v2

    .line 547
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    goto :goto_b

    .line 550
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 534
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v0, v0

    .line 535
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    invoke-direct {p0, p1, v1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->readUntilEndOfLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    .line 537
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_19
    :goto_c
    return-object v2

    .line 526
    :cond_1a
    :goto_d
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parseUsecmap(Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;Lcom/tom_roush/fontbox/cmap/CMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-static {p1}, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;->access$100(Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->getExternalCMap(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object p1

    .line 182
    invoke-virtual {p2, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->useCmap(Lcom/tom_roush/fontbox/cmap/CMap;)V

    return-void
.end method

.method private readUntilEndOfLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    int-to-char v0, v0

    .line 750
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getExternalCMap(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com/tom_roush/fontbox/resources/cmap/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->getStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 511
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/com/tom_roush/fontbox/resources/cmap/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 516
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    .line 514
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Could not find referenced cmap stream "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/io/File;)Lcom/tom_roush/fontbox/cmap/CMap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 85
    :cond_0
    throw p1
.end method

.method public parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/cmap/CMap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 124
    new-instance p1, Lcom/tom_roush/fontbox/cmap/CMap;

    invoke-direct {p1}, Lcom/tom_roush/fontbox/cmap/CMap;-><init>()V

    const/4 v1, 0x0

    .line 127
    :goto_0
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 129
    instance-of v3, v2, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;

    if-eqz v3, :cond_6

    .line 131
    move-object v3, v2

    check-cast v3, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;

    .line 132
    invoke-static {v3}, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;->access$000(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "endcmap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v1, :cond_7

    .line 140
    invoke-static {v3}, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;->access$000(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "usecmap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, v1, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;

    if-eqz v4, :cond_1

    .line 142
    check-cast v1, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;

    invoke-direct {p0, v1, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseUsecmap(Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;Lcom/tom_roush/fontbox/cmap/CMap;)V

    goto/16 :goto_1

    .line 144
    :cond_1
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_7

    .line 146
    invoke-static {v3}, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;->access$000(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "begincodespacerange"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    check-cast v1, Ljava/lang/Number;

    invoke-direct {p0, v1, v0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseBegincodespacerange(Ljava/lang/Number;Ljava/io/PushbackInputStream;Lcom/tom_roush/fontbox/cmap/CMap;)V

    goto :goto_1

    .line 150
    :cond_2
    invoke-static {v3}, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;->access$000(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "beginbfchar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    check-cast v1, Ljava/lang/Number;

    invoke-direct {p0, v1, v0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseBeginbfchar(Ljava/lang/Number;Ljava/io/PushbackInputStream;Lcom/tom_roush/fontbox/cmap/CMap;)V

    goto :goto_1

    .line 154
    :cond_3
    invoke-static {v3}, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;->access$000(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "beginbfrange"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 156
    check-cast v1, Ljava/lang/Number;

    invoke-direct {p0, v1, v0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseBeginbfrange(Ljava/lang/Number;Ljava/io/PushbackInputStream;Lcom/tom_roush/fontbox/cmap/CMap;)V

    goto :goto_1

    .line 158
    :cond_4
    invoke-static {v3}, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;->access$000(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "begincidchar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 160
    check-cast v1, Ljava/lang/Number;

    invoke-direct {p0, v1, v0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseBegincidchar(Ljava/lang/Number;Ljava/io/PushbackInputStream;Lcom/tom_roush/fontbox/cmap/CMap;)V

    goto :goto_1

    .line 162
    :cond_5
    invoke-static {v3}, Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;->access$000(Lcom/tom_roush/fontbox/cmap/CMapParser$Operator;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "begincidrange"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_7

    .line 164
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseBegincidrange(ILjava/io/PushbackInputStream;Lcom/tom_roush/fontbox/cmap/CMap;)V

    goto :goto_1

    .line 169
    :cond_6
    instance-of v1, v2, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;

    if-eqz v1, :cond_7

    .line 171
    move-object v1, v2

    check-cast v1, Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;

    invoke-direct {p0, v1, v0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parseLiteralName(Lcom/tom_roush/fontbox/cmap/CMapParser$LiteralName;Ljava/io/PushbackInputStream;Lcom/tom_roush/fontbox/cmap/CMap;)V

    :cond_7
    :goto_1
    move-object v1, v2

    goto/16 :goto_0

    :cond_8
    :goto_2
    return-object p1
.end method

.method public parsePredefined(Ljava/lang/String;)Lcom/tom_roush/fontbox/cmap/CMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->getExternalCMap(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/tom_roush/fontbox/cmap/CMapParser;->strictMode:Z

    .line 103
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 111
    :cond_1
    throw v0
.end method
