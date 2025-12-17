.class public Lcom/tom_roush/fontbox/ttf/CmapSubtable;
.super Ljava/lang/Object;
.source "CmapSubtable.java"

# interfaces
.implements Lcom/tom_roush/fontbox/ttf/CmapLookup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;
    }
.end annotation


# static fields
.field private static final LEAD_OFFSET:J = 0xd7c0L

.field private static final SURROGATE_OFFSET:J = -0x35fdc00L


# instance fields
.field private characterCodeToGlyphId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private glyphIdToCharacterCode:[I

.field private final glyphIdToCharacterCodeMultiple:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private platformEncodingId:I

.field private platformId:I

.field private subTableOffset:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCodeMultiple:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    return-void
.end method

.method private buildGlyphIdToCharacterCodeLookup(I)V
    .locals 5

    add-int/lit8 p1, p1, 0x1

    .line 457
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->newGlyphIdToCharacterCode(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCode:[I

    iget-object p1, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    .line 458
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCode:[I

    .line 460
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCode:[I

    .line 463
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCodeMultiple:Ljava/util/Map;

    .line 468
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 471
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCodeMultiple:Ljava/util/Map;

    .line 472
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCode:[I

    .line 473
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCode:[I

    .line 475
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, -0x80000000

    aput v4, v2, v3

    .line 477
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getCharCode(I)I
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCode:[I

    if-eqz v0, :cond_1

    .line 666
    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 670
    :cond_0
    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method private newGlyphIdToCharacterCode(I)[I
    .locals 1

    .line 584
    new-array p1, p1, [I

    const/4 v0, -0x1

    .line 585
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p1
.end method


# virtual methods
.method public getCharCodes(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 683
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getCharCode(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCodeMultiple:Ljava/util/Map;

    .line 691
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 694
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 696
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    .line 701
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    const/4 p1, 0x1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 702
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v2
.end method

.method public getCharacterCode(I)Ljava/lang/Integer;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 646
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getCharCode(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCodeMultiple:Ljava/util/Map;

    .line 654
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 658
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 661
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getGlyphId(I)I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    .line 630
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 631
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getPlatformEncodingId()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->platformEncodingId:I

    return v0
.end method

.method public getPlatformId()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->platformId:I

    return v0
.end method

.method initData(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->platformId:I

    .line 56
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->platformEncodingId:I

    .line 57
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->subTableOffset:J

    return-void
.end method

.method initSubtable(Lcom/tom_roush/fontbox/ttf/CmapTable;ILcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/CmapTable;->getOffset()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->subTableOffset:J

    add-long/2addr v0, v2

    invoke-virtual {p3, v0, v1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    .line 71
    invoke-virtual {p3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p1

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    .line 76
    invoke-virtual {p3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 77
    invoke-virtual {p3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 83
    invoke-virtual {p3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    .line 84
    invoke-virtual {p3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    :goto_0
    if-eqz p1, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 117
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown cmap format:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 114
    :pswitch_0
    invoke-virtual {p0, p3, p2}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->processSubtype14(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V

    goto :goto_1

    .line 111
    :pswitch_1
    invoke-virtual {p0, p3, p2}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->processSubtype13(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V

    goto :goto_1

    .line 108
    :pswitch_2
    invoke-virtual {p0, p3, p2}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->processSubtype12(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V

    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {p0, p3, p2}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->processSubtype10(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V

    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {p0, p3, p2}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->processSubtype8(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V

    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {p0, p3, p2}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->processSubtype6(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V

    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {p0, p3, p2}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->processSubtype4(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V

    goto :goto_1

    .line 93
    :cond_5
    invoke-virtual {p0, p3, p2}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->processSubtype2(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V

    goto :goto_1

    .line 90
    :cond_6
    invoke-virtual {p0, p3}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->processSubtype0(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method processSubtype0(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x100

    .line 567
    invoke-virtual {p1, v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read(I)[B

    move-result-object p1

    .line 568
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->newGlyphIdToCharacterCode(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCode:[I

    .line 569
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    const/4 v0, 0x0

    .line 570
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 572
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCode:[I

    .line 573
    aput v0, v2, v1

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    .line 574
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method processSubtype10(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v0

    .line 214
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide p1

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p1, v2

    if-gtz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x10ffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    add-long v4, v0, p1

    cmp-long v2, v4, v2

    if-gtz v2, :cond_1

    const-wide/32 v2, 0xd800

    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0xdfff

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    :cond_0
    return-void

    .line 223
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid character codes, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "startCode: 0x%X, numChars: %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid number of Characters"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method processSubtype12(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v2

    .line 240
    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->newGlyphIdToCharacterCode(I)[I

    move-result-object v4

    iput-object v4, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCode:[I

    .line 241
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    const-string v4, "PdfBox-Android"

    if-nez v1, :cond_0

    const-string v1, "subtable has no glyphs"

    .line 244
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-wide v8, v5

    :goto_0
    cmp-long v10, v8, v2

    if-gez v10, :cond_9

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v10

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v12

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v14

    cmp-long v16, v10, v5

    const-string v5, "0x%X"

    const-string v6, "Invalid character code "

    if-ltz v16, :cond_8

    const-wide/32 v19, 0x10ffff

    cmp-long v16, v10, v19

    if-gtz v16, :cond_8

    const-wide/32 v21, 0xd800

    cmp-long v16, v10, v21

    const-wide/32 v23, 0xdfff

    if-ltz v16, :cond_1

    cmp-long v16, v10, v23

    if-lez v16, :cond_8

    :cond_1
    const-wide/16 v16, 0x0

    cmp-long v18, v12, v16

    if-lez v18, :cond_2

    cmp-long v18, v12, v10

    if-ltz v18, :cond_7

    :cond_2
    cmp-long v18, v12, v19

    if-gtz v18, :cond_7

    cmp-long v18, v12, v21

    if-ltz v18, :cond_3

    cmp-long v18, v12, v23

    if-lez v18, :cond_7

    :cond_3
    move-wide/from16 v5, v16

    :goto_1
    sub-long v21, v12, v10

    cmp-long v18, v5, v21

    const-wide/16 v21, 0x1

    move-wide/from16 v23, v2

    if-gtz v18, :cond_6

    add-long v2, v14, v5

    move-wide/from16 v25, v14

    int-to-long v14, v1

    cmp-long v14, v2, v14

    if-ltz v14, :cond_4

    const-string v2, "Format 12 cmap contains an invalid glyph index"

    .line 271
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    add-long v14, v10, v5

    cmp-long v18, v14, v19

    if-lez v18, :cond_5

    const-string v1, "Format 12 cmap contains character beyond UCS-4"

    .line 277
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    long-to-int v1, v2

    .line 280
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v2, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    long-to-int v3, v14

    .line 281
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-long v5, v5, v21

    move/from16 v1, p2

    move-wide/from16 v2, v23

    move-wide/from16 v14, v25

    goto :goto_1

    :cond_6
    :goto_2
    add-long v8, v8, v21

    move/from16 v1, p2

    move-wide/from16 v5, v16

    move-wide/from16 v2, v23

    goto/16 :goto_0

    .line 263
    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_8
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_9
    invoke-direct {v0, v7}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->buildGlyphIdToCharacterCodeLookup(I)V

    return-void
.end method

.method processSubtype13(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 296
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v2

    .line 297
    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->newGlyphIdToCharacterCode(I)[I

    move-result-object v4

    iput-object v4, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCode:[I

    .line 298
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    const-string v4, "PdfBox-Android"

    if-nez v1, :cond_0

    const-string v1, "subtable has no glyphs"

    .line 301
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v7, 0x0

    :goto_0
    cmp-long v9, v7, v2

    if-gez v9, :cond_a

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v9

    .line 307
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v11

    .line 308
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v13

    int-to-long v5, v1

    cmp-long v5, v13, v5

    if-lez v5, :cond_1

    const-string v1, "Format 13 cmap contains an invalid glyph index"

    .line 312
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v17, v9, v5

    const-string v5, "0x%X"

    const-string v6, "Invalid character code "

    if-ltz v17, :cond_9

    const-wide/32 v17, 0x10ffff

    cmp-long v19, v9, v17

    if-gtz v19, :cond_9

    const-wide/32 v19, 0xd800

    cmp-long v21, v9, v19

    const-wide/32 v22, 0xdfff

    if-ltz v21, :cond_2

    cmp-long v21, v9, v22

    if-lez v21, :cond_9

    :cond_2
    const-wide/16 v15, 0x0

    cmp-long v21, v11, v15

    if-lez v21, :cond_3

    cmp-long v21, v11, v9

    if-ltz v21, :cond_8

    :cond_3
    cmp-long v21, v11, v17

    if-gtz v21, :cond_8

    cmp-long v19, v11, v19

    if-ltz v19, :cond_4

    cmp-long v19, v11, v22

    if-lez v19, :cond_8

    :cond_4
    move-wide v5, v15

    :goto_1
    sub-long v19, v11, v9

    cmp-long v19, v5, v19

    const-wide/16 v20, 0x1

    if-gtz v19, :cond_7

    move-wide/from16 v22, v2

    add-long v1, v9, v5

    const-wide/32 v24, 0x7fffffff

    cmp-long v3, v1, v24

    if-gtz v3, :cond_6

    cmp-long v3, v1, v17

    if-lez v3, :cond_5

    const-string v3, "Format 13 cmap contains character beyond UCS-4"

    .line 336
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCode:[I

    long-to-int v15, v13

    long-to-int v1, v1

    .line 339
    aput v1, v3, v15

    iget-object v2, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    .line 340
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-long v5, v5, v20

    move/from16 v1, p2

    move-wide/from16 v2, v22

    const-wide/16 v15, 0x0

    goto :goto_1

    .line 331
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Character Code greater than Integer.MAX_VALUE"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-wide/from16 v22, v2

    add-long v7, v7, v20

    move/from16 v1, p2

    goto/16 :goto_0

    .line 324
    :cond_8
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_9
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_2
    return-void
.end method

.method processSubtype14(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "PdfBox-Android"

    const-string p2, "Format 14 cmap table is not supported and will be ignored"

    .line 356
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method processSubtype2(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/16 v2, 0x100

    new-array v3, v2, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    .line 496
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v7

    aput v7, v3, v5

    .line 497
    div-int/lit8 v7, v7, 0x8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v6, 0x1

    .line 501
    new-array v3, v2, [Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;

    const/4 v5, 0x0

    :goto_1
    if-gt v5, v6, :cond_1

    .line 504
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v8

    .line 505
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v9

    .line 506
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v10

    .line 507
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v7

    sub-int v11, v2, v5

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v11, v11, 0x8

    sub-int/2addr v7, v11

    add-int/lit8 v11, v7, -0x2

    .line 508
    new-instance v13, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;

    const/4 v12, 0x0

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;-><init>(IISILcom/tom_roush/fontbox/ttf/CmapSubtable$1;)V

    aput-object v13, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 510
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->getCurrentPosition()J

    move-result-wide v7

    .line 511
    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->newGlyphIdToCharacterCode(I)[I

    move-result-object v2

    iput-object v2, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCode:[I

    .line 512
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    const-string v2, "PdfBox-Android"

    if-nez v1, :cond_2

    const-string v1, "subtable has no glyphs"

    .line 515
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-gt v5, v6, :cond_6

    .line 520
    aget-object v9, v3, v5

    .line 521
    invoke-static {v9}, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;->access$100(Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;)I

    move-result v10

    .line 522
    invoke-static {v9}, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;->access$200(Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;)I

    move-result v11

    .line 523
    invoke-static {v9}, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;->access$300(Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;)S

    move-result v12

    .line 524
    invoke-static {v9}, Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;->access$400(Lcom/tom_roush/fontbox/ttf/CmapSubtable$SubHeader;)I

    move-result v9

    int-to-long v13, v11

    add-long/2addr v13, v7

    move-object/from16 v11, p1

    .line 525
    invoke-virtual {v11, v13, v14}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v9, :cond_5

    shl-int/lit8 v14, v5, 0x8

    add-int v15, v10, v13

    add-int/2addr v14, v15

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v15

    if-lez v15, :cond_3

    add-int/2addr v15, v12

    const/high16 v16, 0x10000

    .line 540
    rem-int v15, v15, v16

    if-gez v15, :cond_3

    add-int v15, v15, v16

    :cond_3
    if-lt v15, v1, :cond_4

    .line 549
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v17, v3

    const-string v3, "glyphId "

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for charcode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ignored, numGlyphs is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCode:[I

    .line 553
    aput v14, v3, v15

    iget-object v3, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    .line 554
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v17

    goto :goto_3

    :cond_5
    move-object/from16 v17, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method processSubtype4(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v2

    .line 396
    div-int/lit8 v2, v2, 0x2

    .line 397
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 398
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 400
    invoke-virtual {v1, v2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShortArray(I)[I

    move-result-object v3

    .line 401
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 402
    invoke-virtual {v1, v2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShortArray(I)[I

    move-result-object v4

    .line 403
    invoke-virtual {v1, v2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShortArray(I)[I

    move-result-object v5

    .line 404
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->getCurrentPosition()J

    move-result-wide v6

    .line 405
    invoke-virtual {v1, v2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShortArray(I)[I

    move-result-object v8

    .line 407
    new-instance v9, Ljava/util/HashMap;

    move/from16 v10, p2

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    iput-object v9, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v9, v2, :cond_3

    .line 412
    aget v11, v4, v9

    .line 413
    aget v12, v3, v9

    .line 414
    aget v13, v5, v9

    .line 415
    aget v14, v8, v9

    move v15, v2

    move-object/from16 v16, v3

    int-to-long v2, v9

    const-wide/16 v17, 0x2

    mul-long v2, v2, v17

    add-long/2addr v2, v6

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    int-to-long v4, v14

    add-long/2addr v2, v4

    const v4, 0xffff

    if-eq v11, v4, :cond_2

    if-eq v12, v4, :cond_2

    move v5, v11

    :goto_1
    if-gt v5, v12, :cond_2

    if-nez v14, :cond_0

    add-int v21, v5, v13

    move-wide/from16 v22, v6

    and-int v6, v21, v4

    .line 424
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v10, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    .line 425
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v10, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move v10, v7

    goto :goto_3

    :cond_0
    move-wide/from16 v22, v6

    sub-int v4, v5, v11

    int-to-long v6, v4

    mul-long v6, v6, v17

    add-long/2addr v6, v2

    .line 430
    invoke-virtual {v1, v6, v7}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    .line 431
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v4

    if-eqz v4, :cond_1

    add-int/2addr v4, v13

    const v6, 0xffff

    and-int/2addr v4, v6

    .line 435
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v10, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    .line 436
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v10, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v6, v22

    const v4, 0xffff

    goto :goto_1

    :cond_2
    move-wide/from16 v22, v6

    add-int/lit8 v9, v9, 0x1

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-wide/from16 v6, v22

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    .line 447
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "PdfBox-Android"

    const-string v2, "cmap format 4 subtable is empty"

    .line 449
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 452
    :cond_4
    invoke-direct {v0, v10}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->buildGlyphIdToCharacterCodeLookup(I)V

    return-void
.end method

.method processSubtype6(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    .line 369
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 375
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    .line 376
    invoke-virtual {p1, v1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShortArray(I)[I

    move-result-object p1

    const/4 p2, 0x0

    move v2, p2

    :goto_0
    if-ge p2, v1, :cond_1

    .line 380
    aget v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    add-int v4, v0, p2

    .line 381
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, p1, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 383
    :cond_1
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->buildGlyphIdToCharacterCodeLookup(I)V

    return-void
.end method

.method processSubtype8(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/16 v2, 0x2000

    move-object/from16 v3, p1

    .line 131
    invoke-virtual {v3, v2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedByteArray(I)[I

    move-result-object v2

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v4

    const-wide/32 v6, 0x10000

    cmp-long v6, v4, v6

    if-gtz v6, :cond_9

    .line 140
    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->newGlyphIdToCharacterCode(I)[I

    move-result-object v6

    iput-object v6, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCode:[I

    .line 141
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    if-nez v1, :cond_0

    const-string v1, "PdfBox-Android"

    const-string v2, "subtable has no glyphs"

    .line 144
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-gez v10, :cond_8

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v10

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v12

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v14

    cmp-long v16, v10, v12

    if-gtz v16, :cond_7

    cmp-long v16, v6, v10

    if-gtz v16, :cond_7

    move-wide v6, v10

    :goto_1
    cmp-long v17, v6, v12

    const-wide/16 v18, 0x1

    if-gtz v17, :cond_6

    const-wide/32 v20, 0x7fffffff

    cmp-long v17, v6, v20

    const-string v3, "[Sub Format 8] Invalid character code "

    if-gtz v17, :cond_5

    move-wide/from16 v22, v4

    long-to-int v4, v6

    .line 167
    div-int/lit8 v5, v4, 0x8

    move-wide/from16 v24, v12

    array-length v12, v2

    if-ge v5, v12, :cond_4

    .line 173
    aget v5, v2, v5

    const/4 v12, 0x1

    rem-int/lit8 v13, v4, 0x8

    shl-int/2addr v12, v13

    and-int/2addr v5, v12

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    const-wide/32 v4, 0xd7c0

    const/16 v12, 0xa

    shr-long v26, v6, v12

    add-long v26, v26, v4

    const-wide/16 v4, 0x3ff

    and-long/2addr v4, v6

    const-wide/32 v28, 0xdc00

    add-long v4, v4, v28

    shl-long v12, v26, v12

    add-long/2addr v12, v4

    const-wide/32 v4, -0x35fdc00

    add-long/2addr v12, v4

    cmp-long v4, v12, v20

    if-gtz v4, :cond_3

    long-to-int v4, v12

    :goto_2
    sub-long v12, v6, v10

    add-long/2addr v12, v14

    move-object v5, v2

    int-to-long v2, v1

    cmp-long v2, v12, v2

    if-gtz v2, :cond_2

    cmp-long v2, v12, v20

    if-gtz v2, :cond_2

    iget-object v2, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->glyphIdToCharacterCode:[I

    long-to-int v3, v12

    .line 198
    aput v4, v2, v3

    iget-object v2, v0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->characterCodeToGlyphId:Ljava/util/Map;

    .line 199
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-long v6, v6, v18

    move-object/from16 v3, p1

    move-object v2, v5

    move-wide/from16 v4, v22

    move-wide/from16 v12, v24

    goto :goto_1

    .line 195
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "CMap contains an invalid glyph index"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-wide/from16 v22, v4

    move-object v5, v2

    add-long v8, v8, v18

    move-object/from16 v3, p1

    move-wide/from16 v4, v22

    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 157
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Range invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    return-void

    .line 137
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "CMap ( Subtype8 ) is invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPlatformEncodingId(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->platformEncodingId:I

    return-void
.end method

.method public setPlatformId(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->platformId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getPlatformId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getPlatformEncodingId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
