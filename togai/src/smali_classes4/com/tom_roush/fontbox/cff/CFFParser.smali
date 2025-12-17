.class public Lcom/tom_roush/fontbox/cff/CFFParser;
.super Ljava/lang/Object;
.source "CFFParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;,
        Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;,
        Lcom/tom_roush/fontbox/cff/CFFParser$Format1Charset;,
        Lcom/tom_roush/fontbox/cff/CFFParser$Format0Charset;,
        Lcom/tom_roush/fontbox/cff/CFFParser$EmptyCharset;,
        Lcom/tom_roush/fontbox/cff/CFFParser$EmbeddedCharset;,
        Lcom/tom_roush/fontbox/cff/CFFParser$Format1Encoding;,
        Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;,
        Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;,
        Lcom/tom_roush/fontbox/cff/CFFParser$DictData;,
        Lcom/tom_roush/fontbox/cff/CFFParser$Header;,
        Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;,
        Lcom/tom_roush/fontbox/cff/CFFParser$Range3;,
        Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;,
        Lcom/tom_roush/fontbox/cff/CFFParser$ByteSource;
    }
.end annotation


# static fields
.field private static final TAG_OTTO:Ljava/lang/String; = "OTTO"

.field private static final TAG_TTCF:Ljava/lang/String; = "ttcf"

.field private static final TAG_TTFONLY:Ljava/lang/String; = "\u0000\u0001\u0000\u0000"


# instance fields
.field private debugFontName:Ljava/lang/String;

.field private source:Lcom/tom_roush/fontbox/cff/CFFParser$ByteSource;

.field private stringIndex:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser;->stringIndex:[Ljava/lang/String;

    return-void
.end method

.method private concatenateMatrix(Ljava/util/List;Ljava/util/List;)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 586
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x1

    .line 587
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    const/4 v8, 0x2

    .line 588
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x3

    .line 589
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    const/4 v14, 0x4

    .line 590
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    const/4 v14, 0x5

    .line 591
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    .line 593
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Number;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v19

    .line 594
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Number;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v21

    .line 595
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Number;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v23

    .line 596
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Number;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v25

    const/4 v11, 0x4

    .line 597
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Number;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v27

    .line 598
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v29

    mul-double v31, v3, v19

    mul-double v33, v6, v23

    add-double v31, v31, v33

    .line 600
    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    mul-double v3, v3, v21

    mul-double/2addr v6, v12

    add-double/2addr v3, v6

    .line 601
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    mul-double v1, v9, v19

    mul-double v3, v12, v23

    add-double/2addr v1, v3

    .line 602
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    mul-double v9, v9, v21

    mul-double v12, v12, v25

    add-double/2addr v9, v12

    .line 603
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    mul-double v19, v19, v15

    mul-double v23, v23, v17

    add-double v19, v19, v23

    add-double v19, v19, v27

    .line 604
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    mul-double v15, v15, v21

    mul-double v17, v17, v25

    add-double v15, v15, v17

    add-double v15, v15, v29

    .line 605
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createTaggedCFFDataInput(Lcom/tom_roush/fontbox/cff/CFFDataInput;[B)Lcom/tom_roush/fontbox/cff/CFFDataInput;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readShort()S

    move-result v0

    .line 131
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readShort()S

    .line 133
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readShort()S

    .line 135
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readShort()S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 138
    invoke-static {p1}, Lcom/tom_roush/fontbox/cff/CFFParser;->readTagName(Lcom/tom_roush/fontbox/cff/CFFDataInput;)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-static {p1}, Lcom/tom_roush/fontbox/cff/CFFParser;->readLong(Lcom/tom_roush/fontbox/cff/CFFDataInput;)J

    .line 141
    invoke-static {p1}, Lcom/tom_roush/fontbox/cff/CFFParser;->readLong(Lcom/tom_roush/fontbox/cff/CFFDataInput;)J

    move-result-wide v3

    .line 142
    invoke-static {p1}, Lcom/tom_roush/fontbox/cff/CFFParser;->readLong(Lcom/tom_roush/fontbox/cff/CFFDataInput;)J

    move-result-wide v5

    const-string v7, "CFF "

    .line 143
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    long-to-int p1, v3

    add-long/2addr v3, v5

    long-to-int v0, v3

    .line 145
    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 146
    new-instance p2, Lcom/tom_roush/fontbox/cff/CFFDataInput;

    invoke-direct {p2, p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;-><init>([B)V

    return-object p2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "CFF tag not found in this OpenType font."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getString(Lcom/tom_roush/fontbox/cff/CFFParser$DictData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 788
    invoke-virtual {p1, p2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getEntry(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 789
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->hasOperands()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getNumber(I)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser;->readString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private parseCIDFontDicts(Lcom/tom_roush/fontbox/cff/CFFDataInput;Lcom/tom_roush/fontbox/cff/CFFParser$DictData;Lcom/tom_roush/fontbox/cff/CFFCIDFont;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "FDArray"

    .line 616
    invoke-virtual {v2, v4}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getEntry(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 617
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->hasOperands()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    .line 623
    invoke-virtual {v4, v5}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getNumber(I)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 624
    invoke-virtual {v1, v4}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->setPosition(I)V

    .line 625
    invoke-static/range {p1 .. p1}, Lcom/tom_roush/fontbox/cff/CFFParser;->readIndexData(Lcom/tom_roush/fontbox/cff/CFFDataInput;)[[B

    move-result-object v4

    if-eqz v4, :cond_4

    .line 631
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 632
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 634
    array-length v8, v4

    move v9, v5

    :goto_0
    if-ge v9, v8, :cond_2

    aget-object v10, v4, v9

    .line 636
    new-instance v11, Lcom/tom_roush/fontbox/cff/CFFDataInput;

    invoke-direct {v11, v10}, Lcom/tom_roush/fontbox/cff/CFFDataInput;-><init>([B)V

    .line 637
    invoke-static {v11}, Lcom/tom_roush/fontbox/cff/CFFParser;->readDictData(Lcom/tom_roush/fontbox/cff/CFFDataInput;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData;

    move-result-object v10

    const-string v11, "Private"

    .line 640
    invoke-virtual {v10, v11}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getEntry(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 641
    invoke-virtual {v11}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->size()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_1

    .line 647
    new-instance v12, Ljava/util/LinkedHashMap;

    const/4 v13, 0x4

    invoke-direct {v12, v13}, Ljava/util/LinkedHashMap;-><init>(I)V

    const-string v13, "FontName"

    .line 648
    invoke-direct {v0, v10, v13}, Lcom/tom_roush/fontbox/cff/CFFParser;->getString(Lcom/tom_roush/fontbox/cff/CFFParser$DictData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "FontType"

    invoke-virtual {v10, v14, v13}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v13

    invoke-interface {v12, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "FontBBox"

    const/4 v14, 0x0

    .line 650
    invoke-virtual {v10, v13, v14}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getArray(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v12, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "FontMatrix"

    .line 651
    invoke-virtual {v10, v13, v14}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getArray(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v12, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    .line 655
    invoke-virtual {v11, v10}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getNumber(I)Ljava/lang/Number;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 656
    invoke-virtual {v1, v10}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->setPosition(I)V

    .line 657
    invoke-virtual {v11, v5}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getNumber(I)Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 658
    invoke-static {v1, v11}, Lcom/tom_roush/fontbox/cff/CFFParser;->readDictData(Lcom/tom_roush/fontbox/cff/CFFDataInput;I)Lcom/tom_roush/fontbox/cff/CFFParser$DictData;

    move-result-object v11

    .line 661
    invoke-direct {v0, v11}, Lcom/tom_roush/fontbox/cff/CFFParser;->readPrivateDict(Lcom/tom_roush/fontbox/cff/CFFParser$DictData;)Ljava/util/Map;

    move-result-object v12

    .line 662
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Subrs"

    invoke-virtual {v11, v14, v13}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v11

    .line 666
    instance-of v13, v11, Ljava/lang/Integer;

    if-eqz v13, :cond_0

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_0

    .line 668
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v1, v10}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->setPosition(I)V

    .line 669
    invoke-static/range {p1 .. p1}, Lcom/tom_roush/fontbox/cff/CFFParser;->readIndexData(Lcom/tom_roush/fontbox/cff/CFFDataInput;)[[B

    move-result-object v10

    invoke-interface {v12, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 643
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Font DICT invalid without \"Private\" entry"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v4, "FDSelect"

    .line 674
    invoke-virtual {v2, v4}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getEntry(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 675
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->hasOperands()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 679
    invoke-virtual {v2, v5}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getNumber(I)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 680
    invoke-virtual {v1, v2}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->setPosition(I)V

    move/from16 v2, p4

    .line 681
    invoke-static {v1, v2, v3}, Lcom/tom_roush/fontbox/cff/CFFParser;->readFDSelect(Lcom/tom_roush/fontbox/cff/CFFDataInput;ILcom/tom_roush/fontbox/cff/CFFCIDFont;)Lcom/tom_roush/fontbox/cff/FDSelect;

    move-result-object v1

    .line 687
    invoke-virtual {v3, v7}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->setFontDict(Ljava/util/List;)V

    .line 688
    invoke-virtual {v3, v6}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->setPrivDict(Ljava/util/List;)V

    .line 689
    invoke-virtual {v3, v1}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->setFdSelect(Lcom/tom_roush/fontbox/cff/FDSelect;)V

    return-void

    .line 677
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "FDSelect is missing or empty"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 628
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Font dict index is missing for a CIDKeyed Font"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 619
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "FDArray is missing for a CIDKeyed Font."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseFont(Lcom/tom_roush/fontbox/cff/CFFDataInput;Ljava/lang/String;[B)Lcom/tom_roush/fontbox/cff/CFFFont;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 423
    new-instance v3, Lcom/tom_roush/fontbox/cff/CFFDataInput;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Lcom/tom_roush/fontbox/cff/CFFDataInput;-><init>([B)V

    .line 424
    invoke-static {v3}, Lcom/tom_roush/fontbox/cff/CFFParser;->readDictData(Lcom/tom_roush/fontbox/cff/CFFDataInput;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData;

    move-result-object v3

    const-string v4, "SyntheticBase"

    .line 427
    invoke-virtual {v3, v4}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getEntry(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object v4

    if-nez v4, :cond_f

    const-string v4, "ROS"

    .line 435
    invoke-virtual {v3, v4}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getEntry(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v5, :cond_2

    .line 438
    new-instance v10, Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    invoke-direct {v10}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;-><init>()V

    .line 439
    invoke-virtual {v3, v4}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getEntry(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 440
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->size()I

    move-result v11

    if-lt v11, v8, :cond_1

    .line 444
    invoke-virtual {v4, v7}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getNumber(I)Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-direct {v0, v11}, Lcom/tom_roush/fontbox/cff/CFFParser;->readString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->setRegistry(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v4, v6}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getNumber(I)Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-direct {v0, v11}, Lcom/tom_roush/fontbox/cff/CFFParser;->readString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->setOrdering(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v4, v9}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getNumber(I)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->setSupplement(I)V

    goto :goto_1

    .line 442
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "ROS entry must have 3 elements"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    :cond_2
    new-instance v10, Lcom/tom_roush/fontbox/cff/CFFType1Font;

    invoke-direct {v10}, Lcom/tom_roush/fontbox/cff/CFFType1Font;-><init>()V

    :goto_1
    iput-object v2, v0, Lcom/tom_roush/fontbox/cff/CFFParser;->debugFontName:Ljava/lang/String;

    .line 457
    invoke-virtual {v10, v2}, Lcom/tom_roush/fontbox/cff/CFFFont;->setName(Ljava/lang/String;)V

    const-string v2, "version"

    .line 460
    invoke-direct {v0, v3, v2}, Lcom/tom_roush/fontbox/cff/CFFParser;->getString(Lcom/tom_roush/fontbox/cff/CFFParser$DictData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "Notice"

    .line 461
    invoke-direct {v0, v3, v2}, Lcom/tom_roush/fontbox/cff/CFFParser;->getString(Lcom/tom_roush/fontbox/cff/CFFParser$DictData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "Copyright"

    .line 462
    invoke-direct {v0, v3, v2}, Lcom/tom_roush/fontbox/cff/CFFParser;->getString(Lcom/tom_roush/fontbox/cff/CFFParser$DictData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "FullName"

    .line 463
    invoke-direct {v0, v3, v2}, Lcom/tom_roush/fontbox/cff/CFFParser;->getString(Lcom/tom_roush/fontbox/cff/CFFParser$DictData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "FamilyName"

    .line 464
    invoke-direct {v0, v3, v2}, Lcom/tom_roush/fontbox/cff/CFFParser;->getString(Lcom/tom_roush/fontbox/cff/CFFParser$DictData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "Weight"

    .line 465
    invoke-direct {v0, v3, v2}, Lcom/tom_roush/fontbox/cff/CFFParser;->getString(Lcom/tom_roush/fontbox/cff/CFFParser$DictData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "isFixedPitch"

    .line 466
    invoke-virtual {v3, v2, v7}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getBoolean(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "ItalicAngle"

    invoke-virtual {v3, v4, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v10, v4, v2}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v2, -0x64

    .line 468
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "UnderlinePosition"

    invoke-virtual {v3, v4, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v10, v4, v2}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v2, 0x32

    .line 469
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "UnderlineThickness"

    invoke-virtual {v3, v4, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v10, v4, v2}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    .line 470
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "PaintType"

    invoke-virtual {v3, v4, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v10, v4, v2}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    .line 471
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "CharstringType"

    invoke-virtual {v3, v4, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v10, v4, v2}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Number;

    const-wide v11, 0x3f50624dd2f1a9fcL    # 0.001

    .line 473
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v7

    const-wide/16 v13, 0x0

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v9

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v8

    .line 474
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v15, 0x4

    aput-object v4, v2, v15

    const/4 v4, 0x5

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v2, v4

    .line 472
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "FontMatrix"

    invoke-virtual {v3, v4, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getArray(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v10, v4, v2}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "UniqueID"

    const/4 v13, 0x0

    .line 475
    invoke-virtual {v3, v2, v13}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    const-string v14, "UniqueID"

    invoke-virtual {v10, v14, v2}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v2, v15, [Ljava/lang/Number;

    .line 477
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v14, "FontBBox"

    .line 476
    invoke-virtual {v3, v14, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getArray(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-string v14, "FontBBox"

    invoke-virtual {v10, v14, v2}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "StrokeWidth"

    .line 478
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v2, v14}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    const-string v14, "StrokeWidth"

    invoke-virtual {v10, v14, v2}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "XUID"

    .line 479
    invoke-virtual {v3, v2, v13}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getArray(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-string v14, "XUID"

    invoke-virtual {v10, v14, v2}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "CharStrings"

    .line 482
    invoke-virtual {v3, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getEntry(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 483
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->hasOperands()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 487
    invoke-virtual {v2, v7}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getNumber(I)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 488
    invoke-virtual {v1, v2}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->setPosition(I)V

    .line 489
    invoke-static/range {p1 .. p1}, Lcom/tom_roush/fontbox/cff/CFFParser;->readIndexData(Lcom/tom_roush/fontbox/cff/CFFDataInput;)[[B

    move-result-object v2

    if-eqz v2, :cond_d

    const-string v14, "charset"

    .line 496
    invoke-virtual {v3, v14}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getEntry(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 498
    invoke-virtual {v14}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->hasOperands()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 500
    invoke-virtual {v14, v7}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getNumber(I)Ljava/lang/Number;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    if-nez v5, :cond_3

    if-nez v14, :cond_3

    .line 503
    invoke-static {}, Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;->getInstance()Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;

    move-result-object v14

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    if-ne v14, v6, :cond_4

    .line 507
    invoke-static {}, Lcom/tom_roush/fontbox/cff/CFFExpertCharset;->getInstance()Lcom/tom_roush/fontbox/cff/CFFExpertCharset;

    move-result-object v14

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    if-ne v14, v9, :cond_5

    .line 511
    invoke-static {}, Lcom/tom_roush/fontbox/cff/CFFExpertSubsetCharset;->getInstance()Lcom/tom_roush/fontbox/cff/CFFExpertSubsetCharset;

    move-result-object v14

    goto :goto_2

    .line 515
    :cond_5
    invoke-virtual {v1, v14}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->setPosition(I)V

    .line 516
    array-length v14, v2

    invoke-direct {v0, v1, v14, v5}, Lcom/tom_roush/fontbox/cff/CFFParser;->readCharset(Lcom/tom_roush/fontbox/cff/CFFDataInput;IZ)Lcom/tom_roush/fontbox/cff/CFFCharset;

    move-result-object v14

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    .line 524
    new-instance v14, Lcom/tom_roush/fontbox/cff/CFFParser$EmptyCharset;

    array-length v15, v2

    invoke-direct {v14, v15}, Lcom/tom_roush/fontbox/cff/CFFParser$EmptyCharset;-><init>(I)V

    goto :goto_2

    .line 528
    :cond_7
    invoke-static {}, Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;->getInstance()Lcom/tom_roush/fontbox/cff/CFFISOAdobeCharset;

    move-result-object v14

    .line 531
    :goto_2
    invoke-virtual {v10, v14}, Lcom/tom_roush/fontbox/cff/CFFFont;->setCharset(Lcom/tom_roush/fontbox/cff/CFFCharset;)V

    .line 534
    iput-object v2, v10, Lcom/tom_roush/fontbox/cff/CFFFont;->charStrings:[[B

    if-eqz v5, :cond_b

    .line 539
    move-object v5, v10

    check-cast v5, Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    array-length v2, v2

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/tom_roush/fontbox/cff/CFFParser;->parseCIDFontDicts(Lcom/tom_roush/fontbox/cff/CFFDataInput;Lcom/tom_roush/fontbox/cff/CFFParser$DictData;Lcom/tom_roush/fontbox/cff/CFFCIDFont;I)V

    .line 542
    invoke-virtual {v5}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->getFontDicts()Ljava/util/List;

    move-result-object v1

    .line 543
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 545
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_3

    :cond_8
    move-object v1, v13

    .line 548
    :goto_3
    invoke-virtual {v3, v4, v13}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getArray(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_a

    if-eqz v1, :cond_9

    .line 553
    invoke-virtual {v10, v4, v1}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Number;

    .line 559
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    const-wide/16 v13, 0x0

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v8

    .line 560
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    const/4 v2, 0x5

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v2

    .line 559
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 558
    invoke-virtual {v3, v4, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getArray(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v4, v1}, Lcom/tom_roush/fontbox/cff/CFFFont;->addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    if-eqz v1, :cond_c

    .line 568
    invoke-direct {v0, v2, v1}, Lcom/tom_roush/fontbox/cff/CFFParser;->concatenateMatrix(Ljava/util/List;Ljava/util/List;)V

    goto :goto_4

    .line 574
    :cond_b
    move-object v2, v10

    check-cast v2, Lcom/tom_roush/fontbox/cff/CFFType1Font;

    invoke-direct {v0, v1, v3, v2, v14}, Lcom/tom_roush/fontbox/cff/CFFParser;->parseType1Dicts(Lcom/tom_roush/fontbox/cff/CFFDataInput;Lcom/tom_roush/fontbox/cff/CFFParser$DictData;Lcom/tom_roush/fontbox/cff/CFFType1Font;Lcom/tom_roush/fontbox/cff/CFFCharset;)V

    :cond_c
    :goto_4
    return-object v10

    .line 492
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "CharStringsIndex is missing"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    :cond_e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "CharStrings is missing or empty"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    :cond_f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Synthetic Fonts are not supported"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseType1Dicts(Lcom/tom_roush/fontbox/cff/CFFDataInput;Lcom/tom_roush/fontbox/cff/CFFParser$DictData;Lcom/tom_roush/fontbox/cff/CFFType1Font;Lcom/tom_roush/fontbox/cff/CFFCharset;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Encoding"

    .line 722
    invoke-virtual {p2, v0}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getEntry(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->hasOperands()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 725
    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getNumber(I)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    .line 735
    invoke-virtual {p1, v0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->setPosition(I)V

    .line 736
    invoke-direct {p0, p1, p4}, Lcom/tom_roush/fontbox/cff/CFFParser;->readEncoding(Lcom/tom_roush/fontbox/cff/CFFDataInput;Lcom/tom_roush/fontbox/cff/CFFCharset;)Lcom/tom_roush/fontbox/cff/CFFEncoding;

    move-result-object p4

    goto :goto_1

    .line 732
    :cond_1
    invoke-static {}, Lcom/tom_roush/fontbox/cff/CFFExpertEncoding;->getInstance()Lcom/tom_roush/fontbox/cff/CFFExpertEncoding;

    move-result-object p4

    goto :goto_1

    .line 729
    :cond_2
    invoke-static {}, Lcom/tom_roush/fontbox/cff/CFFStandardEncoding;->getInstance()Lcom/tom_roush/fontbox/cff/CFFStandardEncoding;

    move-result-object p4

    .line 739
    :goto_1
    invoke-virtual {p3, p4}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->setEncoding(Lcom/tom_roush/fontbox/cff/CFFEncoding;)V

    const-string p4, "Private"

    .line 742
    invoke-virtual {p2, p4}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getEntry(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 743
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->size()I

    move-result p4

    const/4 v0, 0x2

    if-lt p4, v0, :cond_5

    .line 747
    invoke-virtual {p2, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getNumber(I)Ljava/lang/Number;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    .line 748
    invoke-virtual {p1, p4}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->setPosition(I)V

    .line 749
    invoke-virtual {p2, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getNumber(I)Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 750
    invoke-static {p1, p2}, Lcom/tom_roush/fontbox/cff/CFFParser;->readDictData(Lcom/tom_roush/fontbox/cff/CFFDataInput;I)Lcom/tom_roush/fontbox/cff/CFFParser$DictData;

    move-result-object p2

    .line 753
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/cff/CFFParser;->readPrivateDict(Lcom/tom_roush/fontbox/cff/CFFParser$DictData;)Ljava/util/Map;

    move-result-object v0

    .line 754
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 756
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v3, v2}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->addToPrivateDict(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 760
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Subrs"

    invoke-virtual {p2, v1, v0}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p2

    .line 761
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    .line 763
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p4, p2

    invoke-virtual {p1, p4}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->setPosition(I)V

    .line 764
    invoke-static {p1}, Lcom/tom_roush/fontbox/cff/CFFParser;->readIndexData(Lcom/tom_roush/fontbox/cff/CFFDataInput;)[[B

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->addToPrivateDict(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 745
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Private dictionary entry missing for font "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p3, Lcom/tom_roush/fontbox/cff/CFFType1Font;->fontName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readCharset(Lcom/tom_roush/fontbox/cff/CFFDataInput;IZ)Lcom/tom_roush/fontbox/cff/CFFCharset;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1046
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard8()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1054
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/tom_roush/fontbox/cff/CFFParser;->readFormat2Charset(Lcom/tom_roush/fontbox/cff/CFFDataInput;IIZ)Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;

    move-result-object p1

    return-object p1

    .line 1056
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Incorrect charset format "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1052
    :cond_1
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/tom_roush/fontbox/cff/CFFParser;->readFormat1Charset(Lcom/tom_roush/fontbox/cff/CFFDataInput;IIZ)Lcom/tom_roush/fontbox/cff/CFFParser$Format1Charset;

    move-result-object p1

    return-object p1

    .line 1050
    :cond_2
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/tom_roush/fontbox/cff/CFFParser;->readFormat0Charset(Lcom/tom_roush/fontbox/cff/CFFDataInput;IIZ)Lcom/tom_roush/fontbox/cff/CFFParser$Format0Charset;

    move-result-object p1

    return-object p1
.end method

.method private static readDictData(Lcom/tom_roush/fontbox/cff/CFFDataInput;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;-><init>(Lcom/tom_roush/fontbox/cff/CFFParser$1;)V

    .line 237
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    invoke-static {p0}, Lcom/tom_roush/fontbox/cff/CFFParser;->readEntry(Lcom/tom_roush/fontbox/cff/CFFDataInput;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->add(Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static readDictData(Lcom/tom_roush/fontbox/cff/CFFDataInput;I)Lcom/tom_roush/fontbox/cff/CFFParser$DictData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;-><init>(Lcom/tom_roush/fontbox/cff/CFFParser$1;)V

    .line 247
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->getPosition()I

    move-result v1

    add-int/2addr v1, p1

    .line 248
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->getPosition()I

    move-result p1

    if-ge p1, v1, :cond_0

    .line 250
    invoke-static {p0}, Lcom/tom_roush/fontbox/cff/CFFParser;->readEntry(Lcom/tom_roush/fontbox/cff/CFFDataInput;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->add(Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readEncoding(Lcom/tom_roush/fontbox/cff/CFFDataInput;Lcom/tom_roush/fontbox/cff/CFFCharset;)Lcom/tom_roush/fontbox/cff/CFFEncoding;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 794
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard8()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 802
    invoke-direct {p0, p1, p2, v0}, Lcom/tom_roush/fontbox/cff/CFFParser;->readFormat1Encoding(Lcom/tom_roush/fontbox/cff/CFFDataInput;Lcom/tom_roush/fontbox/cff/CFFCharset;I)Lcom/tom_roush/fontbox/cff/CFFParser$Format1Encoding;

    move-result-object p1

    return-object p1

    .line 804
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid encoding base format "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 800
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/tom_roush/fontbox/cff/CFFParser;->readFormat0Encoding(Lcom/tom_roush/fontbox/cff/CFFDataInput;Lcom/tom_roush/fontbox/cff/CFFCharset;I)Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;

    move-result-object p1

    return-object p1
.end method

.method private static readEntry(Lcom/tom_roush/fontbox/cff/CFFDataInput;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;-><init>(Lcom/tom_roush/fontbox/cff/CFFParser$1;)V

    .line 260
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readUnsignedByte()I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v2, 0x15

    if-gt v1, v2, :cond_0

    .line 264
    invoke-static {p0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser;->readOperator(Lcom/tom_roush/fontbox/cff/CFFDataInput;I)Lcom/tom_roush/fontbox/cff/CFFOperator;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->access$702(Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;Lcom/tom_roush/fontbox/cff/CFFOperator;)Lcom/tom_roush/fontbox/cff/CFFOperator;

    return-object v0

    :cond_0
    const/16 v2, 0x1c

    if-eq v1, v2, :cond_4

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x1e

    if-ne v1, v2, :cond_2

    .line 273
    invoke-static {v0}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->access$800(Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Lcom/tom_roush/fontbox/cff/CFFParser;->readRealNumber(Lcom/tom_roush/fontbox/cff/CFFDataInput;)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/16 v2, 0x20

    if-lt v1, v2, :cond_3

    const/16 v2, 0xfe

    if-gt v1, v2, :cond_3

    .line 277
    invoke-static {v0}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->access$800(Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;)Ljava/util/List;

    move-result-object v2

    invoke-static {p0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser;->readIntegerNumber(Lcom/tom_roush/fontbox/cff/CFFDataInput;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "invalid DICT data b0 byte: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 269
    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->access$800(Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;)Ljava/util/List;

    move-result-object v2

    invoke-static {p0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser;->readIntegerNumber(Lcom/tom_roush/fontbox/cff/CFFDataInput;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static readFDSelect(Lcom/tom_roush/fontbox/cff/CFFDataInput;ILcom/tom_roush/fontbox/cff/CFFCIDFont;)Lcom/tom_roush/fontbox/cff/FDSelect;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 880
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard8()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 886
    invoke-static {p0, v0, p1, p2}, Lcom/tom_roush/fontbox/cff/CFFParser;->readFormat3FDSelect(Lcom/tom_roush/fontbox/cff/CFFDataInput;IILcom/tom_roush/fontbox/cff/CFFCIDFont;)Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;

    move-result-object p0

    return-object p0

    .line 888
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 884
    :cond_1
    invoke-static {p0, v0, p1, p2}, Lcom/tom_roush/fontbox/cff/CFFParser;->readFormat0FDSelect(Lcom/tom_roush/fontbox/cff/CFFDataInput;IILcom/tom_roush/fontbox/cff/CFFCIDFont;)Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;

    move-result-object p0

    return-object p0
.end method

.method private readFormat0Charset(Lcom/tom_roush/fontbox/cff/CFFDataInput;IIZ)Lcom/tom_roush/fontbox/cff/CFFParser$Format0Charset;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1063
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Charset;

    invoke-direct {v0, p4}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Charset;-><init>(Z)V

    .line 1064
    invoke-static {v0, p2}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Charset;->access$3102(Lcom/tom_roush/fontbox/cff/CFFParser$Format0Charset;I)I

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    .line 1067
    invoke-virtual {v0, p2, p2}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Charset;->addCID(II)V

    goto :goto_0

    :cond_0
    const-string v1, ".notdef"

    .line 1071
    invoke-virtual {v0, p2, p2, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Charset;->addSID(IILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-ge p2, p3, :cond_2

    .line 1076
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readSID()I

    move-result v1

    if-eqz p4, :cond_1

    .line 1079
    invoke-virtual {v0, p2, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Charset;->addCID(II)V

    goto :goto_2

    .line 1083
    :cond_1
    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser;->readString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Charset;->addSID(IILjava/lang/String;)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private readFormat0Encoding(Lcom/tom_roush/fontbox/cff/CFFDataInput;Lcom/tom_roush/fontbox/cff/CFFCharset;I)Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 811
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;-><init>(Lcom/tom_roush/fontbox/cff/CFFParser$1;)V

    .line 812
    invoke-static {v0, p3}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;->access$1002(Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;I)I

    .line 813
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard8()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;->access$1102(Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;I)I

    const/4 v1, 0x0

    const-string v2, ".notdef"

    .line 814
    invoke-virtual {v0, v1, v1, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;->add(IILjava/lang/String;)V

    const/4 v1, 0x1

    .line 815
    :goto_0
    invoke-static {v0}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;->access$1100(Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 817
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard8()I

    move-result v2

    .line 818
    invoke-virtual {p2, v1}, Lcom/tom_roush/fontbox/cff/CFFCharset;->getSIDForGID(I)I

    move-result v3

    .line 819
    invoke-direct {p0, v3}, Lcom/tom_roush/fontbox/cff/CFFParser;->readString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0Encoding;->add(IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 p2, p3, 0x80

    if-eqz p2, :cond_1

    .line 823
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/fontbox/cff/CFFParser;->readSupplement(Lcom/tom_roush/fontbox/cff/CFFDataInput;Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;)V

    :cond_1
    return-object v0
.end method

.method private static readFormat0FDSelect(Lcom/tom_roush/fontbox/cff/CFFDataInput;IILcom/tom_roush/fontbox/cff/CFFCIDFont;)Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 904
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;-><init>(Lcom/tom_roush/fontbox/cff/CFFCIDFont;Lcom/tom_roush/fontbox/cff/CFFParser$1;)V

    .line 905
    invoke-static {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;->access$2102(Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;I)I

    .line 906
    new-array p1, p2, [I

    invoke-static {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;->access$2202(Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;[I)[I

    const/4 p1, 0x0

    .line 907
    :goto_0
    invoke-static {v0}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;->access$2200(Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;)[I

    move-result-object p2

    array-length p2, p2

    if-ge p1, p2, :cond_0

    .line 909
    invoke-static {v0}, Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;->access$2200(Lcom/tom_roush/fontbox/cff/CFFParser$Format0FDSelect;)[I

    move-result-object p2

    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard8()I

    move-result p3

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readFormat1Charset(Lcom/tom_roush/fontbox/cff/CFFDataInput;IIZ)Lcom/tom_roush/fontbox/cff/CFFParser$Format1Charset;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1092
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFParser$Format1Charset;

    invoke-direct {v0, p4}, Lcom/tom_roush/fontbox/cff/CFFParser$Format1Charset;-><init>(Z)V

    .line 1093
    invoke-static {v0, p2}, Lcom/tom_roush/fontbox/cff/CFFParser$Format1Charset;->access$3202(Lcom/tom_roush/fontbox/cff/CFFParser$Format1Charset;I)I

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    .line 1096
    invoke-virtual {v0, p2, p2}, Lcom/tom_roush/fontbox/cff/CFFParser$Format1Charset;->addCID(II)V

    .line 1097
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format1Charset;->access$3302(Lcom/tom_roush/fontbox/cff/CFFParser$Format1Charset;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_0
    const-string v1, ".notdef"

    .line 1101
    invoke-virtual {v0, p2, p2, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format1Charset;->addSID(IILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    if-ge v2, p3, :cond_3

    .line 1106
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readSID()I

    move-result v3

    .line 1107
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard8()I

    move-result v4

    if-nez p4, :cond_1

    move v5, p2

    :goto_2
    add-int/lit8 v6, v4, 0x1

    if-ge v5, v6, :cond_2

    add-int v6, v3, v5

    add-int v7, v2, v5

    .line 1113
    invoke-direct {p0, v6}, Lcom/tom_roush/fontbox/cff/CFFParser;->readString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v6, v8}, Lcom/tom_roush/fontbox/cff/CFFParser$Format1Charset;->addSID(IILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1118
    :cond_1
    invoke-static {v0}, Lcom/tom_roush/fontbox/cff/CFFParser$Format1Charset;->access$3300(Lcom/tom_roush/fontbox/cff/CFFParser$Format1Charset;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v3, v4, v7}, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;-><init>(IIILcom/tom_roush/fontbox/cff/CFFParser$1;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/2addr v2, v4

    add-int/2addr v2, v1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private readFormat1Encoding(Lcom/tom_roush/fontbox/cff/CFFDataInput;Lcom/tom_roush/fontbox/cff/CFFCharset;I)Lcom/tom_roush/fontbox/cff/CFFParser$Format1Encoding;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 831
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFParser$Format1Encoding;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format1Encoding;-><init>(Lcom/tom_roush/fontbox/cff/CFFParser$1;)V

    .line 832
    invoke-static {v0, p3}, Lcom/tom_roush/fontbox/cff/CFFParser$Format1Encoding;->access$1302(Lcom/tom_roush/fontbox/cff/CFFParser$Format1Encoding;I)I

    .line 833
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard8()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format1Encoding;->access$1402(Lcom/tom_roush/fontbox/cff/CFFParser$Format1Encoding;I)I

    const-string v1, ".notdef"

    const/4 v2, 0x0

    .line 834
    invoke-virtual {v0, v2, v2, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format1Encoding;->add(IILjava/lang/String;)V

    const/4 v1, 0x1

    move v3, v2

    .line 836
    :goto_0
    invoke-static {v0}, Lcom/tom_roush/fontbox/cff/CFFParser$Format1Encoding;->access$1400(Lcom/tom_roush/fontbox/cff/CFFParser$Format1Encoding;)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 838
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard8()I

    move-result v4

    .line 839
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard8()I

    move-result v5

    move v6, v2

    :goto_1
    if-gt v6, v5, :cond_0

    .line 842
    invoke-virtual {p2, v1}, Lcom/tom_roush/fontbox/cff/CFFCharset;->getSIDForGID(I)I

    move-result v7

    add-int v8, v4, v6

    .line 844
    invoke-direct {p0, v7}, Lcom/tom_roush/fontbox/cff/CFFParser;->readString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v7, v9}, Lcom/tom_roush/fontbox/cff/CFFParser$Format1Encoding;->add(IILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 p2, p3, 0x80

    if-eqz p2, :cond_2

    .line 850
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/fontbox/cff/CFFParser;->readSupplement(Lcom/tom_roush/fontbox/cff/CFFDataInput;Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;)V

    :cond_2
    return-object v0
.end method

.method private readFormat2Charset(Lcom/tom_roush/fontbox/cff/CFFDataInput;IIZ)Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1128
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;

    invoke-direct {v0, p4}, Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;-><init>(Z)V

    .line 1129
    invoke-static {v0, p2}, Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;->access$3502(Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;I)I

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    .line 1132
    invoke-virtual {v0, p2, p2}, Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;->addCID(II)V

    .line 1133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;->access$3602(Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_0
    const-string v1, ".notdef"

    .line 1137
    invoke-virtual {v0, p2, p2, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;->addSID(IILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    if-ge v2, p3, :cond_3

    .line 1142
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readSID()I

    move-result v3

    .line 1143
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard16()I

    move-result v4

    if-nez p4, :cond_1

    move v5, p2

    :goto_2
    add-int/lit8 v6, v4, 0x1

    if-ge v5, v6, :cond_2

    add-int v6, v3, v5

    add-int v7, v2, v5

    .line 1149
    invoke-direct {p0, v6}, Lcom/tom_roush/fontbox/cff/CFFParser;->readString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v6, v8}, Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;->addSID(IILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1154
    :cond_1
    invoke-static {v0}, Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;->access$3600(Lcom/tom_roush/fontbox/cff/CFFParser$Format2Charset;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v3, v4, v7}, Lcom/tom_roush/fontbox/cff/CFFParser$RangeMapping;-><init>(IIILcom/tom_roush/fontbox/cff/CFFParser$1;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/2addr v2, v4

    add-int/2addr v2, v1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private static readFormat3FDSelect(Lcom/tom_roush/fontbox/cff/CFFDataInput;IILcom/tom_roush/fontbox/cff/CFFCIDFont;)Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 927
    new-instance p2, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0}, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;-><init>(Lcom/tom_roush/fontbox/cff/CFFCIDFont;Lcom/tom_roush/fontbox/cff/CFFParser$1;)V

    .line 928
    invoke-static {p2, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->access$2402(Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;I)I

    .line 929
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard16()I

    move-result p1

    invoke-static {p2, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->access$2502(Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;I)I

    .line 931
    invoke-static {p2}, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->access$2500(Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;)I

    move-result p1

    new-array p1, p1, [Lcom/tom_roush/fontbox/cff/CFFParser$Range3;

    invoke-static {p2, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->access$2602(Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;[Lcom/tom_roush/fontbox/cff/CFFParser$Range3;)[Lcom/tom_roush/fontbox/cff/CFFParser$Range3;

    const/4 p1, 0x0

    .line 932
    :goto_0
    invoke-static {p2}, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->access$2500(Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;)I

    move-result p3

    if-ge p1, p3, :cond_0

    .line 934
    new-instance p3, Lcom/tom_roush/fontbox/cff/CFFParser$Range3;

    invoke-direct {p3, v0}, Lcom/tom_roush/fontbox/cff/CFFParser$Range3;-><init>(Lcom/tom_roush/fontbox/cff/CFFParser$1;)V

    .line 935
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard16()I

    move-result v1

    invoke-static {p3, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Range3;->access$2802(Lcom/tom_roush/fontbox/cff/CFFParser$Range3;I)I

    .line 936
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard8()I

    move-result v1

    invoke-static {p3, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Range3;->access$2902(Lcom/tom_roush/fontbox/cff/CFFParser$Range3;I)I

    .line 937
    invoke-static {p2}, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->access$2600(Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;)[Lcom/tom_roush/fontbox/cff/CFFParser$Range3;

    move-result-object v1

    aput-object p3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 941
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard16()I

    move-result p0

    invoke-static {p2, p0}, Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;->access$3002(Lcom/tom_roush/fontbox/cff/CFFParser$Format3FDSelect;I)I

    return-object p2
.end method

.method private static readHeader(Lcom/tom_roush/fontbox/cff/CFFDataInput;)Lcom/tom_roush/fontbox/cff/CFFParser$Header;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFParser$Header;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Header;-><init>(Lcom/tom_roush/fontbox/cff/CFFParser$1;)V

    .line 166
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard8()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Header;->access$102(Lcom/tom_roush/fontbox/cff/CFFParser$Header;I)I

    .line 167
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard8()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Header;->access$202(Lcom/tom_roush/fontbox/cff/CFFParser$Header;I)I

    .line 168
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard8()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$Header;->access$302(Lcom/tom_roush/fontbox/cff/CFFParser$Header;I)I

    .line 169
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readOffSize()I

    move-result p0

    invoke-static {v0, p0}, Lcom/tom_roush/fontbox/cff/CFFParser$Header;->access$402(Lcom/tom_roush/fontbox/cff/CFFParser$Header;I)I

    return-object v0
.end method

.method private static readIndexData(Lcom/tom_roush/fontbox/cff/CFFDataInput;)[[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-static {p0}, Lcom/tom_roush/fontbox/cff/CFFParser;->readIndexDataOffsets(Lcom/tom_roush/fontbox/cff/CFFDataInput;)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 201
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 202
    new-array v2, v1, [[B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 205
    aget v5, v0, v4

    aget v6, v0, v3

    sub-int/2addr v5, v6

    .line 206
    invoke-virtual {p0, v5}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readBytes(I)[B

    move-result-object v5

    aput-object v5, v2, v3

    move v3, v4

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static readIndexDataOffsets(Lcom/tom_roush/fontbox/cff/CFFDataInput;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard16()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readOffSize()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    .line 181
    new-array v2, v2, [I

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v0, :cond_2

    .line 184
    invoke-virtual {p0, v1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readOffset(I)I

    move-result v4

    .line 185
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->length()I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 189
    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal offset value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in CFF font"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v2
.end method

.method private static readIntegerNumber(Lcom/tom_roush/fontbox/cff/CFFDataInput;I)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readShort()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x20

    if-lt p1, v0, :cond_2

    const/16 v0, 0xf6

    if-gt p1, v0, :cond_2

    add-int/lit16 p1, p1, -0x8b

    .line 315
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v0, 0xf7

    if-lt p1, v0, :cond_3

    const/16 v1, 0xfa

    if-gt p1, v1, :cond_3

    .line 319
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readUnsignedByte()I

    move-result p0

    sub-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0x100

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x6c

    .line 320
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v0, 0xfb

    if-lt p1, v0, :cond_4

    const/16 v1, 0xfe

    if-gt p1, v1, :cond_4

    .line 324
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readUnsignedByte()I

    move-result p0

    sub-int/2addr p1, v0

    neg-int p1, p1

    mul-int/lit16 p1, p1, 0x100

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x6c

    .line 325
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 329
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static readLong(Lcom/tom_roush/fontbox/cff/CFFDataInput;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard16()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard16()I

    move-result p0

    or-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static readOperator(Lcom/tom_roush/fontbox/cff/CFFDataInput;I)Lcom/tom_roush/fontbox/cff/CFFOperator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-static {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser;->readOperatorKey(Lcom/tom_roush/fontbox/cff/CFFDataInput;I)Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    move-result-object p0

    .line 290
    invoke-static {p0}, Lcom/tom_roush/fontbox/cff/CFFOperator;->getOperator(Lcom/tom_roush/fontbox/cff/CFFOperator$Key;)Lcom/tom_roush/fontbox/cff/CFFOperator;

    move-result-object p0

    return-object p0
.end method

.method private static readOperatorKey(Lcom/tom_roush/fontbox/cff/CFFDataInput;I)Lcom/tom_roush/fontbox/cff/CFFOperator$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readUnsignedByte()I

    move-result p0

    .line 298
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {v0, p1, p0}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(II)V

    return-object v0

    .line 300
    :cond_0
    new-instance p0, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;

    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFOperator$Key;-><init>(I)V

    return-object p0
.end method

.method private readPrivateDict(Lcom/tom_roush/fontbox/cff/CFFParser$DictData;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/fontbox/cff/CFFParser$DictData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 694
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    const-string v1, "BlueValues"

    const/4 v2, 0x0

    .line 695
    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getDelta(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OtherBlues"

    .line 696
    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getDelta(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FamilyBlues"

    .line 697
    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getDelta(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FamilyOtherBlues"

    .line 698
    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getDelta(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v3, 0x3fa449ba5e353f7dL    # 0.039625

    .line 699
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "BlueScale"

    invoke-virtual {p1, v3, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 700
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "BlueShift"

    invoke-virtual {p1, v3, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 701
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "BlueFuzz"

    invoke-virtual {p1, v3, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "StdHW"

    .line 702
    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "StdVW"

    .line 703
    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "StemSnapH"

    .line 704
    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getDelta(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "StemSnapV"

    .line 705
    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getDelta(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ForceBold"

    const/4 v2, 0x0

    .line 707
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 706
    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getBoolean(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LanguageGroup"

    .line 707
    invoke-virtual {p1, v1, v3}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, 0x3faeb851eb851eb8L    # 0.06

    .line 708
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "ExpansionFactor"

    invoke-virtual {p1, v2, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "initialRandomSeed"

    .line 709
    invoke-virtual {p1, v1, v3}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "defaultWidthX"

    .line 710
    invoke-virtual {p1, v1, v3}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nominalWidthX"

    .line 711
    invoke-virtual {p1, v1, v3}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static readRealNumber(Lcom/tom_roush/fontbox/cff/CFFDataInput;)Ljava/lang/Double;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_0
    if-nez v4, :cond_3

    .line 342
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readUnsignedByte()I

    move-result v7

    .line 343
    div-int/lit8 v8, v7, 0x10

    aput v8, v2, v3

    .line 344
    rem-int/lit8 v7, v7, 0x10

    const/4 v8, 0x1

    aput v7, v2, v8

    move v7, v3

    :goto_0
    if-ge v7, v1, :cond_0

    .line 345
    aget v9, v2, v7

    const-string v10, "PdfBox-Android"

    packed-switch v9, :pswitch_data_0

    .line 395
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal nibble "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    move v4, v8

    goto :goto_2

    :pswitch_1
    const-string v9, "-"

    .line 388
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    if-eqz v6, :cond_1

    .line 378
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "duplicate \'E-\' ignored after "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v5, "E-"

    .line 381
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    if-eqz v6, :cond_2

    .line 368
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "duplicate \'E\' ignored after "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v5, "E"

    .line 371
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v5, v8

    move v6, v5

    goto :goto_2

    :pswitch_4
    const-string v9, "."

    .line 363
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 359
    :pswitch_5
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v5, v3

    :goto_2
    :pswitch_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    const-string p0, "0"

    .line 404
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    .line 408
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 412
    :cond_5
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 416
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    const/16 v0, 0x186

    if-gt p1, v0, :cond_0

    .line 776
    invoke-static {p1}, Lcom/tom_roush/fontbox/cff/CFFStandardString;->getName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser;->stringIndex:[Ljava/lang/String;

    if-eqz v0, :cond_1

    add-int/lit16 v1, p1, -0x187

    .line 778
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 780
    aget-object p1, v0, v1

    return-object p1

    .line 783
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SID"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 772
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid negative index when reading a string"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static readStringIndexData(Lcom/tom_roush/fontbox/cff/CFFDataInput;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-static {p0}, Lcom/tom_roush/fontbox/cff/CFFParser;->readIndexDataOffsets(Lcom/tom_roush/fontbox/cff/CFFDataInput;)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 218
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 219
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 222
    aget v5, v0, v4

    aget v6, v0, v3

    sub-int/2addr v5, v6

    if-ltz v5, :cond_1

    .line 229
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readBytes(I)[B

    move-result-object v5

    sget-object v7, Lcom/tom_roush/fontbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v6, v2, v3

    move v3, v4

    goto :goto_0

    .line 225
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative index data length + "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": offsets["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", offsets["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v2
.end method

.method private readSupplement(Lcom/tom_roush/fontbox/cff/CFFDataInput;Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 857
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard8()I

    move-result v0

    invoke-static {p2, v0}, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;->access$1502(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;I)I

    .line 858
    invoke-static {p2}, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;->access$1500(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;)I

    move-result v0

    new-array v0, v0, [Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;

    invoke-static {p2, v0}, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;->access$1602(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;[Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;)[Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;

    const/4 v0, 0x0

    .line 859
    :goto_0
    invoke-static {p2}, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;->access$1600(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;)[Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 861
    new-instance v1, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;

    invoke-direct {v1}, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;-><init>()V

    .line 862
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readCard8()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;->access$1702(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;I)I

    .line 863
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readSID()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;->access$1802(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;I)I

    .line 864
    invoke-static {v1}, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;->access$1800(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/cff/CFFParser;->readString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;->access$1902(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;Ljava/lang/String;)Ljava/lang/String;

    .line 865
    invoke-static {p2}, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;->access$1600(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;)[Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;

    move-result-object v2

    aput-object v1, v2, v0

    .line 866
    invoke-static {v1}, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;->access$1700(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;)I

    move-result v2

    invoke-static {v1}, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;->access$1800(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;)I

    move-result v3

    invoke-static {v1}, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;->access$1800(Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding$Supplement;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/cff/CFFParser;->readString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v3, v1}, Lcom/tom_roush/fontbox/cff/CFFParser$CFFBuiltInEncoding;->add(IILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static readTagName(Lcom/tom_roush/fontbox/cff/CFFDataInput;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 154
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->readBytes(I)[B

    move-result-object p0

    .line 155
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/tom_roush/fontbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method


# virtual methods
.method public parse([B)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/cff/CFFFont;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFDataInput;

    invoke-direct {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFDataInput;-><init>([B)V

    .line 84
    invoke-static {v0}, Lcom/tom_roush/fontbox/cff/CFFParser;->readTagName(Lcom/tom_roush/fontbox/cff/CFFDataInput;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTTO"

    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 88
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser;->createTaggedCFFDataInput(Lcom/tom_roush/fontbox/cff/CFFDataInput;[B)Lcom/tom_roush/fontbox/cff/CFFDataInput;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string p1, "ttcf"

    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "\u0000\u0001\u0000\u0000"

    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 100
    invoke-virtual {v0, v3}, Lcom/tom_roush/fontbox/cff/CFFDataInput;->setPosition(I)V

    .line 104
    :goto_0
    invoke-static {v0}, Lcom/tom_roush/fontbox/cff/CFFParser;->readHeader(Lcom/tom_roush/fontbox/cff/CFFDataInput;)Lcom/tom_roush/fontbox/cff/CFFParser$Header;

    .line 105
    invoke-static {v0}, Lcom/tom_roush/fontbox/cff/CFFParser;->readStringIndexData(Lcom/tom_roush/fontbox/cff/CFFDataInput;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 110
    invoke-static {v0}, Lcom/tom_roush/fontbox/cff/CFFParser;->readIndexData(Lcom/tom_roush/fontbox/cff/CFFDataInput;)[[B

    move-result-object v1

    .line 111
    invoke-static {v0}, Lcom/tom_roush/fontbox/cff/CFFParser;->readStringIndexData(Lcom/tom_roush/fontbox/cff/CFFDataInput;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tom_roush/fontbox/cff/CFFParser;->stringIndex:[Ljava/lang/String;

    .line 112
    invoke-static {v0}, Lcom/tom_roush/fontbox/cff/CFFParser;->readIndexData(Lcom/tom_roush/fontbox/cff/CFFDataInput;)[[B

    move-result-object v2

    .line 114
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_1

    .line 117
    aget-object v5, p1, v3

    aget-object v6, v1, v3

    invoke-direct {p0, v0, v5, v6}, Lcom/tom_roush/fontbox/cff/CFFParser;->parseFont(Lcom/tom_roush/fontbox/cff/CFFDataInput;Ljava/lang/String;[B)Lcom/tom_roush/fontbox/cff/CFFFont;

    move-result-object v5

    .line 118
    invoke-virtual {v5, v2}, Lcom/tom_roush/fontbox/cff/CFFFont;->setGlobalSubrIndex([[B)V

    iget-object v6, p0, Lcom/tom_roush/fontbox/cff/CFFParser;->source:Lcom/tom_roush/fontbox/cff/CFFParser$ByteSource;

    .line 119
    invoke-virtual {v5, v6}, Lcom/tom_roush/fontbox/cff/CFFFont;->setData(Lcom/tom_roush/fontbox/cff/CFFParser$ByteSource;)V

    .line 120
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v4

    .line 108
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Name index missing in CFF font"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "OpenType fonts containing a true type font are not supported."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "True Type Collection fonts are not supported."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parse([BLcom/tom_roush/fontbox/cff/CFFParser$ByteSource;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/tom_roush/fontbox/cff/CFFParser$ByteSource;",
            ")",
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/cff/CFFFont;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p2, p0, Lcom/tom_roush/fontbox/cff/CFFParser;->source:Lcom/tom_roush/fontbox/cff/CFFParser$ByteSource;

    .line 70
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser;->parse([B)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser;->debugFontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
