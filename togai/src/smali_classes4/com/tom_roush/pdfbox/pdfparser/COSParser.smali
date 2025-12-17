.class public Lcom/tom_roush/pdfbox/pdfparser/COSParser;
.super Lcom/tom_roush/pdfbox/pdfparser/BaseParser;
.source "COSParser.java"


# static fields
.field private static final DEFAULT_TRAIL_BYTECOUNT:I = 0x800

.field private static final ENDOBJ:[B

.field private static final ENDSTREAM:[B

.field protected static final EOF_MARKER:[C

.field private static final FDF_DEFAULT_VERSION:Ljava/lang/String; = "1.0"

.field private static final FDF_HEADER:Ljava/lang/String; = "%FDF-"

.field private static final MINIMUM_SEARCH_OFFSET:J = 0x6L

.field protected static final OBJ_MARKER:[C

.field private static final OBJ_STREAM:[C

.field private static final PDF_DEFAULT_VERSION:Ljava/lang/String; = "1.4"

.field private static final PDF_HEADER:Ljava/lang/String; = "%PDF-"

.field private static final STARTXREF:[C

.field private static final STREAMCOPYBUFLEN:I = 0x2000

.field private static final STRMBUFLEN:I = 0x800

.field public static final SYSPROP_EOFLOOKUPRANGE:Ljava/lang/String; = "com.tom_roush.pdfbox.pdfparser.nonSequentialPDFParser.eofLookupRange"

.field public static final SYSPROP_PARSEMINIMAL:Ljava/lang/String; = "com.tom_roush.pdfbox.pdfparser.nonSequentialPDFParser.parseMinimal"

.field public static final TMP_FILE_PREFIX:Ljava/lang/String; = "tmpPDF"

.field private static final TRAILER_MARKER:[C

.field private static final X:I = 0x78

.field private static final XREF_STREAM:[C

.field private static final XREF_TABLE:[C


# instance fields
.field private accessPermission:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

.field private bfSearchCOSObjectKeyOffsets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObjectKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private bfSearchXRefStreamsOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private bfSearchXRefTablesOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private encryption:Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

.field protected fileLen:J

.field protected initialParseDone:Z

.field private isLenient:Z

.field private keyAlias:Ljava/lang/String;

.field private keyStoreInputStream:Ljava/io/InputStream;

.field private lastEOFMarker:Ljava/lang/Long;

.field private password:Ljava/lang/String;

.field private readTrailBytes:I

.field protected securityHandler:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

.field protected final source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

.field private final streamCopyBuf:[B

.field private final strmBuf:[B

.field private trailerOffset:J

.field private trailerWasRebuild:Z

.field protected xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->XREF_TABLE:[C

    const/4 v0, 0x5

    new-array v1, v0, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->XREF_STREAM:[C

    const/16 v1, 0x9

    new-array v2, v1, [C

    fill-array-data v2, :array_2

    sput-object v2, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->STARTXREF:[C

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    sput-object v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->ENDSTREAM:[B

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    sput-object v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->ENDOBJ:[B

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    sput-object v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->EOF_MARKER:[C

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_6

    sput-object v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->OBJ_MARKER:[C

    const/4 v0, 0x7

    new-array v1, v0, [C

    fill-array-data v1, :array_7

    sput-object v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->TRAILER_MARKER:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_8

    sput-object v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->OBJ_STREAM:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x78s
        0x72s
        0x65s
        0x66s
    .end array-data

    :array_1
    .array-data 2
        0x2fs
        0x58s
        0x52s
        0x65s
        0x66s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x73s
        0x74s
        0x61s
        0x72s
        0x74s
        0x78s
        0x72s
        0x65s
        0x66s
    .end array-data

    nop

    :array_3
    .array-data 1
        0x65t
        0x6et
        0x64t
        0x73t
        0x74t
        0x72t
        0x65t
        0x61t
        0x6dt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x65t
        0x6et
        0x64t
        0x6ft
        0x62t
        0x6at
    .end array-data

    nop

    :array_5
    .array-data 2
        0x25s
        0x25s
        0x45s
        0x4fs
        0x46s
    .end array-data

    nop

    :array_6
    .array-data 2
        0x6fs
        0x62s
        0x6as
    .end array-data

    nop

    :array_7
    .array-data 2
        0x74s
        0x72s
        0x61s
        0x69s
        0x6cs
        0x65s
        0x72s
    .end array-data

    nop

    :array_8
    .array-data 2
        0x2fs
        0x4fs
        0x62s
        0x6as
        0x53s
        0x74s
        0x6ds
    .end array-data
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V
    .locals 3

    .line 191
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;-><init>(Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;)V

    const/16 v0, 0x800

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->strmBuf:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->keyStoreInputStream:Ljava/io/InputStream;

    const-string v2, ""

    iput-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->password:Ljava/lang/String;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->keyAlias:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->initialParseDone:Z

    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->trailerWasRebuild:Z

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->lastEOFMarker:Ljava/lang/Long;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchXRefTablesOffsets:Ljava/util/List;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchXRefStreamsOffsets:Ljava/util/List;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->encryption:Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->securityHandler:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    iput v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readTrailBytes:I

    .line 176
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->streamCopyBuf:[B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3

    .line 207
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/BaseParser;-><init>(Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;)V

    const/16 v0, 0x800

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->strmBuf:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->keyStoreInputStream:Ljava/io/InputStream;

    const-string v2, ""

    iput-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->password:Ljava/lang/String;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->keyAlias:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->initialParseDone:Z

    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->trailerWasRebuild:Z

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->lastEOFMarker:Ljava/lang/Long;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchXRefTablesOffsets:Ljava/util/List;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchXRefStreamsOffsets:Ljava/util/List;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->encryption:Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->securityHandler:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    iput v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readTrailBytes:I

    .line 176
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->streamCopyBuf:[B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->password:Ljava/lang/String;

    iput-object p4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->keyAlias:Ljava/lang/String;

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->keyStoreInputStream:Ljava/io/InputStream;

    return-void
.end method

.method private addExcludedToList([Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 775
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 777
    invoke-virtual {p2, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 778
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v3, :cond_0

    .line 780
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->getObjectId(Lcom/tom_roush/pdfbox/cos/COSObject;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addNewToList(Ljava/util/Queue;Lcom/tom_roush/pdfbox/cos/COSBase;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 602
    instance-of v0, p2, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v0, :cond_1

    .line 604
    move-object v0, p2

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->getObjectId(Lcom/tom_roush/pdfbox/cos/COSObject;)J

    move-result-wide v0

    .line 605
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 609
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 611
    :cond_1
    instance-of p3, p2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez p3, :cond_2

    instance-of p3, p2, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz p3, :cond_3

    .line 613
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private addNewToList(Ljava/util/Queue;Ljava/util/Collection;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 587
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 589
    invoke-direct {p0, p1, v0, p3}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->addNewToList(Ljava/util/Queue;Lcom/tom_roush/pdfbox/cos/COSBase;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bfSearchForLastEOFMarker()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->lastEOFMarker:Ljava/lang/Long;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1902
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const-wide/16 v3, 0x6

    .line 1903
    invoke-interface {v2, v3, v4}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    :goto_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1904
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->isEOF()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->EOF_MARKER:[C

    .line 1907
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isString([C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1909
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const-wide/16 v5, 0x5

    add-long/2addr v5, v2

    .line 1910
    invoke-interface {v4, v5, v6}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 1916
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipSpaces()V

    sget-object v4, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->XREF_TABLE:[C

    .line 1917
    invoke-direct {p0, v4}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isString([C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1919
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readObjectNumber()J

    .line 1920
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readGenerationNumber()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1926
    :catch_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->lastEOFMarker:Ljava/lang/Long;

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1929
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read()I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1931
    invoke-interface {v2, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->lastEOFMarker:Ljava/lang/Long;

    if-nez v0, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    .line 1935
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->lastEOFMarker:Ljava/lang/Long;

    :cond_2
    return-void
.end method

.method private bfSearchForObjStreams()V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, " 0 at offset "

    const-string v2, "Skipped corrupt stream: ("

    .line 1947
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1948
    invoke-interface {v4}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v4

    iget-object v6, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const-wide/16 v7, 0x6

    .line 1949
    invoke-interface {v6, v7, v8}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    const-string v6, " obj"

    .line 1950
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    :goto_0
    iget-object v9, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1951
    invoke-interface {v9}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->isEOF()Z

    move-result v9

    const-wide/16 v10, 0x0

    const-string v12, "PdfBox-Android"

    const/4 v14, 0x1

    if-nez v9, :cond_7

    sget-object v9, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->OBJ_STREAM:[C

    .line 1954
    invoke-direct {v1, v9}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isString([C)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1956
    invoke-interface {v9}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v15

    const-wide/16 v17, -0x1

    move v9, v14

    const/16 v19, 0x0

    :goto_1
    const/16 v13, 0x28

    if-ge v9, v13, :cond_5

    if-nez v19, :cond_5

    mul-int/lit8 v13, v9, 0xa

    int-to-long v7, v13

    sub-long v7, v15, v7

    cmp-long v13, v7, v10

    if-lez v13, :cond_4

    iget-object v13, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1965
    invoke-interface {v13, v7, v8}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    const/4 v13, 0x0

    :goto_2
    const/16 v10, 0xa

    if-ge v13, v10, :cond_4

    .line 1968
    invoke-direct {v1, v6}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isString([C)Z

    move-result v10

    const-wide/16 v25, 0x1

    if-eqz v10, :cond_3

    sub-long v10, v7, v25

    iget-object v13, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1971
    invoke-interface {v13, v10, v11}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    iget-object v10, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1972
    invoke-interface {v10}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->peek()I

    move-result v10

    .line 1974
    invoke-static {v10}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isDigit(I)Z

    move-result v10

    if-eqz v10, :cond_1

    const-wide/16 v10, 0x2

    sub-long v10, v7, v10

    iget-object v13, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1977
    invoke-interface {v13, v10, v11}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 1978
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isSpace()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const-wide/16 v27, 0x3

    sub-long v7, v7, v27

    .line 1981
    invoke-interface {v10, v7, v8}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    const/4 v10, 0x0

    const-wide/16 v21, 0x6

    :goto_3
    cmp-long v11, v7, v21

    if-lez v11, :cond_0

    .line 1982
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isDigit()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    sub-long v7, v7, v25

    .line 1984
    invoke-interface {v11, v7, v8}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_0
    if-lez v10, :cond_2

    iget-object v7, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1989
    invoke-interface {v7}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read()I

    iget-object v7, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1990
    invoke-interface {v7}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v17

    .line 1991
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readObjectNumber()J

    move-result-wide v7

    .line 1992
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readGenerationNumber()I

    move-result v10

    .line 1993
    new-instance v11, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-direct {v11, v7, v8, v10}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    .line 1995
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_1
    const-wide/16 v21, 0x6

    :cond_2
    :goto_4
    move-wide/from16 v7, v17

    .line 2000
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Dictionary start for object stream -> "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v17, v7

    move/from16 v19, v14

    goto :goto_5

    :cond_3
    const-wide/16 v21, 0x6

    add-long v7, v7, v25

    iget-object v10, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2007
    invoke-interface {v10}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read()I

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    :cond_4
    const-wide/16 v21, 0x6

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v7, v21

    const-wide/16 v10, 0x0

    goto/16 :goto_1

    :cond_5
    move-wide/from16 v21, v7

    iget-object v7, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    sget-object v8, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->OBJ_STREAM:[C

    .line 2012
    array-length v8, v8

    int-to-long v8, v8

    add-long/2addr v8, v15

    invoke-interface {v7, v8, v9}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    goto :goto_6

    :cond_6
    move-wide/from16 v21, v7

    :goto_6
    iget-object v7, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2014
    invoke-interface {v7}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read()I

    move-wide/from16 v7, v21

    goto/16 :goto_0

    .line 2017
    :cond_7
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    iget-object v8, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    .line 2019
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-nez v8, :cond_8

    .line 2023
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Skipped incomplete object stream:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2028
    :cond_8
    invoke-virtual {v7, v8}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v8, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2030
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface {v8, v9, v10}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 2031
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readObjectNumber()J

    move-result-wide v8

    .line 2032
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readGenerationNumber()I

    move-result v10

    sget-object v11, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->OBJ_MARKER:[C

    .line 2033
    invoke-virtual {v1, v11, v14}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readExpectedString([CZ)V

    .line 2039
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseCOSDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v13

    .line 2040
    sget-object v15, Lcom/tom_roush/pdfbox/cos/COSName;->FIRST:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v13, v15}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v15

    .line 2041
    sget-object v11, Lcom/tom_roush/pdfbox/cos/COSName;->N:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v13, v11}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v11

    const/4 v14, -0x1

    if-eq v15, v14, :cond_13

    if-ne v11, v14, :cond_9

    goto/16 :goto_d

    .line 2047
    :cond_9
    invoke-virtual {v1, v13}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseCOSStream(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v14, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->securityHandler:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_a

    move-object v15, v3

    move-wide/from16 v18, v4

    int-to-long v3, v10

    move-object/from16 v25, v14

    move-object/from16 v26, v13

    move-wide/from16 v27, v8

    move-wide/from16 v29, v3

    .line 2050
    :try_start_2
    invoke-virtual/range {v25 .. v30}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->decryptStream(Lcom/tom_roush/pdfbox/cos/COSStream;JJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :catch_0
    move-object v11, v13

    move-object/from16 v24, v15

    const/4 v5, 0x0

    const-wide/16 v20, 0x0

    goto/16 :goto_f

    :cond_a
    move-object v15, v3

    move-wide/from16 v18, v4

    .line 2052
    :goto_8
    :try_start_3
    new-instance v3, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;

    iget-object v4, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-direct {v3, v13, v4}, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/cos/COSDocument;)V

    .line 2053
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v11, :cond_b

    .line 2056
    :try_start_4
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->readObjectNumber()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2057
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->readLong()J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_b
    if-eqz v13, :cond_c

    .line 2069
    invoke-virtual {v13}, Lcom/tom_roush/pdfbox/cos/COSStream;->close()V

    .line 2072
    :cond_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v11, :cond_d

    .line 2074
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v15

    move-wide/from16 v4, v18

    goto/16 :goto_12

    :cond_d
    iget-object v3, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 2077
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->getXrefTable()Ljava/util/Map;

    move-result-object v3

    .line 2078
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 2080
    new-instance v10, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/4 v5, 0x0

    invoke-direct {v10, v13, v14, v5}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    iget-object v11, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    .line 2081
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-eqz v11, :cond_f

    .line 2082
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v20, 0x0

    cmp-long v13, v13, v20

    if-gez v13, :cond_e

    .line 2085
    new-instance v13, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v24, v15

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    invoke-direct {v13, v14, v15, v5}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    iget-object v11, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    .line 2086
    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    goto :goto_b

    :cond_e
    move-object/from16 v24, v15

    goto :goto_b

    :cond_f
    move-object/from16 v24, v15

    const-wide/16 v20, 0x0

    :goto_b
    if-eqz v11, :cond_10

    .line 2088
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v11, v13, v15

    if-lez v11, :cond_11

    :cond_10
    iget-object v11, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    neg-long v13, v8

    .line 2090
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v11, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    move-object/from16 v15, v24

    goto :goto_a

    :cond_12
    move-object/from16 v24, v15

    goto :goto_e

    :catch_1
    move-object/from16 v24, v15

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v11, v13

    goto :goto_10

    :catch_2
    move-object/from16 v24, v3

    move-wide/from16 v18, v4

    :goto_c
    const/4 v5, 0x0

    const-wide/16 v20, 0x0

    move-object v11, v13

    goto :goto_f

    :cond_13
    :goto_d
    move-object/from16 v24, v3

    move-wide/from16 v18, v4

    :goto_e
    const/4 v5, 0x0

    const-wide/16 v20, 0x0

    goto :goto_11

    :catchall_1
    move-exception v0

    const/4 v11, 0x0

    goto :goto_10

    :catch_3
    move-object/from16 v24, v3

    move-wide/from16 v18, v4

    const/4 v5, 0x0

    const-wide/16 v20, 0x0

    const/4 v11, 0x0

    .line 2062
    :goto_f
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v11, :cond_16

    .line 2069
    invoke-virtual {v11}, Lcom/tom_roush/pdfbox/cos/COSStream;->close()V

    goto :goto_11

    :catchall_2
    move-exception v0

    :goto_10
    if-eqz v11, :cond_14

    invoke-virtual {v11}, Lcom/tom_roush/pdfbox/cos/COSStream;->close()V

    .line 2071
    :cond_14
    throw v0

    :cond_15
    move-object/from16 v24, v3

    move-wide/from16 v18, v4

    goto :goto_e

    :cond_16
    :goto_11
    move-wide/from16 v4, v18

    move-object/from16 v3, v24

    :goto_12
    const/4 v14, 0x1

    goto/16 :goto_7

    :cond_17
    move-wide/from16 v18, v4

    iget-object v0, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    move-wide/from16 v2, v18

    .line 2096
    invoke-interface {v0, v2, v3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    return-void
.end method

.method private bfSearchForObjects()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    if-nez v1, :cond_c

    .line 1639
    invoke-direct/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchForLastEOFMarker()V

    .line 1640
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1641
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v1

    const-string v3, "ndo"

    .line 1646
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const-string v4, "bj"

    .line 1647
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const-wide/high16 v5, -0x8000000000000000L

    const/high16 v10, -0x80000000

    move v12, v10

    const-wide/16 v13, 0x6

    const/4 v15, 0x0

    move-wide v10, v5

    :cond_0
    iget-object v7, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1651
    invoke-interface {v7, v13, v14}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    iget-object v7, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1652
    invoke-interface {v7}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read()I

    move-result v7

    const-wide/16 v16, 0x1

    add-long v18, v13, v16

    .line 1654
    invoke-virtual {v0, v7}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isWhitespace(I)Z

    move-result v20

    const-wide/16 v21, 0x0

    const/16 v23, 0x1

    if-eqz v20, :cond_5

    sget-object v8, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->OBJ_MARKER:[C

    invoke-direct {v0, v8}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isString([C)Z

    move-result v8

    if-eqz v8, :cond_5

    const-wide/16 v7, -0x1

    add-long/2addr v7, v13

    iget-object v9, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1657
    invoke-interface {v9, v7, v8}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    iget-object v7, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1658
    invoke-interface {v7}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->peek()I

    move-result v7

    .line 1660
    invoke-static {v7}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isDigit(I)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v7, v7, -0x30

    const-wide/16 v8, -0x2

    add-long/2addr v13, v8

    iget-object v8, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1664
    invoke-interface {v8, v13, v14}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 1665
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isWhitespace()Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_0
    const-wide/16 v8, 0x6

    cmp-long v20, v13, v8

    if-lez v20, :cond_1

    .line 1667
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isWhitespace()Z

    move-result v20

    if-eqz v20, :cond_1

    iget-object v8, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    sub-long v13, v13, v16

    .line 1669
    invoke-interface {v8, v13, v14}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    const-wide/16 v24, 0x6

    :goto_1
    cmp-long v9, v13, v24

    if-lez v9, :cond_2

    .line 1672
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isDigit()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v8, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    sub-long v13, v13, v16

    .line 1674
    invoke-interface {v8, v13, v14}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    move/from16 v8, v23

    goto :goto_1

    :cond_2
    if-eqz v8, :cond_8

    iget-object v8, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1679
    invoke-interface {v8}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read()I

    .line 1680
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readObjectNumber()J

    move-result-wide v8

    cmp-long v15, v10, v21

    if-lez v15, :cond_3

    iget-object v15, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    move/from16 v20, v7

    .line 1684
    new-instance v7, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-direct {v7, v5, v6, v12}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    .line 1686
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1685
    invoke-interface {v15, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move/from16 v20, v7

    :goto_2
    add-long v10, v13, v16

    sget-object v5, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->OBJ_MARKER:[C

    .line 1691
    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    int-to-long v5, v5

    add-long v18, v18, v5

    move-wide v5, v8

    move/from16 v12, v20

    const/4 v15, 0x0

    goto :goto_4

    :cond_4
    const-wide/16 v24, 0x6

    goto :goto_4

    :cond_5
    const-wide/16 v24, 0x6

    const/16 v8, 0x65

    if-ne v7, v8, :cond_8

    .line 1700
    invoke-direct {v0, v3}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isString([C)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1702
    array-length v7, v3

    int-to-long v7, v7

    add-long v7, v18, v7

    iget-object v9, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1703
    invoke-interface {v9, v7, v8}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    iget-object v9, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1704
    invoke-interface {v9}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->isEOF()Z

    move-result v9

    if-eqz v9, :cond_6

    :goto_3
    move-wide v13, v7

    move/from16 v15, v23

    goto :goto_5

    .line 1709
    :cond_6
    invoke-direct {v0, v4}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isString([C)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1711
    array-length v9, v4

    int-to-long v13, v9

    add-long/2addr v7, v13

    goto :goto_3

    :cond_7
    move-wide v13, v7

    goto :goto_5

    :cond_8
    :goto_4
    move-wide/from16 v13, v18

    :goto_5
    iget-object v7, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->lastEOFMarker:Ljava/lang/Long;

    .line 1717
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v13, v7

    if-gez v7, :cond_9

    iget-object v7, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    invoke-interface {v7}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->isEOF()Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_9
    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->lastEOFMarker:Ljava/lang/Long;

    .line 1718
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v3, v3, v7

    if-ltz v3, :cond_a

    if-eqz v15, :cond_b

    :cond_a
    cmp-long v3, v10, v21

    if-lez v3, :cond_b

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    .line 1723
    new-instance v4, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-direct {v4, v5, v6, v12}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    .line 1724
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1723
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1727
    invoke-interface {v3, v1, v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    :cond_c
    return-void
.end method

.method private bfSearchForTrailer(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1819
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const-wide/16 v3, 0x6

    .line 1820
    invoke-interface {v2, v3, v4}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    :catch_0
    :goto_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1821
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->isEOF()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    sget-object v2, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->TRAILER_MARKER:[C

    .line 1824
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isString([C)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1826
    invoke-interface {v4}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v5

    array-length v2, v2

    int-to-long v7, v2

    add-long/2addr v5, v7

    invoke-interface {v4, v5, v6}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 1831
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipSpaces()V

    .line 1832
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseCOSDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    .line 1833
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->ROOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v4}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 1837
    invoke-direct {p0, v4}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->retrieveCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1838
    invoke-virtual {p0, v6}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isCatalog(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v5

    goto :goto_1

    :cond_0
    move v6, v3

    .line 1843
    :goto_1
    sget-object v7, Lcom/tom_roush/pdfbox/cos/COSName;->INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v7}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1847
    invoke-direct {p0, v7}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->retrieveCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1848
    invoke-direct {p0, v8}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isInfo(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v3, v5

    :cond_1
    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    .line 1855
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->ROOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v3, v4}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1856
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v3, v7}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1857
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->ENCRYPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1859
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->ENCRYPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1864
    invoke-direct {p0, v3}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->retrieveCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1867
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->ENCRYPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v4, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1871
    :cond_2
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->ID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1873
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->ID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 1874
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v3, :cond_3

    .line 1876
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->ID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v3, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v5

    :cond_4
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1887
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read()I

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1889
    invoke-interface {p1, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    return v3
.end method

.method private bfSearchForXRef(JZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1745
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchForXRefTables()V

    .line 1747
    :cond_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchForXRefStreams()V

    const-wide/16 v0, -0x1

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchXRefTablesOffsets:Ljava/util/List;

    if-eqz p3, :cond_1

    .line 1751
    invoke-direct {p0, p3, p1, p2}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->searchNearestValue(Ljava/util/List;J)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    iget-object p3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchXRefStreamsOffsets:Ljava/util/List;

    if-eqz p3, :cond_2

    .line 1756
    invoke-direct {p0, p3, p1, p2}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->searchNearestValue(Ljava/util/List;J)J

    move-result-wide v4

    goto :goto_1

    :cond_2
    move-wide v4, v0

    :goto_1
    cmp-long p3, v2, v0

    if-lez p3, :cond_4

    cmp-long v6, v4, v0

    if-lez v6, :cond_4

    sub-long v0, p1, v2

    sub-long/2addr p1, v4

    .line 1763
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchXRefStreamsOffsets:Ljava/util/List;

    .line 1766
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchXRefTablesOffsets:Ljava/util/List;

    .line 1771
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-lez p3, :cond_5

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchXRefTablesOffsets:Ljava/util/List;

    .line 1777
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_2
    move-wide v0, v2

    goto :goto_4

    :cond_5
    cmp-long p1, v4, v0

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchXRefStreamsOffsets:Ljava/util/List;

    .line 1782
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_3
    move-wide v0, v4

    :cond_6
    :goto_4
    return-wide v0
.end method

.method private bfSearchForXRefStreams()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchXRefStreamsOffsets:Ljava/util/List;

    if-nez v1, :cond_8

    .line 2142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchXRefStreamsOffsets:Ljava/util/List;

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2143
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v1

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const-wide/16 v4, 0x6

    .line 2144
    invoke-interface {v3, v4, v5}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    const-string v3, " obj"

    .line 2147
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    :goto_0
    iget-object v6, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2148
    invoke-interface {v6}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->isEOF()Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->XREF_STREAM:[C

    .line 2150
    invoke-direct {v0, v6}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isString([C)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2154
    invoke-interface {v6}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v6

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    :goto_1
    const/16 v10, 0x28

    if-ge v12, v10, :cond_4

    if-nez v13, :cond_4

    mul-int/lit8 v10, v12, 0xa

    int-to-long v8, v10

    sub-long v8, v6, v8

    const-wide/16 v16, 0x0

    cmp-long v10, v8, v16

    if-lez v10, :cond_3

    iget-object v10, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2161
    invoke-interface {v10, v8, v9}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    const/4 v10, 0x0

    :goto_2
    const/16 v11, 0xa

    if-ge v10, v11, :cond_3

    .line 2164
    invoke-direct {v0, v3}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isString([C)Z

    move-result v11

    const-wide/16 v17, 0x1

    if-eqz v11, :cond_2

    sub-long v10, v8, v17

    iget-object v13, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2167
    invoke-interface {v13, v10, v11}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    iget-object v10, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2168
    invoke-interface {v10}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->peek()I

    move-result v10

    .line 2170
    invoke-static {v10}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isDigit(I)Z

    move-result v10

    if-eqz v10, :cond_1

    const-wide/16 v10, 0x2

    sub-long v10, v8, v10

    iget-object v13, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2173
    invoke-interface {v13, v10, v11}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 2174
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isSpace()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const-wide/16 v19, 0x3

    sub-long v8, v8, v19

    .line 2177
    invoke-interface {v10, v8, v9}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    const/4 v10, 0x0

    :goto_3
    cmp-long v11, v8, v4

    if-lez v11, :cond_0

    .line 2178
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isDigit()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    sub-long v8, v8, v17

    .line 2180
    invoke-interface {v11, v8, v9}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_0
    if-lez v10, :cond_1

    iget-object v8, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2185
    invoke-interface {v8}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read()I

    iget-object v8, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2186
    invoke-interface {v8}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v8

    move-wide v14, v8

    .line 2190
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Fixed reference for xref stream "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PdfBox-Android"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    goto :goto_4

    :cond_2
    add-long v8, v8, v17

    iget-object v11, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2198
    invoke-interface {v11}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read()I

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_3
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_4
    const-wide/16 v8, -0x1

    cmp-long v8, v14, v8

    if-lez v8, :cond_5

    iget-object v8, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchXRefStreamsOffsets:Ljava/util/List;

    .line 2205
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v8, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const-wide/16 v9, 0x5

    add-long/2addr v6, v9

    .line 2207
    invoke-interface {v8, v6, v7}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    :cond_6
    iget-object v6, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2209
    invoke-interface {v6}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read()I

    goto/16 :goto_0

    :cond_7
    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2211
    invoke-interface {v3, v1, v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    :cond_8
    return-void
.end method

.method private bfSearchForXRefTables()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchXRefTablesOffsets:Ljava/util/List;

    if-nez v0, :cond_3

    .line 2109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchXRefTablesOffsets:Ljava/util/List;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2110
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const-wide/16 v3, 0x6

    .line 2111
    invoke-interface {v2, v3, v4}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    :goto_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2113
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->isEOF()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->XREF_TABLE:[C

    .line 2115
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isString([C)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2117
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const-wide/16 v5, 0x1

    sub-long v5, v2, v5

    .line 2118
    invoke-interface {v4, v5, v6}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 2120
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isWhitespace()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchXRefTablesOffsets:Ljava/util/List;

    .line 2122
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const-wide/16 v5, 0x4

    add-long/2addr v2, v5

    .line 2124
    invoke-interface {v4, v2, v3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    :cond_1
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2126
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read()I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2128
    invoke-interface {v2, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    :cond_3
    return-void
.end method

.method private calculateXRefFixedOffset(JZ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-string v3, "PdfBox-Android"

    if-gez v2, :cond_0

    .line 1442
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Invalid object offset "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " when searching for a xref table/stream"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    .line 1446
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchForXRef(JZ)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p3, v4, v6

    if-lez p3, :cond_1

    .line 1449
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Fixed reference for xref table/stream "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    .line 1452
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find the object xref table/stream at offset "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private checkPagesDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Set;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/cos/COSObject;",
            ">;)I"
        }
    .end annotation

    .line 2406
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 2408
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 2410
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 2411
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toList()Ljava/util/List;

    move-result-object v1

    .line 2412
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 2414
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 2420
    :cond_1
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2422
    sget-object v6, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 2427
    :cond_2
    instance-of v3, v5, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v3, :cond_0

    .line 2429
    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 2430
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v5, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v3

    .line 2431
    sget-object v6, Lcom/tom_roush/pdfbox/cos/COSName;->PAGES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v6, v3}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2434
    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2435
    invoke-direct {p0, v5, p2}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->checkPagesDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Set;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 2437
    :cond_3
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v4, v3}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2424
    :cond_4
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removed null object "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from pages dictionary"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PdfBox-Android"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    goto :goto_0

    .line 2416
    :cond_5
    :goto_2
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    goto :goto_0

    .line 2446
    :cond_6
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->COUNT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return v2
.end method

.method private checkXRefOffset(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1361
    invoke-interface {v0, p1, p2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 1362
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipSpaces()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1363
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->peek()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->XREF_TABLE:[C

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isString([C)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide p1

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    .line 1369
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->checkXRefStreamOffset(J)Z

    move-result v0

    if-eqz v0, :cond_2

    return-wide p1

    :cond_2
    const/4 v0, 0x0

    .line 1375
    invoke-direct {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->calculateXRefFixedOffset(JZ)J

    move-result-wide p1

    return-wide p1

    :cond_3
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private checkXRefStreamOffset(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    .line 1397
    invoke-interface {v0, v2, v3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1398
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read()I

    move-result v0

    .line 1400
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1402
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipSpaces()V

    .line 1403
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isDigit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1408
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readObjectNumber()J

    .line 1409
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readGenerationNumber()I

    sget-object v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->OBJ_MARKER:[C

    .line 1410
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readExpectedString([CZ)V

    .line 1412
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseCOSDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1413
    invoke-interface {v2, p1, p2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    const-string v2, "XRef"

    .line 1414
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return v1

    :catch_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1422
    invoke-interface {v0, p1, p2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private checkXrefOffsets()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 1523
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->getXrefTable()Ljava/util/Map;

    move-result-object v0

    .line 1524
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->validateXrefOffsets(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1526
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchForObjects()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    .line 1527
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PdfBox-Android"

    const-string v2, "Replaced read xref table with the results of a brute force search"

    .line 1529
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    .line 1531
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private compareCOSObjects(Lcom/tom_roush/pdfbox/cos/COSObject;Ljava/lang/Long;Lcom/tom_roush/pdfbox/cos/COSObject;Ljava/lang/Long;)Lcom/tom_roush/pdfbox/cos/COSObject;
    .locals 4

    if-eqz p3, :cond_3

    .line 2319
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObjectNumber()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObjectNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2321
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/cos/COSObject;->getGenerationNumber()I

    move-result p2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getGenerationNumber()I

    move-result p4

    if-ge p2, p4, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    return-object p1

    :cond_1
    if-eqz p4, :cond_2

    .line 2326
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-lez p2, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p3

    :cond_3
    :goto_1
    return-object p1
.end method

.method private findObjectKey(Lcom/tom_roush/pdfbox/cos/COSObjectKey;JLjava/util/Map;)Lcom/tom_roush/pdfbox/cos/COSObjectKey;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSObjectKey;",
            "J",
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObjectKey;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/tom_roush/pdfbox/cos/COSObjectKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, " - ignoring"

    const-string v1, "PdfBox-Android"

    const-wide/16 v2, 0x6

    cmp-long v2, p2, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1556
    invoke-interface {v2, p2, p3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 1557
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipWhiteSpaces()V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1558
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v4

    cmp-long v2, v4, p2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const-wide/16 v4, 0x1

    sub-long v6, p2, v4

    .line 1561
    invoke-interface {v2, v6, v7}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1562
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v6

    cmp-long v2, v6, p2

    if-gez v2, :cond_4

    .line 1564
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isDigit()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1567
    invoke-interface {p4}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read()I

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1571
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v6

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    sub-long/2addr v6, v4

    .line 1572
    invoke-interface {v2, v6, v7}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 1573
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isDigit()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    sub-long/2addr v6, v4

    .line 1574
    invoke-interface {v2, v6, v7}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    goto :goto_0

    .line 1575
    :cond_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readObjectNumber()J

    move-result-wide v4

    .line 1576
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readGenerationNumber()I

    move-result v2

    .line 1577
    new-instance v6, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-direct {v6, v4, v5, v2}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    .line 1578
    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    if-eqz p4, :cond_3

    .line 1581
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v2, v4, v7

    if-lez v2, :cond_3

    .line 1582
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, p2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v7, 0xa

    cmp-long p4, v4, v7

    if-gez p4, :cond_3

    .line 1584
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found the object "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v2, " instead of "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " at offset "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_3
    iget-object p4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1590
    invoke-interface {p4, p2, p3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 1595
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readObjectNumber()J

    move-result-wide v4

    .line 1596
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v6

    cmp-long p4, v6, v4

    if-eqz p4, :cond_6

    .line 1598
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found wrong object number. expected ["

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v6

    invoke-virtual {p4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v2, "] found ["

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v2, "]"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    if-nez p4, :cond_5

    return-object v3

    .line 1606
    :cond_5
    new-instance p4, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result p1

    invoke-direct {p4, v4, v5, p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    move-object p1, p4

    .line 1610
    :cond_6
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readGenerationNumber()I

    move-result p4

    sget-object v2, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->OBJ_MARKER:[C

    const/4 v4, 0x1

    .line 1612
    invoke-virtual {p0, v2, v4}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readExpectedString([CZ)V

    .line 1613
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v2

    if-ne p4, v2, :cond_7

    return-object p1

    :cond_7
    iget-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    if-eqz v2, :cond_8

    .line 1617
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v2

    if-le p4, v2, :cond_8

    .line 1619
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, p4}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 1625
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "No valid object at given location "

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    return-object v3
.end method

.method private getLength(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSNumber;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1049
    :cond_0
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v1, :cond_1

    .line 1051
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    goto :goto_0

    .line 1054
    :cond_1
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v1, :cond_6

    .line 1056
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 1057
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1061
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v1

    .line 1062
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->OBJ_STM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, p2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 1063
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseObjectDynamically(Lcom/tom_roush/pdfbox/cos/COSObject;Z)Lcom/tom_roush/pdfbox/cos/COSBase;

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1065
    invoke-interface {p2, v1, v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 1066
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_5

    .line 1072
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    if-ne p2, v1, :cond_3

    .line 1074
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Length object ("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObjectNumber()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1075
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getGenerationNumber()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") not found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PdfBox-Android"

    .line 1074
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1078
    :cond_3
    instance-of p2, v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz p2, :cond_4

    .line 1083
    move-object p1, v1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    :goto_0
    return-object p1

    .line 1080
    :cond_4
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type of referenced length object "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1081
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1070
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Length object content was not read."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1087
    :cond_6
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong type of length object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getObjectId(Lcom/tom_roush/pdfbox/cos/COSObject;)J
    .locals 4

    .line 577
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObjectNumber()J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getGenerationNumber()I

    move-result p1

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private isInfo(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z
    .locals 2

    .line 2469
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->A:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEST:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2473
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->MOD_DATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TITLE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->AUTHOR:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 2474
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SUBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 2475
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->KEYWORDS:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 2476
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->CREATOR:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 2477
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PRODUCER:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 2478
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->CREATION_DATE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 2479
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private isString([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2511
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->peek()I

    move-result v0

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    if-ne v0, v2, :cond_2

    .line 2513
    array-length v0, p1

    .line 2514
    new-array v2, v0, [B

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2515
    invoke-interface {v3, v2, v1, v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read([BII)I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    sub-int v4, v0, v1

    .line 2518
    invoke-interface {v3, v2, v1, v4}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read([BII)I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v1, v3

    goto :goto_0

    .line 2525
    :cond_1
    :goto_1
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2526
    invoke-interface {v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->rewind(I)V

    move v1, p1

    :cond_2
    return v1
.end method

.method private isString([C)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2541
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v0

    .line 2542
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-char v5, p1, v4

    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2544
    invoke-interface {v6}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read()I

    move-result v6

    if-eq v6, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_1
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2550
    invoke-interface {p1, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    return v3
.end method

.method private parseDictionaryRecursive(Lcom/tom_roush/pdfbox/cos/COSObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3016
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseObjectDynamically(Lcom/tom_roush/pdfbox/cos/COSObject;Z)Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 3017
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    instance-of v0, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_2

    .line 3023
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 3024
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getValues()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 3026
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v1, :cond_0

    .line 3028
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 3029
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3031
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseDictionaryRecursive(Lcom/tom_roush/pdfbox/cos/COSObject;)V

    goto :goto_0

    :cond_1
    return-void

    .line 3021
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dictionary object expected at offset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseFileObject(Ljava/lang/Long;Lcom/tom_roush/pdfbox/cos/COSObjectKey;Lcom/tom_roush/pdfbox/cos/COSObject;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 904
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 907
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readObjectNumber()J

    move-result-wide v2

    .line 908
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readGenerationNumber()I

    move-result v4

    sget-object v5, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->OBJ_MARKER:[C

    const/4 v6, 0x1

    .line 909
    invoke-virtual {p0, v5, v6}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readExpectedString([CZ)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v5

    cmp-long v5, v2, v5

    const-string v6, ":"

    if-nez v5, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 919
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipSpaces()V

    .line 920
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseDirObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    .line 921
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readString()Ljava/lang/String;

    move-result-object v13

    const-string v7, "stream"

    .line 923
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v14, "endobj"

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 925
    sget-object v8, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v8, v8

    invoke-interface {v7, v8}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->rewind(I)V

    .line 926
    instance-of v7, v5, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v7, :cond_1

    .line 928
    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {p0, v5}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseCOSStream(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v5

    iget-object v7, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->securityHandler:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    if-eqz v7, :cond_0

    .line 932
    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v8

    int-to-long v11, v8

    move-object v8, v5

    invoke-virtual/range {v7 .. v12}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->decryptStream(Lcom/tom_roush/pdfbox/cos/COSStream;JJ)V

    .line 944
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipSpaces()V

    .line 945
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 948
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "endstream"

    invoke-virtual {v13, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x9

    .line 950
    invoke-virtual {v13, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 951
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 955
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readLine()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 941
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Stream not preceded by dictionary (offset: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v7, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->securityHandler:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    if-eqz v7, :cond_3

    .line 961
    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v8

    int-to-long v11, v8

    move-object v8, v5

    invoke-virtual/range {v7 .. v12}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->decrypt(Lcom/tom_roush/pdfbox/cos/COSBase;JJ)V

    :cond_3
    :goto_0
    move-object/from16 v7, p3

    .line 964
    invoke-virtual {v7, v5}, Lcom/tom_roush/pdfbox/cos/COSObject;->setObject(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 966
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    const-string v7, "\'"

    const-string v8, " does not end with \'endobj\' but with \'"

    const-string v9, ") at offset "

    const-string v10, "Object ("

    if-eqz v5, :cond_4

    .line 970
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PdfBox-Android"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 976
    :cond_4
    new-instance v5, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    :goto_1
    return-void

    .line 914
    :cond_6
    new-instance v5, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "XREF for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 915
    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " points to wrong object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private parseHeader(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2643
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 2645
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2647
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 2648
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2651
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2655
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2660
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v3, 0x0

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2662
    invoke-interface {p1, v3, v4}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    return v2

    .line 2668
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 2674
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2678
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "PdfBox-Android"

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\\d.\\d"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2680
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    if-ge v1, v6, :cond_4

    .line 2683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2684
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "No version found, set to "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " as default."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2688
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2689
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2690
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    array-length p2, p2

    invoke-interface {p1, p2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->rewind(I)V

    :cond_5
    :goto_2
    const/4 p1, 0x1

    const/high16 p2, -0x40800000    # -1.0f

    :try_start_0
    const-string v1, "-"

    .line 2696
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2697
    array-length v2, v1

    const/4 v6, 0x2

    if-ne v2, v6, :cond_6

    .line 2699
    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v2, "Can\'t parse the header version."

    .line 2704
    invoke-static {v5, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_8

    iget-boolean p2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    if-eqz p2, :cond_7

    const p2, 0x3fd9999a    # 1.7f

    goto :goto_4

    .line 2714
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error getting header version: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2717
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/cos/COSDocument;->setVersion(F)V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2719
    invoke-interface {p2, v3, v4}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    return p1
.end method

.method private parseObjectStream(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "PdfBox-Android"

    int-to-long v1, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 985
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseObjectDynamically(JIZ)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 986
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v2, :cond_3

    .line 992
    :try_start_0
    new-instance v2, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSStream;

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-direct {v2, v1, v3}, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/cos/COSDocument;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1009
    :try_start_1
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->parse()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1025
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdfparser/PDFObjectStreamParser;->getObjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 1027
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-direct {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(Lcom/tom_roush/pdfbox/cos/COSObject;)V

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 1028
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->getXrefTable()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 1029
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    neg-int v5, p1

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 1031
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getObjectFromPool(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v2

    .line 1032
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSObject;->setObject(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :catch_0
    move-exception v1

    iget-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    if-eqz v2, :cond_1

    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stop reading object stream "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " due to an exception"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 1021
    :cond_1
    throw v1

    :catch_1
    move-exception v1

    iget-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    if-eqz v2, :cond_2

    .line 998
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "object stream "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " could not be parsed due to an exception"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 1003
    :cond_2
    throw v1

    :cond_3
    return-void
.end method

.method private parseStartXref()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->STARTXREF:[C

    .line 2491
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isString([C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2493
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readString()Ljava/lang/String;

    .line 2494
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipSpaces()V

    .line 2496
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private parseTrailer()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2563
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->trailerOffset:J

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    const/16 v1, 0x74

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2567
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->peek()I

    move-result v0

    :goto_0
    if-eq v0, v1, :cond_1

    .line 2568
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2570
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->trailerOffset:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 2573
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected trailer object at offset "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->trailerOffset:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", keep trying"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PdfBox-Android"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2577
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->peek()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2580
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->peek()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2585
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v0

    .line 2586
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 2587
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "trailer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2593
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const/4 v3, 0x7

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 2598
    invoke-interface {v2, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    goto :goto_1

    :cond_3
    return v2

    .line 2609
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipSpaces()V

    .line 2611
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseCOSDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 2612
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->setTrailer(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 2614
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipSpaces()V

    const/4 v0, 0x1

    return v0
.end method

.method private parseXrefObjStream(JZ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readObjectNumber()J

    move-result-wide v0

    .line 426
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getHighestXRefObjectNumber()J

    move-result-wide v2

    .line 427
    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->setHighestXRefObjectNumber(J)V

    .line 429
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readGenerationNumber()I

    sget-object v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->OBJ_MARKER:[C

    const/4 v1, 0x1

    .line 430
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readExpectedString([CZ)V

    .line 432
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseCOSDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 433
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseCOSStream(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v1

    .line 434
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseXrefStream(Lcom/tom_roush/pdfbox/cos/COSStream;JZ)V

    .line 435
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->close()V

    .line 437
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->PREV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getLong(Lcom/tom_roush/pdfbox/cos/COSName;)J

    move-result-wide p1

    return-wide p1
.end method

.method private parseXrefStream(Lcom/tom_roush/pdfbox/cos/COSStream;JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 2859
    sget-object v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;->STREAM:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;

    invoke-virtual {p4, p2, p3, v0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->nextXrefObj(JLcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;)V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 2860
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->setTrailer(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 2862
    :cond_0
    new-instance p2, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;

    iget-object p3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    iget-object p4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    invoke-direct {p2, p1, p3, p4}, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/cos/COSDocument;Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;)V

    .line 2863
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdfparser/PDFXrefStreamParser;->parse()V

    return-void
.end method

.method private prepareDecryption()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error ("

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->encryption:Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    if-eqz v1, :cond_0

    return-void

    .line 2957
    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ENCRYPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2958
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSNull;

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 2963
    :cond_1
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v2, :cond_2

    .line 2965
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 2966
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseDictionaryRecursive(Lcom/tom_roush/pdfbox/cos/COSObject;)V

    .line 2971
    :cond_2
    :try_start_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getEncryptionDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->encryption:Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->keyStoreInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    const-string v1, "PKCS12"

    .line 2975
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->keyStoreInputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->password:Ljava/lang/String;

    .line 2976
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 2977
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->keyAlias:Ljava/lang/String;

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->password:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;-><init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2981
    :cond_3
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardDecryptionMaterial;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->password:Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardDecryptionMaterial;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->encryption:Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    .line 2984
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getSecurityHandler()Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->securityHandler:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->encryption:Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    .line 2985
    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getDocumentID()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->prepareForDecryption(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/pdmodel/encryption/DecryptionMaterial;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->securityHandler:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    .line 2987
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->getCurrentAccessPermission()Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    move-result-object v1

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->accessPermission:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->keyStoreInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    .line 3002
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 2995
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") while creating security handler for decryption"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 2991
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->keyStoreInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_5

    .line 3002
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 3004
    :cond_5
    throw v0

    :cond_6
    :goto_2
    return-void
.end method

.method private readUntilEndStream(Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->ENDSTREAM:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->strmBuf:[B

    rsub-int v5, v2, 0x800

    .line 1217
    invoke-interface {v3, v4, v2, v5}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read([BII)I

    move-result v3

    if-lez v3, :cond_a

    add-int/2addr v3, v2

    add-int/lit8 v4, v3, -0x5

    move v5, v2

    :goto_1
    if-ge v2, v3, :cond_7

    add-int/lit8 v6, v2, 0x5

    const/4 v7, 0x1

    if-nez v5, :cond_1

    if-ge v6, v4, :cond_1

    iget-object v8, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->strmBuf:[B

    .line 1234
    aget-byte v8, v8, v6

    const/16 v9, 0x74

    if-gt v8, v9, :cond_0

    const/16 v9, 0x61

    if-ge v8, v9, :cond_1

    :cond_0
    move v2, v6

    goto :goto_3

    :cond_1
    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->strmBuf:[B

    .line 1245
    aget-byte v6, v6, v2

    .line 1247
    aget-byte v8, v0, v5

    if-ne v6, v8, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 1249
    array-length v6, v0

    if-ne v5, v6, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2
    const/4 v0, 0x3

    if-ne v5, v0, :cond_3

    sget-object v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->ENDOBJ:[B

    .line 1258
    aget-byte v8, v0, v5

    if-ne v6, v8, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    const/16 v0, 0x65

    if-ne v6, v0, :cond_4

    move v0, v7

    goto :goto_2

    :cond_4
    const/16 v0, 0x6e

    if-ne v6, v0, :cond_5

    const/4 v0, 0x7

    if-ne v5, v0, :cond_5

    const/4 v0, 0x2

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    sget-object v5, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->ENDSTREAM:[B

    move-object v10, v5

    move v5, v0

    move-object v0, v10

    :cond_6
    :goto_3
    add-int/2addr v2, v7

    goto :goto_1

    :cond_7
    :goto_4
    sub-int/2addr v2, v5

    .line 1278
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v2, :cond_8

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->strmBuf:[B

    .line 1283
    invoke-virtual {p1, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1285
    :cond_8
    array-length v4, v0

    if-ne v5, v4, :cond_9

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    sub-int/2addr v3, v2

    .line 1288
    invoke-interface {v0, v3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->rewind(I)V

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->strmBuf:[B

    .line 1294
    invoke-static {v0, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v5

    goto :goto_0

    .line 1298
    :cond_a
    :goto_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private readValidStream(Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSNumber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1303
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSNumber;->longValue()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_2

    const-wide/16 v2, 0x2000

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    const/16 p2, 0x2000

    goto :goto_1

    :cond_0
    long-to-int p2, v0

    :goto_1
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->streamCopyBuf:[B

    const/4 v4, 0x0

    .line 1307
    invoke-interface {v2, v3, v4, p2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read([BII)I

    move-result v2

    if-lez v2, :cond_1

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->streamCopyBuf:[B

    .line 1314
    invoke-virtual {p1, p2, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    .line 1311
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "read error at offset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " bytes, but read() returns "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private retrieveCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2333
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(Lcom/tom_roush/pdfbox/cos/COSObject;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    .line 2334
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2337
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v1

    .line 2338
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->retrieveCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSObjectKey;J)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2339
    invoke-interface {v0, v1, v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private retrieveCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSObjectKey;J)Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 2351
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getObjectFromPool(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object p1

    .line 2352
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-nez v0, :cond_0

    neg-long p2, p2

    long-to-int p2, p2

    .line 2354
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseObjectStream(I)V

    .line 2356
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 2357
    instance-of p2, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz p2, :cond_3

    .line 2359
    move-object v1, p1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2364
    invoke-interface {v0, p2, p3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 2365
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readObjectNumber()J

    .line 2366
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readGenerationNumber()I

    sget-object p2, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->OBJ_MARKER:[C

    const/4 p3, 0x1

    .line 2367
    invoke-virtual {p0, p2, p3}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readExpectedString([CZ)V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2368
    invoke-interface {p2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->peek()I

    move-result p2

    const/16 p3, 0x3c

    if-eq p2, p3, :cond_2

    return-object v1

    .line 2374
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseCOSDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2378
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Skipped object "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", either it\'s corrupt or not a dictionary"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PdfBox-Android"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-object v1
.end method

.method private searchForTrailerItems(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    .line 2272
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2274
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {p0, v6, v7, v8}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->retrieveCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSObjectKey;J)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 2280
    :cond_1
    invoke-virtual {p0, v6}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isCatalog(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2282
    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-virtual {v6, v7}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getObjectFromPool(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v6

    .line 2283
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-direct {p0, v6, v7, v1, v3}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->compareCOSObjects(Lcom/tom_roush/pdfbox/cos/COSObject;Ljava/lang/Long;Lcom/tom_roush/pdfbox/cos/COSObject;Ljava/lang/Long;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v1

    if-ne v1, v6, :cond_0

    .line 2286
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_0

    .line 2290
    :cond_2
    invoke-direct {p0, v6}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isInfo(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2292
    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-virtual {v6, v7}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getObjectFromPool(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v6

    .line 2293
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-direct {p0, v6, v7, v2, v4}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->compareCOSObjects(Lcom/tom_roush/pdfbox/cos/COSObject;Ljava/lang/Long;Lcom/tom_roush/pdfbox/cos/COSObject;Ljava/lang/Long;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v2

    if-ne v2, v6, :cond_0

    .line 2296
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 2304
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ROOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 2308
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_5
    if-eqz v1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private searchNearestValue(Ljava/util/List;J)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)J"
        }
    .end annotation

    .line 1792
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1796
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, p2, v5

    if-eqz v1, :cond_0

    .line 1799
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 1801
    :cond_0
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move v4, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-le v4, v2, :cond_3

    .line 1807
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_1

    :cond_3
    const-wide/16 p1, -0x1

    :goto_1
    return-wide p1
.end method

.method private validateStreamLength(J)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1322
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v0

    add-long v2, v0, p1

    iget-wide v4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->fileLen:J

    cmp-long v4, v2, v4

    const-string v5, ", expected end position: "

    const-string v6, ", length: "

    const-string v7, "PdfBox-Android"

    const/4 v8, 0x0

    if-lez v4, :cond_0

    .line 1327
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "The end of the stream is out of range, using workaround to read the stream, stream start position: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1333
    invoke-interface {v4, v2, v3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 1334
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipSpaces()V

    sget-object v4, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->ENDSTREAM:[B

    .line 1335
    invoke-direct {p0, v4}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isString([B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1338
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "The end of the stream doesn\'t point to the correct offset, using workaround to read the stream, stream start position: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    move v8, p1

    :goto_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1342
    invoke-interface {p1, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    :goto_1
    return v8
.end method

.method private validateXrefOffsets(Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObjectKey;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1462
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1463
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1464
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1466
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    .line 1467
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 1470
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 1472
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7, p1}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->findObjectKey(Lcom/tom_roush/pdfbox/cos/COSObjectKey;JLjava/util/Map;)Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1475
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Stop checking xref offsets as at least one ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") couldn\'t be dereferenced"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PdfBox-Android"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_2
    if-eq v4, v5, :cond_3

    .line 1482
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1486
    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1490
    :cond_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1491
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1493
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1496
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1499
    :cond_6
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1502
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1504
    :cond_7
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1506
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    return v0
.end method


# virtual methods
.method protected checkPages(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->trailerWasRebuild:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2395
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PAGES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 2396
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 2398
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->checkPagesDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Set;)I

    :cond_0
    return-void
.end method

.method public getAccessPermission()Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2909
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->accessPermission:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    return-object v0

    .line 2911
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "You must parse the document first before calling getAccessPermission()"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2876
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    if-eqz v0, :cond_0

    .line 2880
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    return-object v0

    .line 2878
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "You must parse the document first before calling getDocument()"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncryption()Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2892
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->encryption:Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    return-object v0

    .line 2894
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "You must parse the document first before calling getEncryption()"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final getStartxrefOffset()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :try_start_0
    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->fileLen:J

    iget v4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readTrailBytes:I

    int-to-long v5, v4

    cmp-long v5, v2, v5

    if-gez v5, :cond_0

    long-to-int v4, v2

    .line 456
    :cond_0
    new-array v5, v4, [B

    int-to-long v6, v4

    sub-long/2addr v2, v6

    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 458
    invoke-interface {v6, v2, v3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    iget-object v7, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    sub-int v8, v4, v6

    .line 463
    invoke-interface {v7, v5, v6, v8}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read([BII)I

    move-result v7

    const/4 v9, 0x1

    if-lt v7, v9, :cond_1

    add-int/2addr v6, v7

    goto :goto_0

    .line 467
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No more bytes to read for trailing buffer, but expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 476
    invoke-interface {v6, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    sget-object v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->EOF_MARKER:[C

    .line 479
    invoke-virtual {p0, v0, v5, v4}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->lastIndexOf([C[BI)I

    move-result v1

    if-gez v1, :cond_4

    iget-boolean v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    const-string v6, "\'"

    const-string v7, "Missing end of file marker \'"

    if-eqz v1, :cond_3

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 490
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move v4, v1

    :goto_1
    sget-object v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->STARTXREF:[C

    .line 494
    invoke-virtual {p0, v0, v5, v4}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->lastIndexOf([C[BI)I

    move-result v0

    if-ltz v0, :cond_5

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2

    .line 497
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing \'startxref\' marker."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 476
    invoke-interface {v3, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 477
    throw v2
.end method

.method protected isCatalog(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z
    .locals 2

    .line 2458
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->CATALOG:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isLenient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    return v0
.end method

.method protected lastIndexOf([C[BI)I
    .locals 4

    .line 516
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 520
    aget-char v1, p1, v0

    :goto_0
    move v2, v0

    :cond_0
    :goto_1
    const/4 v3, -0x1

    add-int/2addr p3, v3

    if-ltz p3, :cond_3

    .line 524
    aget-byte v3, p2, p3

    if-ne v3, v1, :cond_2

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_1

    return p3

    .line 532
    :cond_1
    aget-char v1, p1, v2

    goto :goto_1

    :cond_2
    if-ge v2, v0, :cond_0

    .line 538
    aget-char v1, p1, v0

    goto :goto_0

    :cond_3
    return v3
.end method

.method protected parseCOSStream(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1112
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->createCOSStream(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    .line 1115
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readString()Ljava/lang/String;

    .line 1117
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipWhiteSpaces()V

    .line 1122
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->getLength(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSNumber;

    move-result-object p1

    const-string v1, "PdfBox-Android"

    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    if-eqz v2, :cond_0

    .line 1127
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The stream doesn\'t provide any stream length, using fallback readUntilEnd, at offset "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1128
    invoke-interface {v3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1127
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1132
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing length for stream."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 1137
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->validateStreamLength(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1139
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 1142
    :try_start_0
    invoke-direct {p0, v2, p1}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readValidStream(Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSNumber;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1148
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 1146
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1148
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1149
    throw v1

    .line 1153
    :cond_2
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 1156
    :try_start_1
    new-instance v3, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;

    invoke-direct {v3, v2}, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v3}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readUntilEndStream(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1160
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    if-eqz p1, :cond_3

    .line 1164
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1168
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "endobj"

    .line 1169
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    if-eqz v2, :cond_4

    .line 1171
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "stream ends with \'endobj\' instead of \'endstream\' at offset "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1172
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1171
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    sget-object v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->ENDOBJ:[B

    .line 1174
    array-length v1, v1

    invoke-interface {p1, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->rewind(I)V

    goto :goto_2

    .line 1176
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "endstream"

    const/16 v4, 0x9

    if-le v2, v4, :cond_5

    iget-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    if-eqz v2, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1178
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stream ends with \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' instead of \'endstream\' at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1179
    invoke-interface {v3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1178
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1181
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    invoke-interface {v1, p1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->rewind(I)V

    goto :goto_2

    .line 1183
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    return-object v0

    .line 1185
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error reading stream, expected=\'endstream\' actual=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' at offset "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 1187
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v1

    .line 1160
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    if-eqz p1, :cond_7

    .line 1164
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1166
    :cond_7
    throw v1
.end method

.method protected varargs parseDictObjects(Lcom/tom_roush/pdfbox/cos/COSDictionary;[Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 629
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 631
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 633
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 634
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 636
    invoke-direct {v0, v6, v5, v3}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->addExcludedToList([Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Set;)V

    .line 637
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getValues()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v0, v1, v5, v4}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->addNewToList(Ljava/util/Queue;Ljava/util/Collection;Ljava/util/Set;)V

    .line 640
    :cond_0
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    .line 645
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSBase;

    const/4 v6, 0x0

    if-eqz v5, :cond_e

    .line 647
    instance-of v7, v5, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v7, :cond_2

    .line 649
    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getValues()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v0, v1, v5, v4}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->addNewToList(Ljava/util/Queue;Ljava/util/Collection;Ljava/util/Set;)V

    goto :goto_0

    .line 651
    :cond_2
    instance-of v7, v5, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v7, :cond_3

    .line 653
    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 655
    invoke-direct {v0, v1, v6, v4}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->addNewToList(Ljava/util/Queue;Lcom/tom_roush/pdfbox/cos/COSBase;Ljava/util/Set;)V

    goto :goto_1

    .line 658
    :cond_3
    instance-of v7, v5, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v7, :cond_1

    .line 660
    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 661
    invoke-direct {v0, v5}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->getObjectId(Lcom/tom_roush/pdfbox/cos/COSObject;)J

    move-result-wide v7

    .line 662
    new-instance v9, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObjectNumber()J

    move-result-wide v10

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSObject;->getGenerationNumber()I

    move-result v12

    invoke-direct {v9, v10, v11, v12}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    .line 664
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 666
    iget-object v7, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getXrefTable()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    const-string v8, " for object "

    const-string v10, "Set missing "

    const-string v11, "PdfBox-Android"

    if-nez v7, :cond_4

    iget-boolean v12, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    if-eqz v12, :cond_4

    .line 669
    invoke-direct/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchForObjects()V

    iget-object v7, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    .line 670
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_4

    .line 673
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v12, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getXrefTable()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v7, :cond_d

    .line 680
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_d

    .line 682
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v14

    if-lez v12, :cond_5

    .line 684
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 690
    :cond_5
    new-instance v12, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    neg-long v13, v14

    long-to-int v7, v13

    int-to-long v13, v7

    invoke-direct {v12, v13, v14, v6}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    .line 691
    iget-object v7, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getXrefTable()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_6

    .line 692
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-gtz v13, :cond_7

    :cond_6
    iget-boolean v13, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    const-string v14, "\': "

    const-string v15, "Invalid object stream xref object reference for key \'"

    if-eqz v13, :cond_b

    .line 696
    invoke-direct/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchForObjects()V

    iget-object v7, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    .line 697
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_a

    .line 700
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v8, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getXrefTable()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :cond_7
    invoke-virtual {v2, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_8

    .line 728
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 729
    invoke-virtual {v2, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 732
    :cond_8
    instance-of v9, v8, Ljava/util/ArrayList;

    if-eqz v9, :cond_9

    .line 737
    :goto_2
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 734
    :cond_9
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot be assigned to offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this belongs to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 735
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 706
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 713
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    if-eqz v6, :cond_c

    if-nez v7, :cond_c

    .line 718
    invoke-static {v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 721
    :cond_c
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 743
    :cond_d
    iget-object v5, v0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v5, v9}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getObjectFromPool(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v5

    .line 744
    sget-object v6, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    invoke-virtual {v5, v6}, Lcom/tom_roush/pdfbox/cos/COSObject;->setObject(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto/16 :goto_0

    .line 752
    :cond_e
    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    return-void

    .line 757
    :cond_10
    invoke-virtual {v2}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 759
    invoke-virtual {v0, v7, v6}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseObjectDynamically(Lcom/tom_roush/pdfbox/cos/COSObject;Z)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 762
    invoke-virtual {v7, v8}, Lcom/tom_roush/pdfbox/cos/COSObject;->setObject(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 763
    invoke-direct {v0, v1, v8, v4}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->addNewToList(Ljava/util/Queue;Lcom/tom_roush/pdfbox/cos/COSBase;Ljava/util/Set;)V

    .line 764
    invoke-direct {v0, v7}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->getObjectId(Lcom/tom_roush/pdfbox/cos/COSObject;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method protected parseFDFHeader()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "%FDF-"

    const-string v1, "1.0"

    .line 2637
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseHeader(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected parseObjectDynamically(JIZ)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 821
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    .line 822
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getObjectFromPool(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v1

    .line 824
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    if-nez v2, :cond_9

    .line 828
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getXrefTable()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-string v3, "PdfBox-Android"

    if-nez v2, :cond_0

    iget-boolean v4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    if-eqz v4, :cond_0

    .line 833
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchForObjects()V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    .line 834
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 837
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set missing offset "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getXrefTable()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-wide/16 v4, 0x0

    if-eqz p4, :cond_2

    if-eqz v2, :cond_1

    .line 844
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long p4, v6, v4

    if-lez p4, :cond_1

    goto :goto_0

    .line 846
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Object must be defined and must not be compressed object: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 850
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObject;->derefencingInProgress()Z

    move-result p4

    if-nez p4, :cond_8

    .line 856
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObject;->dereferencingStarted()V

    if-nez v2, :cond_5

    iget-boolean p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    if-nez p1, :cond_5

    .line 860
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchForObjects()V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    .line 861
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Add all new read objects from brute force search to the xref table"

    .line 863
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getXrefTable()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    .line 865
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 866
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 868
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    .line 870
    invoke-interface {p1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 872
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 875
    :cond_4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/Long;

    :cond_5
    if-nez v2, :cond_6

    .line 882
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->setObject(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_2

    .line 884
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-lez p1, :cond_7

    .line 887
    invoke-direct {p0, v2, v0, v1}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseFileObject(Ljava/lang/Long;Lcom/tom_roush/pdfbox/cos/COSObjectKey;Lcom/tom_roush/pdfbox/cos/COSObject;)V

    goto :goto_2

    .line 893
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    neg-long p1, p1

    long-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseObjectStream(I)V

    .line 896
    :goto_2
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObject;->dereferencingFinished()V

    goto :goto_3

    .line 852
    :cond_8
    new-instance p4, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Possible recursion detected when dereferencing object "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 898
    :cond_9
    :goto_3
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    return-object p1
.end method

.method protected final parseObjectDynamically(Lcom/tom_roush/pdfbox/cos/COSObject;Z)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 799
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObjectNumber()J

    move-result-wide v0

    .line 800
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getGenerationNumber()I

    move-result p1

    .line 799
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseObjectDynamically(JIZ)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    return-object p1
.end method

.method protected parsePDFHeader()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "%PDF-"

    const-string v1, "1.4"

    .line 2626
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseHeader(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected parseTrailerValuesDynamically(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2928
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getValues()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 2930
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v2, :cond_0

    .line 2932
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    const/4 v2, 0x0

    .line 2933
    invoke-virtual {p0, v1, v2}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseObjectDynamically(Lcom/tom_roush/pdfbox/cos/COSObject;Z)Lcom/tom_roush/pdfbox/cos/COSBase;

    goto :goto_0

    .line 2937
    :cond_1
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ROOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2942
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    return-object p1

    .line 2940
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing root object specification in trailer."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected parseXref(J)Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    move-wide/from16 v2, p1

    .line 302
    invoke-interface {v0, v2, v3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseStartXref()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 305
    invoke-direct {v1, v2, v3}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->checkXRefOffset(J)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    move-wide v2, v6

    .line 310
    :cond_0
    iget-object v0, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v0, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDocument;->setStartXref(J)V

    .line 313
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-wide v10, v2

    :goto_0
    cmp-long v0, v10, v4

    const/4 v7, 0x1

    const/4 v12, 0x0

    if-lez v0, :cond_b

    .line 318
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 320
    invoke-interface {v0, v10, v11}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipSpaces()V

    iget-object v0, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 324
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 326
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->peek()I

    move-result v0

    const/16 v13, 0x78

    if-ne v0, v13, :cond_7

    .line 330
    invoke-virtual {v1, v10, v11}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseXrefTable(J)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseTrailer()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 335
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->getCurrentTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v7

    .line 337
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->XREF_STM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v7, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 339
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->XREF_STM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v7, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    int-to-long v13, v0

    .line 341
    invoke-direct {v1, v13, v14}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->checkXRefOffset(J)J

    move-result-wide v4

    cmp-long v15, v4, v8

    const-string v8, "PdfBox-Android"

    if-lez v15, :cond_1

    cmp-long v9, v4, v13

    if-eqz v9, :cond_1

    .line 344
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "/XRefStm offset "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " is incorrect, corrected to "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v0, v4

    .line 346
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->XREF_STM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v7, v4, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    :cond_1
    move v4, v0

    if-lez v4, :cond_3

    iget-object v0, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    int-to-long v13, v4

    .line 350
    invoke-interface {v0, v13, v14}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipSpaces()V

    .line 354
    :try_start_0
    invoke-direct {v1, v10, v11, v12}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseXrefObjStream(JZ)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v5, v0

    iget-boolean v0, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    if-eqz v0, :cond_2

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "Failed to parse /XRefStm at offset "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 364
    :cond_2
    throw v5

    :cond_3
    iget-boolean v0, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    const-string v5, "Skipped XRef stream due to a corrupt offset:"

    if-eqz v0, :cond_4

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 376
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_5
    :goto_1
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PREV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v7, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getLong(Lcom/tom_roush/pdfbox/cos/COSName;)J

    move-result-wide v4

    goto :goto_2

    .line 332
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected trailer object at offset "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 333
    invoke-interface {v3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_7
    invoke-direct {v1, v10, v11, v7}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseXrefObjStream(JZ)J

    move-result-wide v4

    iget-object v0, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 386
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->getCurrentTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v7

    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-lez v0, :cond_8

    .line 391
    invoke-direct {v1, v4, v5}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->checkXRefOffset(J)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-lez v0, :cond_9

    cmp-long v0, v10, v4

    if-eqz v0, :cond_9

    .line 395
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PREV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v7, v0, v10, v11}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setLong(Lcom/tom_roush/pdfbox/cos/COSName;J)V

    goto :goto_3

    :cond_8
    const-wide/16 v12, -0x1

    :cond_9
    move-wide v10, v4

    .line 398
    :goto_3
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move-wide v4, v8

    move-wide v8, v12

    goto/16 :goto_0

    .line 400
    :cond_a
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/Prev loop at offset "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 404
    invoke-virtual {v0, v2, v3}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->setStartxref(J)V

    iget-object v0, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 405
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 406
    iget-object v2, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->setTrailer(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 407
    iget-object v2, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    sget-object v3, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;->STREAM:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;

    iget-object v4, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->getXrefType()Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;

    move-result-object v4

    if-ne v3, v4, :cond_c

    goto :goto_4

    :cond_c
    move v7, v12

    :goto_4
    invoke-virtual {v2, v7}, Lcom/tom_roush/pdfbox/cos/COSDocument;->setIsXRefStream(Z)V

    .line 409
    invoke-direct/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->checkXrefOffsets()V

    .line 411
    iget-object v2, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    iget-object v3, v1, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->getXrefTable()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDocument;->addXRefTable(Ljava/util/Map;)V

    return-object v0
.end method

.method protected parseXrefTable(J)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2732
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->peek()I

    move-result v0

    const/16 v1, 0x78

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2736
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2737
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 2743
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2744
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2745
    array-length v1, v1

    invoke-interface {v3, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->rewind(I)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 2748
    sget-object v3, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;->TABLE:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;

    invoke-virtual {v1, p1, p2, v3}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->nextXrefObj(JLcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;)V

    const-string p1, "trailer"

    .line 2750
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "PdfBox-Android"

    if-eqz p1, :cond_2

    const-string p1, "skipping empty xref table"

    .line 2752
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2759
    :cond_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readLine()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s"

    .line 2760
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2761
    array-length v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 2763
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected XRefTable Entry: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2770
    :cond_3
    :try_start_0
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x1

    .line 2782
    :try_start_1
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2790
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipSpaces()V

    move v1, v2

    :goto_0
    if-ge v1, p1, :cond_a

    iget-object v7, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2793
    invoke-interface {v7}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->isEOF()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    invoke-interface {v7}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->peek()I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {p0, v7}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isEndOfName(I)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object v7, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 2797
    invoke-interface {v7}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->peek()I

    move-result v7

    const/16 v8, 0x74

    if-ne v7, v8, :cond_5

    goto/16 :goto_2

    .line 2802
    :cond_5
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 2803
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2804
    array-length v9, v8

    const/4 v10, 0x3

    if-ge v9, v10, :cond_6

    .line 2806
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "invalid xref line: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2811
    :cond_6
    array-length v7, v8

    sub-int/2addr v7, v3

    aget-object v7, v8, v7

    const-string v9, "n"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2815
    :try_start_2
    aget-object v7, v8, v2

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-lez v7, :cond_8

    .line 2819
    aget-object v7, v8, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2820
    new-instance v8, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-direct {v8, v5, v6, v7}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    iget-object v7, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 2821
    invoke-virtual {v7, v8, v9, v10}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->setXRef(Lcom/tom_roush/pdfbox/cos/COSObjectKey;J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2826
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 2829
    :cond_7
    aget-object v7, v8, v4

    const-string v8, "f"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    :goto_1
    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 2834
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipSpaces()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2831
    :cond_9
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Corrupt XRefTable Entry - ObjID:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2836
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->skipSpaces()V

    .line 2837
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isDigit()Z

    move-result p1

    if-nez p1, :cond_2

    return v3

    .line 2786
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XRefTable: invalid number of objects: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2774
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XRefTable: invalid ID for the first object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method protected final rebuildTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2225
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchForObjects()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 2229
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->reset()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 2231
    sget-object v2, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;->TABLE:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->nextXrefObj(JLcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    .line 2232
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 2234
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->setXRef(Lcom/tom_roush/pdfbox/cos/COSObjectKey;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 2236
    invoke-virtual {v0, v3, v4}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->setStartxref(J)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->xrefTrailerResolver:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;

    .line 2237
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 2238
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->setTrailer(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 2240
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchForTrailer(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->searchForTrailerItems(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2243
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchForObjStreams()V

    .line 2246
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->searchForTrailerItems(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    move v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 2249
    :goto_1
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->prepareDecryption()V

    if-nez v2, :cond_3

    .line 2252
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchForObjStreams()V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->trailerWasRebuild:Z

    return-object v0
.end method

.method protected retrieveTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 251
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->getStartxrefOffset()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 254
    invoke-virtual {p0, v1, v2}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->parseXref(J)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 263
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 273
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ROOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    if-nez v2, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient()Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->rebuildTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    goto :goto_1

    .line 284
    :cond_2
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->prepareDecryption()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchCOSObjectKeyOffsets:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 285
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 287
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->bfSearchForObjStreams()V

    :cond_3
    :goto_1
    return-object v0

    .line 269
    :cond_4
    throw v1
.end method

.method public setEOFLookupRange(I)V
    .locals 1

    const/16 v0, 0xf

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->readTrailBytes:I

    :cond_0
    return-void
.end method

.method public setLenient(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->initialParseDone:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdfparser/COSParser;->isLenient:Z

    return-void

    .line 566
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot change leniency after parsing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
