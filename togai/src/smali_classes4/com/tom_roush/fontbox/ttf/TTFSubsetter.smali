.class public final Lcom/tom_roush/fontbox/ttf/TTFSubsetter;
.super Ljava/lang/Object;
.source "TTFSubsetter.java"


# static fields
.field private static final PAD_BUF:[B


# instance fields
.field private final glyphIds:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hasAddedCompoundReferences:Z

.field private final keepTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field private final ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

.field private final uniToGID:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final unicodeCmap:Lcom/tom_roush/fontbox/ttf/CmapLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->PAD_BUF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/fontbox/ttf/TrueTypeFont;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    iput-object p2, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->keepTables:Ljava/util/List;

    .line 84
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->uniToGID:Ljava/util/SortedMap;

    .line 85
    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    iput-object p2, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    .line 88
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnicodeCmapLookup()Lcom/tom_roush/fontbox/ttf/CmapLookup;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->unicodeCmap:Lcom/tom_roush/fontbox/ttf/CmapLookup;

    const/4 p1, 0x0

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCompoundReferences()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->hasAddedCompoundReferences:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->hasAddedCompoundReferences:Z

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 479
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getGlyph()Lcom/tom_roush/fontbox/ttf/GlyphTable;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 480
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getIndexToLocation()Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;->getOffsets()[J

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 483
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getOriginalData()Ljava/io/InputStream;

    move-result-object v3

    .line 487
    :try_start_0
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/GlyphTable;->getOffset()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    iget-object v4, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    .line 489
    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 491
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-wide v9, v2, v9

    .line 492
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v0

    aget-wide v11, v2, v11

    sub-long/2addr v11, v9

    sub-long/2addr v9, v6

    .line 493
    invoke-virtual {v3, v9, v10}, Ljava/io/InputStream;->skip(J)J

    long-to-int v6, v11

    .line 494
    new-array v7, v6, [B

    .line 495
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    const/4 v9, 0x2

    if-lt v6, v9, :cond_8

    const/4 v6, 0x0

    .line 497
    aget-byte v6, v7, v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_8

    aget-byte v6, v7, v0

    if-ne v6, v9, :cond_8

    const/16 v6, 0xa

    .line 503
    :cond_1
    aget-byte v9, v7, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v7, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    add-int/lit8 v10, v6, 0x2

    .line 505
    aget-byte v10, v7, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v11, v6, 0x3

    aget-byte v11, v7, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    iget-object v11, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    .line 506
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    if-nez v5, :cond_2

    .line 510
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 512
    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_4

    add-int/lit8 v6, v6, 0x8

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x6

    :goto_2
    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_5

    add-int/lit8 v6, v6, 0x8

    goto :goto_3

    :cond_5
    and-int/lit8 v10, v9, 0x40

    if-eqz v10, :cond_6

    add-int/lit8 v6, v6, 0x4

    goto :goto_3

    :cond_6
    and-int/lit8 v10, v9, 0x8

    if-eqz v10, :cond_7

    add-int/lit8 v6, v6, 0x2

    :cond_7
    :goto_3
    and-int/lit8 v9, v9, 0x20

    if-nez v9, :cond_1

    .line 543
    :cond_8
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v0

    aget-wide v6, v2, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 548
    :cond_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    if-eqz v5, :cond_a

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    .line 552
    invoke-interface {v3, v5}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    :cond_a
    if-eqz v5, :cond_b

    goto/16 :goto_0

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 548
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 549
    throw v0
.end method

.method private buildCmapTable()[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 688
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getCmap()Lcom/tom_roush/fontbox/ttf/CmapTable;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->uniToGID:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->keepTables:Ljava/util/List;

    if-eqz v1, :cond_0

    const-string v2, "cmap"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 693
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 694
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x0

    .line 697
    invoke-direct {v0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    const/4 v4, 0x1

    .line 698
    invoke-direct {v0, v2, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    const/4 v5, 0x3

    .line 701
    invoke-direct {v0, v2, v5}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 702
    invoke-direct {v0, v2, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    const-wide/16 v5, 0xc

    .line 703
    invoke-direct {v0, v2, v5, v6}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint32(Ljava/io/DataOutputStream;J)V

    iget-object v5, v0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->uniToGID:Ljava/util/SortedMap;

    .line 706
    invoke-interface {v5}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 707
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 709
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-direct {v0, v7}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->getNewGlyphId(Ljava/lang/Integer;)I

    move-result v7

    iget-object v8, v0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->uniToGID:Ljava/util/SortedMap;

    .line 712
    invoke-interface {v8}, Ljava/util/SortedMap;->size()I

    move-result v8

    add-int/2addr v8, v4

    new-array v9, v8, [I

    .line 713
    new-array v10, v8, [I

    .line 714
    new-array v8, v8, [I

    move v12, v3

    move v11, v7

    move-object v7, v6

    .line 716
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const v14, 0xffff

    if-eqz v13, :cond_6

    .line 718
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 719
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-direct {v0, v15}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->getNewGlyphId(Ljava/lang/Integer;)I

    move-result v15

    .line 722
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v14, :cond_5

    .line 727
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v4

    if-ne v3, v14, :cond_1

    sub-int v3, v15, v11

    .line 728
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    sub-int v14, v14, v16

    if-eq v3, v14, :cond_4

    :cond_1
    if-eqz v11, :cond_2

    .line 734
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v9, v12

    .line 735
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v10, v12

    .line 736
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v11, v3

    aput v11, v8, v12

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 739
    :cond_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 742
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    aput v3, v9, v12

    .line 743
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v10, v12

    .line 744
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v11, v3

    aput v11, v8, v12

    goto :goto_1

    :cond_3
    :goto_2
    move-object v6, v13

    move v11, v15

    :cond_4
    move-object v7, v13

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 724
    :cond_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "non-BMP Unicode character"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 754
    :cond_6
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v9, v12

    .line 755
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v10, v12

    .line 756
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v11, v3

    aput v11, v8, v12

    add-int/lit8 v3, v12, 0x1

    .line 760
    aput v14, v9, v3

    .line 761
    aput v14, v10, v3

    .line 762
    aput v4, v8, v3

    add-int/lit8 v12, v12, 0x2

    .line 766
    invoke-direct {v0, v12}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->log2(I)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x4

    .line 767
    invoke-direct {v0, v2, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    mul-int/lit8 v4, v12, 0x8

    add-int/lit8 v4, v4, 0x10

    .line 768
    invoke-direct {v0, v2, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    const/4 v4, 0x0

    .line 769
    invoke-direct {v0, v2, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    mul-int/lit8 v4, v12, 0x2

    .line 770
    invoke-direct {v0, v2, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 771
    invoke-direct {v0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 772
    div-int/lit8 v5, v3, 0x2

    invoke-direct {v0, v5}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->log2(I)I

    move-result v5

    invoke-direct {v0, v2, v5}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    sub-int/2addr v4, v3

    .line 773
    invoke-direct {v0, v2, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v12, :cond_7

    .line 778
    aget v4, v10, v3

    invoke-direct {v0, v2, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    .line 782
    invoke-direct {v0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v12, :cond_8

    .line 787
    aget v3, v9, v4

    invoke-direct {v0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v12, :cond_9

    .line 793
    aget v3, v8, v4

    invoke-direct {v0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v12, :cond_a

    const/4 v3, 0x0

    .line 798
    invoke-direct {v0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 801
    :cond_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    :cond_b
    :goto_7
    const/4 v1, 0x0

    return-object v1
.end method

.method private buildGlyfTable([J)[B
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 562
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, v1, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 564
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getGlyph()Lcom/tom_roush/fontbox/ttf/GlyphTable;

    move-result-object v2

    iget-object v3, v1, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 565
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getIndexToLocation()Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;->getOffsets()[J

    move-result-object v3

    iget-object v4, v1, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 566
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getOriginalData()Ljava/io/InputStream;

    move-result-object v4

    .line 569
    :try_start_0
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/GlyphTable;->getOffset()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    iget-object v2, v1, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    .line 576
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    move v8, v7

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 578
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aget-wide v14, v3, v14

    .line 579
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v16, 0x1

    add-int/lit8 v13, v13, 0x1

    aget-wide v17, v3, v13

    sub-long v5, v17, v14

    add-int/lit8 v13, v8, 0x1

    .line 581
    aput-wide v9, p1, v8

    sub-long v11, v14, v11

    .line 582
    invoke-virtual {v4, v11, v12}, Ljava/io/InputStream;->skip(J)J

    long-to-int v8, v5

    .line 584
    new-array v11, v8, [B

    .line 585
    invoke-virtual {v4, v11}, Ljava/io/InputStream;->read([B)I

    const/4 v12, 0x2

    if-lt v8, v12, :cond_6

    .line 588
    aget-byte v12, v11, v7

    const/4 v7, -0x1

    if-ne v12, v7, :cond_6

    aget-byte v12, v11, v16

    if-ne v12, v7, :cond_6

    const/16 v7, 0xa

    .line 596
    :goto_1
    aget-byte v8, v11, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v12, v7, 0x1

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v8, v12

    add-int/lit8 v12, v7, 0x2

    move-object/from16 v16, v2

    .line 600
    aget-byte v2, v11, v12

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v18, v7, 0x3

    move-object/from16 v19, v3

    aget-byte v3, v11, v18

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iget-object v3, v1, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    move/from16 v20, v13

    .line 601
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->getNewGlyphId(Ljava/lang/Integer;)I

    move-result v2

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    .line 604
    aput-byte v3, v11, v12

    int-to-byte v2, v2

    .line 605
    aput-byte v2, v11, v18

    and-int/lit8 v2, v8, 0x1

    if-eqz v2, :cond_0

    add-int/lit8 v7, v7, 0x8

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x6

    :goto_2
    and-int/lit16 v2, v8, 0x80

    if-eqz v2, :cond_1

    add-int/lit8 v7, v7, 0x8

    goto :goto_3

    :cond_1
    and-int/lit8 v2, v8, 0x40

    if-eqz v2, :cond_2

    add-int/lit8 v7, v7, 0x4

    goto :goto_3

    :cond_2
    and-int/lit8 v2, v8, 0x8

    if-eqz v2, :cond_3

    add-int/lit8 v7, v7, 0x2

    :cond_3
    :goto_3
    and-int/lit8 v2, v8, 0x20

    if-nez v2, :cond_5

    and-int/lit16 v2, v8, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_4

    .line 639
    aget-byte v2, v11, v7

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v7, 0x1

    aget-byte v3, v11, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    :cond_4
    const/4 v2, 0x0

    .line 647
    invoke-virtual {v0, v11, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    int-to-long v2, v7

    goto :goto_4

    :cond_5
    move-object/from16 v2, v16

    move-object/from16 v3, v19

    move/from16 v13, v20

    goto :goto_1

    :cond_6
    move-object/from16 v16, v2

    move-object/from16 v19, v3

    move/from16 v20, v13

    if-lez v8, :cond_7

    const/4 v2, 0x0

    .line 655
    invoke-virtual {v0, v11, v2, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    int-to-long v2, v8

    :goto_4
    add-long/2addr v9, v2

    :cond_7
    const-wide/16 v2, 0x4

    .line 662
    rem-long v7, v9, v2

    const-wide/16 v11, 0x0

    cmp-long v7, v7, v11

    if-eqz v7, :cond_8

    .line 664
    rem-long v2, v9, v2

    long-to-int v2, v2

    rsub-int/lit8 v2, v2, 0x4

    sget-object v3, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->PAD_BUF:[B

    const/4 v7, 0x0

    .line 665
    invoke-virtual {v0, v3, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr v9, v2

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    add-long v2, v14, v5

    move-wide v11, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    move/from16 v8, v20

    goto/16 :goto_0

    .line 671
    :cond_9
    aput-wide v9, p1, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 678
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 675
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 676
    throw v0
.end method

.method private buildHeadTable()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 207
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 209
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHeader()Lcom/tom_roush/fontbox/ttf/HeaderTable;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getVersion()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {p0, v1, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeFixed(Ljava/io/DataOutputStream;D)V

    .line 211
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getFontRevision()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {p0, v1, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeFixed(Ljava/io/DataOutputStream;D)V

    const-wide/16 v3, 0x0

    .line 212
    invoke-direct {p0, v1, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint32(Ljava/io/DataOutputStream;J)V

    .line 213
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getMagicNumber()J

    move-result-wide v3

    invoke-direct {p0, v1, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint32(Ljava/io/DataOutputStream;J)V

    .line 214
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getFlags()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 215
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getUnitsPerEm()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 216
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getCreated()Ljava/util/Calendar;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeLongDateTime(Ljava/io/DataOutputStream;Ljava/util/Calendar;)V

    .line 217
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getModified()Ljava/util/Calendar;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeLongDateTime(Ljava/io/DataOutputStream;Ljava/util/Calendar;)V

    .line 218
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getXMin()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 219
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getYMin()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 220
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getXMax()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 221
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getYMax()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 222
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getMacStyle()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 223
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getLowestRecPPEM()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 224
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getFontDirectionHint()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    const/4 v3, 0x1

    .line 226
    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 227
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getGlyphDataFormat()S

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 228
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 230
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private buildHheaTable()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 236
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 238
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHorizontalHeader()Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getVersion()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {p0, v1, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeFixed(Ljava/io/DataOutputStream;D)V

    .line 240
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getAscender()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 241
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getDescender()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 242
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getLineGap()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 243
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getAdvanceWidthMax()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 244
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getMinLeftSideBearing()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 245
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getMinRightSideBearing()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 246
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getXMaxExtent()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 247
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getCaretSlopeRise()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 248
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getCaretSlopeRun()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 249
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getReserved1()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 250
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getReserved2()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 251
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getReserved3()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 252
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getReserved4()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 253
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getReserved5()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 254
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getMetricDataFormat()S

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    const/4 v4, 0x0

    .line 258
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getNumberOfHMetrics()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/SortedSet;->size()I

    move-result v3

    iget-object v4, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    .line 259
    invoke-interface {v4}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getNumberOfHMetrics()I

    move-result v5

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getNumberOfHMetrics()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 263
    :cond_0
    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 265
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 266
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private buildHmtxTable()[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 868
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, v9, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 870
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHorizontalHeader()Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;

    move-result-object v10

    iget-object v1, v9, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 871
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHorizontalMetrics()Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;

    move-result-object v1

    iget-object v2, v9, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 872
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getOriginalData()Ljava/io/InputStream;

    move-result-object v11

    .line 875
    invoke-virtual {v10}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getNumberOfHMetrics()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v12, v2, -0x1

    iget-object v2, v9, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    .line 877
    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v13, 0x0

    if-le v2, v12, :cond_0

    iget-object v2, v9, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v13

    .line 881
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->getOffset()J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Ljava/io/InputStream;->skip(J)J

    iget-object v1, v9, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    .line 883
    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const-wide/16 v1, 0x0

    move-wide v6, v1

    move v15, v3

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/Integer;

    .line 887
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-wide/16 v17, 0x4

    if-gt v1, v12, :cond_1

    .line 890
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    mul-long v4, v1, v17

    const/4 v8, 0x4

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v0

    .line 891
    invoke-direct/range {v1 .. v8}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->copyBytes(Ljava/io/InputStream;Ljava/io/OutputStream;JJI)J

    move-result-wide v1

    :goto_2
    move-wide v6, v1

    goto :goto_1

    :cond_1
    if-eqz v15, :cond_2

    int-to-long v1, v12

    mul-long v4, v1, v17

    const/4 v8, 0x2

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v0

    .line 901
    invoke-direct/range {v1 .. v8}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->copyBytes(Ljava/io/InputStream;Ljava/io/OutputStream;JJI)J

    move-result-wide v1

    move-wide v6, v1

    move v15, v13

    .line 907
    :cond_2
    invoke-virtual {v10}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getNumberOfHMetrics()I

    move-result v1

    int-to-long v1, v1

    mul-long v1, v1, v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v10}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getNumberOfHMetrics()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-long v3, v3

    const-wide/16 v16, 0x2

    mul-long v3, v3, v16

    add-long v4, v1, v3

    const/4 v8, 0x2

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v0

    .line 908
    invoke-direct/range {v1 .. v8}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->copyBytes(Ljava/io/InputStream;Ljava/io/OutputStream;JJI)J

    move-result-wide v1

    goto :goto_2

    .line 912
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 917
    throw v0
.end method

.method private buildLocaTable([J)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 456
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 458
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p1, v3

    .line 460
    invoke-direct {p0, v1, v4, v5}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint32(Ljava/io/DataOutputStream;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 464
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private buildMaxpTable()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 376
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 378
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getMaximumProfile()Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 379
    invoke-direct {p0, v1, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeFixed(Ljava/io/DataOutputStream;D)V

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    .line 380
    invoke-interface {v3}, Ljava/util/SortedSet;->size()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 381
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getMaxPoints()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 382
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getMaxContours()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 383
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getMaxCompositePoints()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 384
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getMaxCompositeContours()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 385
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getMaxZones()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 386
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getMaxTwilightPoints()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 387
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getMaxStorage()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 388
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getMaxFunctionDefs()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 389
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getMaxInstructionDefs()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 390
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getMaxStackElements()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 391
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getMaxSizeOfInstructions()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 392
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getMaxComponentElements()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 393
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getMaxComponentDepth()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 395
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 396
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private buildNameTable()[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 280
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 282
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getNaming()Lcom/tom_roush/fontbox/ttf/NamingTable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    iget-object v4, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->keepTables:Ljava/util/List;

    if-eqz v4, :cond_0

    const-string v5, "name"

    .line 283
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_5

    .line 288
    :cond_0
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/NamingTable;->getNameRecords()Ljava/util/List;

    move-result-object v2

    .line 290
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tom_roush/fontbox/ttf/NameRecord;

    .line 292
    invoke-direct {p0, v7}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->shouldCopyNameRecord(Lcom/tom_roush/fontbox/ttf/NameRecord;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 297
    :cond_2
    invoke-direct {p0, v1, v5}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 298
    invoke-direct {p0, v1, v6}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    mul-int/lit8 v4, v6, 0xc

    const/4 v7, 0x6

    add-int/2addr v4, v7

    .line 299
    invoke-direct {p0, v1, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    if-nez v6, :cond_3

    return-object v3

    .line 306
    :cond_3
    new-array v3, v6, [[B

    .line 308
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v8, v5

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tom_roush/fontbox/ttf/NameRecord;

    .line 310
    invoke-direct {p0, v9}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->shouldCopyNameRecord(Lcom/tom_roush/fontbox/ttf/NameRecord;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 312
    invoke-virtual {v9}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getPlatformId()I

    move-result v10

    .line 313
    invoke-virtual {v9}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getPlatformEncodingId()I

    move-result v11

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-ne v10, v12, :cond_5

    if-ne v11, v13, :cond_5

    const-string v10, "UTF-16BE"

    goto :goto_2

    :cond_5
    const/4 v12, 0x2

    const-string v14, "ISO-8859-1"

    if-ne v10, v12, :cond_7

    if-nez v11, :cond_6

    const-string v10, "US-ASCII"

    goto :goto_2

    :cond_6
    if-ne v11, v13, :cond_7

    const-string v10, "UTF16-BE"

    goto :goto_2

    :cond_7
    move-object v10, v14

    .line 337
    :goto_2
    invoke-virtual {v9}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getString()Ljava/lang/String;

    move-result-object v11

    .line 338
    invoke-virtual {v9}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getNameId()I

    move-result v9

    if-ne v9, v7, :cond_8

    iget-object v9, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->prefix:Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 340
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->prefix:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 342
    :cond_8
    invoke-virtual {v11, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 349
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v5

    move v7, v4

    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tom_roush/fontbox/ttf/NameRecord;

    .line 351
    invoke-direct {p0, v8}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->shouldCopyNameRecord(Lcom/tom_roush/fontbox/ttf/NameRecord;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 353
    invoke-virtual {v8}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getPlatformId()I

    move-result v9

    invoke-direct {p0, v1, v9}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 354
    invoke-virtual {v8}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getPlatformEncodingId()I

    move-result v9

    invoke-direct {p0, v1, v9}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 355
    invoke-virtual {v8}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getLanguageId()I

    move-result v9

    invoke-direct {p0, v1, v9}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 356
    invoke-virtual {v8}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getNameId()I

    move-result v8

    invoke-direct {p0, v1, v8}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 357
    aget-object v8, v3, v4

    array-length v8, v8

    invoke-direct {p0, v1, v8}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 358
    invoke-direct {p0, v1, v7}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 359
    aget-object v8, v3, v4

    array-length v8, v8

    add-int/2addr v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    if-ge v5, v6, :cond_c

    .line 366
    aget-object v2, v3, v5

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 369
    :cond_c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 370
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_d
    :goto_5
    return-object v3
.end method

.method private buildOS2Table()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 401
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getOS2Windows()Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->uniToGID:Ljava/util/SortedMap;

    .line 402
    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->keepTables:Ljava/util/List;

    if-eqz v1, :cond_0

    const-string v2, "OS/2"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 407
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 408
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 410
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getVersion()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 411
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getAverageCharWidth()S

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 412
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getWeightClass()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 413
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getWidthClass()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 415
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getFsType()S

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 417
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getSubscriptXSize()S

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 418
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getSubscriptYSize()S

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 419
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getSubscriptXOffset()S

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 420
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getSubscriptYOffset()S

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 422
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getSuperscriptXSize()S

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 423
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getSuperscriptYSize()S

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 424
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getSuperscriptXOffset()S

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 425
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getSuperscriptYOffset()S

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 427
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getStrikeoutSize()S

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 428
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getStrikeoutPosition()S

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 429
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getFamilyClass()I

    move-result v3

    int-to-short v3, v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 430
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getPanose()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    const-wide/16 v3, 0x0

    .line 432
    invoke-direct {p0, v2, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint32(Ljava/io/DataOutputStream;J)V

    .line 433
    invoke-direct {p0, v2, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint32(Ljava/io/DataOutputStream;J)V

    .line 434
    invoke-direct {p0, v2, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint32(Ljava/io/DataOutputStream;J)V

    .line 435
    invoke-direct {p0, v2, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint32(Ljava/io/DataOutputStream;J)V

    .line 437
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getAchVendId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "US-ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 439
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getFsSelection()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->uniToGID:Ljava/util/SortedMap;

    .line 440
    invoke-interface {v3}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->uniToGID:Ljava/util/SortedMap;

    .line 441
    invoke-interface {v3}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 442
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getTypoAscender()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 443
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getTypoDescender()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 444
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getTypoLineGap()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 445
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getWinAscent()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 446
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getWinDescent()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 448
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 449
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private buildPostTable()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 806
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getPostScript()Lcom/tom_roush/fontbox/ttf/PostScriptTable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->keepTables:Ljava/util/List;

    if-eqz v1, :cond_0

    const-string v2, "post"

    .line 807
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 812
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 813
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 815
    invoke-direct {p0, v2, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeFixed(Ljava/io/DataOutputStream;D)V

    .line 816
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->getItalicAngle()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {p0, v2, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeFixed(Ljava/io/DataOutputStream;D)V

    .line 817
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->getUnderlinePosition()S

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 818
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->getUnderlineThickness()S

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeSInt16(Ljava/io/DataOutputStream;S)V

    .line 819
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->getIsFixedPitch()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint32(Ljava/io/DataOutputStream;J)V

    .line 820
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->getMinMemType42()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint32(Ljava/io/DataOutputStream;J)V

    .line 821
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->getMaxMemType42()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint32(Ljava/io/DataOutputStream;J)V

    .line 822
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->getMinMemType1()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint32(Ljava/io/DataOutputStream;J)V

    .line 823
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->getMaxMemType1()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint32(Ljava/io/DataOutputStream;J)V

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    .line 828
    invoke-interface {v3}, Ljava/util/SortedSet;->size()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    .line 831
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v4, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    .line 832
    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 834
    invoke-virtual {v0, v5}, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->getName(I)Ljava/lang/String;

    move-result-object v5

    .line 835
    sget-object v6, Lcom/tom_roush/fontbox/ttf/WGL4Names;->MAC_GLYPH_NAMES_INDICES:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 839
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    goto :goto_0

    .line 844
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_2

    .line 847
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 848
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit16 v5, v5, 0x102

    invoke-direct {p0, v2, v5}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint16(Ljava/io/DataOutputStream;I)V

    goto :goto_0

    .line 855
    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "US-ASCII"

    .line 857
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 858
    array-length v4, v3

    invoke-direct {p0, v2, v4}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeUint8(Ljava/io/DataOutputStream;I)V

    .line 859
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_1

    .line 862
    :cond_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 863
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private copyBytes(Ljava/io/InputStream;Ljava/io/OutputStream;JJI)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sub-long p5, p3, p5

    .line 925
    invoke-virtual {p1, p5, p6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long p5, p5, v0

    const-string p6, "Unexpected EOF exception parsing glyphId of hmtx table."

    if-nez p5, :cond_1

    .line 929
    new-array p5, p7, [B

    const/4 v0, 0x0

    .line 930
    invoke-virtual {p1, p5, v0, p7}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p7, p1, :cond_0

    .line 934
    invoke-virtual {p2, p5, v0, p7}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p1, p7

    add-long/2addr p3, p1

    return-wide p3

    .line 932
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, p6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 927
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, p6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getNewGlyphId(Ljava/lang/Integer;)I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    .line 683
    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result p1

    return p1
.end method

.method private log2(I)I
    .locals 4

    int-to-double v0, p1

    .line 1088
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private shouldCopyNameRecord(Lcom/tom_roush/fontbox/ttf/NameRecord;)Z
    .locals 3

    .line 271
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getPlatformId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 272
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getPlatformEncodingId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 273
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getLanguageId()I

    move-result v0

    const/16 v2, 0x409

    if-ne v0, v2, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getNameId()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getNameId()I

    move-result p1

    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private toUInt32(II)J
    .locals 4

    int-to-long v0, p1

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    int-to-long p1, p2

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private toUInt32([B)J
    .locals 7

    const/4 v0, 0x0

    .line 1080
    aget-byte v0, p1, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    const/4 v4, 0x1

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x3

    aget-byte p1, p1, v4

    int-to-long v4, p1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private writeFileHeader(Ljava/io/DataOutputStream;I)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x10000

    .line 155
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 156
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 158
    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x10

    .line 160
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 162
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->log2(I)I

    move-result v0

    .line 164
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    mul-int/lit8 v2, p2, 0x10

    sub-int/2addr v2, v1

    .line 168
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-wide/32 v3, 0x10000

    .line 170
    invoke-direct {p0, p2, v1}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->toUInt32(II)J

    move-result-wide p1

    add-long/2addr p1, v3

    invoke-direct {p0, v0, v2}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->toUInt32(II)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private writeFixed(Ljava/io/DataOutputStream;D)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1036
    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    sub-double/2addr p2, v0

    const-wide/high16 v2, 0x40f0000000000000L    # 65536.0

    mul-double/2addr p2, v2

    double-to-int v0, v0

    .line 1038
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    double-to-int p2, p2

    .line 1039
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method private writeLongDateTime(Ljava/io/DataOutputStream;Ljava/util/Calendar;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTC"

    .line 1065
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0x770

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    .line 1066
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    .line 1067
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1068
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1069
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    .line 1070
    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void
.end method

.method private writeSInt16(Ljava/io/DataOutputStream;S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1054
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method private writeTableBody(Ljava/io/OutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    array-length v0, p2

    .line 197
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 198
    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    sget-object p2, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->PAD_BUF:[B

    const/4 v1, 0x0

    rsub-int/lit8 v0, v0, 0x4

    .line 200
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method private writeTableHeader(Ljava/io/DataOutputStream;Ljava/lang/String;J[B)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    array-length v0, p5

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 179
    aget-byte v5, p5, v4

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    rem-int/lit8 v7, v4, 0x4

    mul-int/lit8 v7, v7, 0x8

    rsub-int/lit8 v7, v7, 0x18

    shl-long/2addr v5, v7

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide v4, 0xffffffffL

    and-long v0, v1, v4

    const-string v2, "US-ASCII"

    .line 183
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v2, 0x4

    .line 185
    invoke-virtual {p1, p2, v3, v2}, Ljava/io/DataOutputStream;->write([BII)V

    long-to-int v2, v0

    .line 186
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    long-to-int v2, p3

    .line 187
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 188
    array-length v2, p5

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 191
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->toUInt32([B)J

    move-result-wide p1

    add-long/2addr p1, v0

    add-long/2addr p1, v0

    add-long/2addr p1, p3

    array-length p3, p5

    int-to-long p3, p3

    add-long/2addr p1, p3

    return-wide p1
.end method

.method private writeUint16(Ljava/io/DataOutputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1049
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method private writeUint32(Ljava/io/DataOutputStream;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int p2, p2

    .line 1044
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method private writeUint8(Ljava/io/DataOutputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1059
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->unicodeCmap:Lcom/tom_roush/fontbox/ttf/CmapLookup;

    .line 109
    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/ttf/CmapLookup;->getGlyphId(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->uniToGID:Ljava/util/SortedMap;

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addAll(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 126
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->add(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getGIDMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->addCompoundReferences()V

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    .line 139
    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->prefix:Ljava/lang/String;

    return-void
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    .line 947
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->uniToGID:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "PdfBox-Android"

    const-string v1, "font subset is empty"

    .line 949
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_1
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->addCompoundReferences()V

    .line 954
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-object p1, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->glyphIds:Ljava/util/SortedSet;

    .line 957
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [J

    .line 960
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->buildHeadTable()[B

    move-result-object v1

    .line 961
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->buildHheaTable()[B

    move-result-object v2

    .line 962
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->buildMaxpTable()[B

    move-result-object v3

    .line 963
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->buildNameTable()[B

    move-result-object v4

    .line 964
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->buildOS2Table()[B

    move-result-object v5

    .line 965
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->buildGlyfTable([J)[B

    move-result-object v6

    .line 966
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->buildLocaTable([J)[B

    move-result-object p1

    .line 967
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->buildCmapTable()[B

    move-result-object v7

    .line 968
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->buildHmtxTable()[B

    move-result-object v8

    .line 969
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->buildPostTable()[B

    move-result-object v9

    .line 972
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    if-eqz v5, :cond_2

    const-string v11, "OS/2"

    .line 975
    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v7, :cond_3

    const-string v5, "cmap"

    .line 979
    invoke-interface {v10, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v5, "glyf"

    .line 981
    invoke-interface {v10, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "head"

    .line 982
    invoke-interface {v10, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "hhea"

    .line 983
    invoke-interface {v10, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "hmtx"

    .line 984
    invoke-interface {v10, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "loca"

    .line 985
    invoke-interface {v10, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "maxp"

    .line 986
    invoke-interface {v10, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_4

    const-string p1, "name"

    .line 989
    invoke-interface {v10, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v9, :cond_5

    const-string p1, "post"

    .line 993
    invoke-interface {v10, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p1, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 997
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTableMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 999
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1000
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/fontbox/ttf/TTFTable;

    .line 1002
    invoke-interface {v10, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->keepTables:Ljava/util/List;

    if-eqz v4, :cond_7

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_7
    iget-object v4, p0, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 1004
    invoke-virtual {v4, v2}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTableBytes(Lcom/tom_roush/fontbox/ttf/TTFTable;)[B

    move-result-object v2

    invoke-interface {v10, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1009
    :cond_8
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeFileHeader(Ljava/io/DataOutputStream;I)J

    move-result-wide v2

    .line 1010
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result p1

    int-to-long v4, p1

    const-wide/16 v6, 0x10

    mul-long/2addr v4, v6

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    .line 1011
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-wide v8, v2

    move-wide v11, v4

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/util/Map$Entry;

    .line 1013
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [B

    move-object v2, p0

    move-object v3, v0

    move-wide v5, v11

    invoke-direct/range {v2 .. v7}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeTableHeader(Ljava/io/DataOutputStream;Ljava/lang/String;J[B)J

    move-result-wide v2

    add-long/2addr v8, v2

    .line 1014
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    add-long/2addr v11, v2

    goto :goto_1

    :cond_9
    const-wide v2, 0xffffffffL

    and-long/2addr v2, v8

    const-wide v4, 0xb1b0afbaL

    sub-long/2addr v4, v2

    const/16 p1, 0x18

    ushr-long v2, v4, p1

    long-to-int p1, v2

    int-to-byte p1, p1

    const/16 v2, 0x8

    .line 1019
    aput-byte p1, v1, v2

    const/16 p1, 0x10

    ushr-long v6, v4, p1

    long-to-int p1, v6

    int-to-byte p1, p1

    const/16 v3, 0x9

    .line 1020
    aput-byte p1, v1, v3

    ushr-long v2, v4, v2

    long-to-int p1, v2

    int-to-byte p1, p1

    const/16 v2, 0xa

    .line 1021
    aput-byte p1, v1, v2

    long-to-int p1, v4

    int-to-byte p1, p1

    const/16 v2, 0xb

    .line 1022
    aput-byte p1, v1, v2

    .line 1023
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1025
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeTableBody(Ljava/io/OutputStream;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1030
    :cond_a
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 1031
    throw p1
.end method
