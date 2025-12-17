.class public Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;
.super Ljava/lang/Object;
.source "PDFXRefStream.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdfparser/PDFXRef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$FreeReference;,
        Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$NormalReference;,
        Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$ObjectStreamReference;
    }
.end annotation


# static fields
.field private static final ENTRY_FREE:I = 0x0

.field private static final ENTRY_NORMAL:I = 0x1

.field private static final ENTRY_OBJSTREAM:I = 0x2


# instance fields
.field private final objectNumbers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private size:J

.field private final stream:Lcom/tom_roush/pdfbox/cos/COSStream;

.field private final streamData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->size:J

    .line 67
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 68
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->streamData:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->objectNumbers:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDocument;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->size:J

    .line 79
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 80
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->streamData:Ljava/util/Map;

    .line 81
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->objectNumbers:Ljava/util/Set;

    return-void
.end method

.method private getIndexEntry()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 250
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    const-wide/16 v2, 0x0

    .line 252
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->objectNumbers:Ljava/util/Set;

    .line 253
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 254
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    const-wide/16 v5, 0x1

    if-nez v2, :cond_1

    .line 259
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v2, v4

    .line 261
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 263
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 265
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 267
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v3, v2

    move-object v2, v4

    goto :goto_0

    .line 273
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getWEntry()[I
    .locals 12

    const/4 v0, 0x3

    new-array v1, v0, [J

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->streamData:Ljava/util/Map;

    .line 193
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 195
    instance-of v8, v3, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$FreeReference;

    const/4 v9, 0x2

    if-eqz v8, :cond_0

    .line 197
    check-cast v3, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$FreeReference;

    aget-wide v10, v1, v6

    .line 198
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    aput-wide v4, v1, v6

    aget-wide v4, v1, v7

    .line 199
    iget-wide v10, v3, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$FreeReference;->nextFree:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    aput-wide v4, v1, v7

    aget-wide v4, v1, v9

    .line 200
    iget v3, v3, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$FreeReference;->nextGenNumber:I

    int-to-long v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    aput-wide v3, v1, v9

    goto :goto_0

    .line 202
    :cond_0
    instance-of v4, v3, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$NormalReference;

    if-eqz v4, :cond_1

    .line 204
    check-cast v3, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$NormalReference;

    aget-wide v4, v1, v6

    const-wide/16 v10, 0x1

    .line 205
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    aput-wide v4, v1, v6

    aget-wide v4, v1, v7

    .line 206
    iget-wide v10, v3, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$NormalReference;->offset:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    aput-wide v4, v1, v7

    aget-wide v4, v1, v9

    .line 207
    iget v3, v3, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$NormalReference;->genNumber:I

    int-to-long v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    aput-wide v3, v1, v9

    goto :goto_0

    .line 209
    :cond_1
    instance-of v4, v3, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$ObjectStreamReference;

    if-eqz v4, :cond_2

    .line 211
    check-cast v3, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$ObjectStreamReference;

    aget-wide v4, v1, v6

    const-wide/16 v10, 0x2

    .line 212
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    aput-wide v4, v1, v6

    aget-wide v4, v1, v7

    .line 213
    iget-wide v10, v3, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$ObjectStreamReference;->offset:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    aput-wide v4, v1, v7

    aget-wide v4, v1, v9

    .line 214
    iget-wide v6, v3, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$ObjectStreamReference;->objectNumberOfObjectStream:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    aput-wide v3, v1, v9

    goto :goto_0

    .line 219
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpected reference type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-array v2, v0, [I

    :goto_1
    if-ge v6, v0, :cond_5

    .line 226
    :goto_2
    aget-wide v8, v1, v6

    cmp-long v3, v8, v4

    if-lez v3, :cond_4

    .line 228
    aget v3, v2, v6

    add-int/2addr v3, v7

    aput v3, v2, v6

    const/16 v3, 0x8

    shr-long/2addr v8, v3

    .line 229
    aput-wide v8, v1, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    return-object v2
.end method

.method private writeNumber(Ljava/io/OutputStream;JI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    new-array v0, p4, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p4, :cond_0

    const-wide/16 v3, 0xff

    and-long/2addr v3, p2

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 284
    aput-byte v3, v0, v2

    const/16 v3, 0x8

    shr-long/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p4, :cond_1

    sub-int p2, p4, v1

    add-int/lit8 p2, p2, -0x1

    .line 290
    aget-byte p2, v0, p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private writeStreamData(Ljava/io/OutputStream;[I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 297
    aget v1, p2, v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->writeNumber(Ljava/io/OutputStream;JI)V

    const/4 v1, 0x1

    .line 298
    aget v4, p2, v1

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->writeNumber(Ljava/io/OutputStream;JI)V

    const/4 v4, 0x2

    .line 299
    aget v5, p2, v4

    const-wide/32 v6, 0xffff

    invoke-direct {p0, p1, v6, v7, v5}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->writeNumber(Ljava/io/OutputStream;JI)V

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->streamData:Ljava/util/Map;

    .line 301
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 303
    instance-of v7, v6, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$FreeReference;

    if-eqz v7, :cond_0

    .line 305
    check-cast v6, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$FreeReference;

    .line 306
    aget v7, p2, v0

    invoke-direct {p0, p1, v2, v3, v7}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 307
    iget-wide v7, v6, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$FreeReference;->nextFree:J

    aget v9, p2, v1

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 308
    iget v6, v6, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$FreeReference;->nextGenNumber:I

    int-to-long v6, v6

    aget v8, p2, v4

    invoke-direct {p0, p1, v6, v7, v8}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->writeNumber(Ljava/io/OutputStream;JI)V

    goto :goto_0

    .line 310
    :cond_0
    instance-of v7, v6, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$NormalReference;

    if-eqz v7, :cond_1

    .line 312
    check-cast v6, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$NormalReference;

    const-wide/16 v7, 0x1

    .line 313
    aget v9, p2, v0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 314
    iget-wide v7, v6, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$NormalReference;->offset:J

    aget v9, p2, v1

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 315
    iget v6, v6, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$NormalReference;->genNumber:I

    int-to-long v6, v6

    aget v8, p2, v4

    invoke-direct {p0, p1, v6, v7, v8}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->writeNumber(Ljava/io/OutputStream;JI)V

    goto :goto_0

    .line 317
    :cond_1
    instance-of v7, v6, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$ObjectStreamReference;

    if-eqz v7, :cond_2

    .line 319
    check-cast v6, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$ObjectStreamReference;

    const-wide/16 v7, 0x2

    .line 320
    aget v9, p2, v0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 321
    iget-wide v7, v6, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$ObjectStreamReference;->offset:J

    aget v9, p2, v1

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 322
    iget-wide v6, v6, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$ObjectStreamReference;->objectNumberOfObjectStream:J

    aget v8, p2, v4

    invoke-direct {p0, p1, v6, v7, v8}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->writeNumber(Ljava/io/OutputStream;JI)V

    goto :goto_0

    .line 327
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unexpected reference type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;)V
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->objectNumbers:Ljava/util/Set;

    .line 165
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->getKey()Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->isFree()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$FreeReference;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$FreeReference;-><init>()V

    .line 170
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->getKey()Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v1

    iput v1, v0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$FreeReference;->nextGenNumber:I

    .line 171
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->getKey()Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$FreeReference;->nextFree:J

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->streamData:Ljava/util/Map;

    .line 172
    iget-wide v1, v0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$FreeReference;->nextFree:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$NormalReference;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$NormalReference;-><init>()V

    .line 179
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->getKey()Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v1

    iput v1, v0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$NormalReference;->genNumber:I

    .line 180
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->getOffset()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream$NormalReference;->offset:J

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->streamData:Ljava/util/Map;

    .line 181
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->getKey()Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public addTrailerInfo(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 3

    .line 146
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 147
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 150
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ROOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ENCRYPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ID:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 151
    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->PREV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBase;

    invoke-virtual {v2, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getObject(I)Lcom/tom_roush/pdfbox/cos/COSObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getStream()Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 91
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->XREF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->size:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 96
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SIZE:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->size:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSStream;->setLong(Lcom/tom_roush/pdfbox/cos/COSName;J)V

    .line 98
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->getIndexEntry()Ljava/util/List;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 102
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 104
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->INDEX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 106
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->getWEntry()[I

    move-result-object v0

    .line 107
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 108
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    int-to-long v4, v4

    .line 110
    invoke-static {v4, v5}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 112
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->W:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 114
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->createOutputStream(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/io/OutputStream;

    move-result-object v1

    .line 115
    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->writeStreamData(Ljava/io/OutputStream;[I)V

    .line 116
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 117
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 119
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 124
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ROOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->PREV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 129
    :cond_3
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ENCRYPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 133
    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    const/4 v2, 0x1

    .line 134
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSBase;->setDirect(Z)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    return-object v0

    .line 94
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size is not set in xrefstream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->size:J

    return-void
.end method
