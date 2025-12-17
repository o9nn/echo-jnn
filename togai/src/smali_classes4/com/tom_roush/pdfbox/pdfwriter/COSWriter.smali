.class public Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;
.super Ljava/lang/Object;
.source "COSWriter.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/cos/ICOSVisitor;
.implements Ljava/io/Closeable;


# static fields
.field public static final ARRAY_CLOSE:[B

.field public static final ARRAY_OPEN:[B

.field public static final COMMENT:[B

.field public static final DICT_CLOSE:[B

.field public static final DICT_OPEN:[B

.field public static final ENDOBJ:[B

.field public static final ENDSTREAM:[B

.field public static final EOF:[B

.field public static final GARBAGE:[B

.field public static final OBJ:[B

.field public static final REFERENCE:[B

.field public static final SPACE:[B

.field public static final STARTXREF:[B

.field public static final STREAM:[B

.field public static final TRAILER:[B

.field public static final VERSION:[B

.field public static final XREF:[B

.field public static final XREF_FREE:[B

.field public static final XREF_USED:[B


# instance fields
.field private final actualsAdded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;"
        }
    .end annotation
.end field

.field private byteRangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

.field private byteRangeLength:J

.field private byteRangeOffset:J

.field private currentObjectKey:Lcom/tom_roush/pdfbox/cos/COSObjectKey;

.field private fdfDocument:Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;

.field private final formatXrefGeneration:Ljava/text/NumberFormat;

.field private final formatXrefOffset:Ljava/text/NumberFormat;

.field private incrementPart:[B

.field private incrementalInput:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

.field private incrementalOutput:Ljava/io/OutputStream;

.field private incrementalUpdate:Z

.field private final keyObject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObjectKey;",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;"
        }
    .end annotation
.end field

.field private number:J

.field private final objectKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            "Lcom/tom_roush/pdfbox/cos/COSObjectKey;",
            ">;"
        }
    .end annotation
.end field

.field private final objectsToWrite:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;"
        }
    .end annotation
.end field

.field private final objectsToWriteSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;"
        }
    .end annotation
.end field

.field private output:Ljava/io/OutputStream;

.field private pdDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private reachedSignature:Z

.field private signatureInterface:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;

.field private signatureLength:J

.field private signatureOffset:J

.field private standardOutput:Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

.field private startxref:J

.field private willEncrypt:Z

.field private final writtenObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;"
        }
    .end annotation
.end field

.field private final xRefEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "<<"

    .line 84
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->DICT_OPEN:[B

    const-string v0, ">>"

    .line 88
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->DICT_CLOSE:[B

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/16 v2, 0x20

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    sput-object v1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->SPACE:[B

    new-array v0, v0, [B

    const/16 v1, 0x25

    aput-byte v1, v0, v3

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->COMMENT:[B

    const-string v0, "PDF-1.4"

    .line 101
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->VERSION:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->GARBAGE:[B

    const-string v0, "%%EOF"

    .line 109
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->EOF:[B

    const-string v0, "R"

    .line 115
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->REFERENCE:[B

    const-string v0, "xref"

    .line 119
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->XREF:[B

    const-string v0, "f"

    .line 123
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->XREF_FREE:[B

    const-string v0, "n"

    .line 127
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->XREF_USED:[B

    const-string v0, "trailer"

    .line 131
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->TRAILER:[B

    const-string v0, "startxref"

    .line 135
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->STARTXREF:[B

    const-string v0, "obj"

    .line 139
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->OBJ:[B

    const-string v0, "endobj"

    .line 143
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->ENDOBJ:[B

    const-string v0, "["

    .line 147
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->ARRAY_OPEN:[B

    const-string v0, "]"

    .line 151
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->ARRAY_CLOSE:[B

    const-string v0, "stream"

    .line 155
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->STREAM:[B

    const-string v0, "endstream"

    .line 159
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->ENDSTREAM:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0xat
        -0x1ct
        -0x4t
        -0x21t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 162
    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    const-string v2, "0000000000"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->formatXrefOffset:Ljava/text/NumberFormat;

    .line 165
    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 166
    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    const-string v2, "00000"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->formatXrefGeneration:Ljava/text/NumberFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->startxref:J

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->number:J

    .line 184
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectKeys:Ljava/util/Map;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->keyObject:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->xRefEntries:Ljava/util/List;

    .line 191
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectsToWriteSet:Ljava/util/Set;

    .line 194
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectsToWrite:Ljava/util/Deque;

    .line 197
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writtenObjects:Ljava/util/Set;

    .line 205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->actualsAdded:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->currentObjectKey:Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->pdDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->fdfDocument:Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->willEncrypt:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalUpdate:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->reachedSignature:Z

    .line 233
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->setOutput(Ljava/io/OutputStream;)V

    .line 234
    new-instance p1, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->output:Ljava/io/OutputStream;

    invoke-direct {p1, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->setStandardOutput(Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 162
    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    const-string v2, "0000000000"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->formatXrefOffset:Ljava/text/NumberFormat;

    .line 165
    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 166
    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    const-string v2, "00000"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->formatXrefGeneration:Ljava/text/NumberFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->startxref:J

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->number:J

    .line 184
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectKeys:Ljava/util/Map;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->keyObject:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->xRefEntries:Ljava/util/List;

    .line 191
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectsToWriteSet:Ljava/util/Set;

    .line 194
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectsToWrite:Ljava/util/Deque;

    .line 197
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writtenObjects:Ljava/util/Set;

    .line 205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->actualsAdded:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->currentObjectKey:Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->pdDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->fdfDocument:Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->willEncrypt:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalUpdate:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->reachedSignature:Z

    .line 251
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->setOutput(Ljava/io/OutputStream;)V

    .line 252
    new-instance v0, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->output:Ljava/io/OutputStream;

    invoke-interface {p2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->length()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;-><init>(Ljava/io/OutputStream;J)V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->setStandardOutput(Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;)V

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalInput:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalOutput:Ljava/io/OutputStream;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalUpdate:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/io/RandomAccessRead;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lcom/tom_roush/pdfbox/io/RandomAccessRead;",
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;-><init>(Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectsToWrite:Ljava/util/Deque;

    .line 289
    invoke-interface {p1, p3}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private addObjectToWrite(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 3

    .line 501
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v0, :cond_0

    .line 503
    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writtenObjects:Ljava/util/Set;

    .line 506
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectsToWriteSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->actualsAdded:Ljava/util/Set;

    .line 507
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectKeys:Ljava/util/Map;

    .line 515
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->keyObject:Ljava/util/Map;

    .line 518
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 519
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->isNeedToBeUpdated(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->isNeedToBeUpdated(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectsToWrite:Ljava/util/Deque;

    .line 525
    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectsToWriteSet:Ljava/util/Set;

    .line 526
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->actualsAdded:Ljava/util/Set;

    .line 529
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private doWriteIncrement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 737
    new-instance v0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalInput:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalOutput:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalOutput:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->output:Ljava/io/OutputStream;

    .line 739
    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private doWriteObjects()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectsToWrite:Ljava/util/Deque;

    .line 490
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectsToWrite:Ljava/util/Deque;

    .line 492
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBase;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectsToWriteSet:Ljava/util/Set;

    .line 493
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->doWriteObject(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doWriteSignature()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalInput:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 745
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->signatureOffset:J

    iget-wide v4, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->signatureLength:J

    add-long/2addr v4, v2

    .line 748
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->getPos()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->signatureLength:J

    add-long/2addr v8, v0

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->signatureOffset:J

    sub-long/2addr v8, v0

    sub-long/2addr v6, v8

    .line 750
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "0 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->byteRangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 753
    sget-object v10, Lcom/tom_roush/pdfbox/cos/COSInteger;->ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v9, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->byteRangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v10, 0x1

    .line 754
    invoke-static {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->byteRangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v3, 0x2

    .line 755
    invoke-static {v4, v5}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->byteRangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v3, 0x3

    .line 756
    invoke-static {v6, v7}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 758
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->byteRangeLength:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->output:Ljava/io/OutputStream;

    .line 766
    check-cast v2, Ljava/io/ByteArrayOutputStream;

    .line 767
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 768
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementPart:[B

    .line 771
    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    :goto_0
    int-to-long v3, v11

    iget-wide v5, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->byteRangeLength:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    .line 774
    array-length v5, v2

    if-lt v11, v5, :cond_0

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementPart:[B

    iget-wide v6, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->byteRangeOffset:J

    add-long/2addr v6, v3

    sub-long/2addr v6, v0

    long-to-int v3, v6

    const/16 v4, 0x20

    .line 776
    aput-byte v4, v5, v3

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementPart:[B

    iget-wide v6, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->byteRangeOffset:J

    add-long/2addr v6, v3

    sub-long/2addr v6, v0

    long-to-int v3, v6

    .line 780
    aget-byte v4, v2, v11

    aput-byte v4, v5, v3

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->signatureInterface:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;

    if-eqz v0, :cond_2

    .line 787
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getDataToSign()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->signatureInterface:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;

    .line 790
    invoke-interface {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;->sign(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 791
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writeExternalSignature([B)V

    :cond_2
    return-void

    .line 760
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t write new byteRange \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not enough space: byteRange.length(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 761
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", byteRangeLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->byteRangeLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doWriteXRefInc(Lcom/tom_roush/pdfbox/cos/COSDocument;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->isXRefStream()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    cmp-long v0, p2, v1

    if-eqz v0, :cond_3

    .line 648
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSDocument;)V

    .line 651
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getXRefEntries()Ljava/util/List;

    move-result-object v3

    .line 652
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;

    .line 654
    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->addEntry(Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;)V

    goto :goto_0

    .line 657
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v3

    iget-boolean v4, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalUpdate:Z

    if-eqz v4, :cond_2

    .line 661
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->PREV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getStartXref()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setLong(Lcom/tom_roush/pdfbox/cos/COSName;J)V

    goto :goto_1

    .line 665
    :cond_2
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->PREV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 667
    :goto_1
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->addTrailerInfo(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 670
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getNumber()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->setSize(J)V

    .line 672
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->getPos()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->setStartxref(J)V

    .line 673
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfparser/PDFXRefStream;->getStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    .line 674
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->doWriteObject(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 677
    :cond_3
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->isXRefStream()Z

    move-result v0

    if-eqz v0, :cond_4

    cmp-long v0, p2, v1

    if-eqz v0, :cond_6

    .line 679
    :cond_4
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 680
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->PREV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getStartXref()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setLong(Lcom/tom_roush/pdfbox/cos/COSName;J)V

    cmp-long p2, p2, v1

    if-eqz p2, :cond_5

    .line 683
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->XREF_STM:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 684
    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 685
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStartxref()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setLong(Lcom/tom_roush/pdfbox/cos/COSName;J)V

    .line 687
    :cond_5
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->doWriteXRefTable()V

    .line 688
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->doWriteTrailer(Lcom/tom_roush/pdfbox/cos/COSDocument;)V

    :cond_6
    return-void
.end method

.method private doWriteXRefTable()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    invoke-static {}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->getNullEntry()Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->addXRefEntry(Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;)V

    .line 698
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getXRefEntries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 701
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->getPos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->setStartxref(J)V

    .line 703
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->XREF:[B

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 704
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V

    .line 708
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getXRefEntries()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getXRefRanges(Ljava/util/List;)[Ljava/lang/Long;

    move-result-object v0

    .line 709
    array-length v1, v0

    .line 712
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 716
    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 717
    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {p0, v7, v8, v5, v6}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writeXrefRange(JJ)V

    move v7, v2

    :goto_1
    int-to-long v8, v7

    cmp-long v8, v8, v5

    if-gez v8, :cond_0

    iget-object v8, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->xRefEntries:Ljava/util/List;

    add-int/lit8 v9, v4, 0x1

    .line 721
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;

    invoke-direct {p0, v4}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writeXrefEntry(Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;)V

    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getObjectKey(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSObjectKey;
    .locals 5

    .line 942
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v0, :cond_0

    .line 944
    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectKeys:Ljava/util/Map;

    .line 948
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectKeys:Ljava/util/Map;

    .line 951
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    :cond_1
    if-nez v1, :cond_2

    .line 955
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getNumber()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->setNumber(J)V

    .line 956
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getNumber()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;-><init>(JI)V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectKeys:Ljava/util/Map;

    .line 957
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectKeys:Ljava/util/Map;

    .line 960
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method private isNeedToBeUpdated(Lcom/tom_roush/pdfbox/cos/COSBase;)Z
    .locals 1

    .line 540
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSUpdateInfo;

    if-eqz v0, :cond_0

    .line 542
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSUpdateInfo;

    invoke-interface {p1}, Lcom/tom_roush/pdfbox/cos/COSUpdateInfo;->isNeedToBeUpdated()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private prepareIncrement(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 298
    :try_start_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getXrefTable()Ljava/util/Map;

    move-result-object v1

    .line 301
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 302
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getHighestXRefObjectNumber()J

    move-result-wide v2

    .line 303
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getObjectFromPool(Lcom/tom_roush/pdfbox/cos/COSObjectKey;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 308
    instance-of v5, v4, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectKeys:Ljava/util/Map;

    .line 310
    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->keyObject:Ljava/util/Map;

    .line 311
    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_1
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    move-wide v2, v4

    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->setNumber(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "PdfBox-Android"

    .line 325
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private setOutput(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->output:Ljava/io/OutputStream;

    return-void
.end method

.method private setStandardOutput(Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->standardOutput:Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    return-void
.end method

.method public static writeString(Lcom/tom_roush/pdfbox/cos/COSString;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1459
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSString;->getForceHexForm()Z

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writeString([BZLjava/io/OutputStream;)V

    return-void
.end method

.method public static writeString([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1471
    invoke-static {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writeString([BZLjava/io/OutputStream;)V

    return-void
.end method

.method private static writeString([BZLjava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 1487
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p0, v2

    if-gez v3, :cond_0

    goto :goto_3

    :cond_0
    const/16 v4, 0xd

    if-eq v3, v4, :cond_5

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_5

    const/16 p1, 0x28

    .line 1507
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1508
    array-length v1, p0

    :goto_1
    const/16 v2, 0x29

    if-ge v0, v1, :cond_4

    aget-byte v3, p0, v0

    const/16 v4, 0x5c

    if-eq v3, p1, :cond_3

    if-eq v3, v2, :cond_3

    if-eq v3, v4, :cond_3

    .line 1519
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    .line 1515
    :cond_3
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 1516
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1523
    :cond_4
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4

    :cond_5
    :goto_3
    const/16 p1, 0x3c

    .line 1528
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1529
    invoke-static {p0, p2}, Lcom/tom_roush/pdfbox/util/Hex;->writeHexBytes([BLjava/io/OutputStream;)V

    const/16 p0, 0x3e

    .line 1530
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    :goto_4
    return-void
.end method

.method private writeXrefEntry(Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->formatXrefOffset:Ljava/text/NumberFormat;

    .line 869
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->getOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->formatXrefGeneration:Ljava/text/NumberFormat;

    .line 870
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->getKey()Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 871
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 872
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    sget-object v2, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->SPACE:[B

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 873
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    sget-object v3, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 874
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 875
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->isFree()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->XREF_FREE:[B

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->XREF_USED:[B

    :goto_0
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 876
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeCRLF()V

    return-void
.end method

.method private writeXrefRange(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 862
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->SPACE:[B

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 863
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 864
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V

    return-void
.end method


# virtual methods
.method protected addXRefEntry(Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;)V
    .locals 1

    .line 336
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getXRefEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->close()V

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalOutput:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    return-void
.end method

.method protected doWriteBody(Lcom/tom_roush/pdfbox/cos/COSDocument;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    .line 466
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ROOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 467
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    .line 468
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ENCRYPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 471
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->addObjectToWrite(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 475
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->addObjectToWrite(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 478
    :cond_1
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->doWriteObjects()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->willEncrypt:Z

    if-eqz p1, :cond_2

    .line 482
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->addObjectToWrite(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 485
    :cond_2
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->doWriteObjects()V

    return-void
.end method

.method protected doWriteHeader(Lcom/tom_roush/pdfbox/cos/COSDocument;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->fdfDocument:Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;

    if-eqz v0, :cond_0

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%FDF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getVersion()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 590
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%PDF-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getVersion()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 592
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 594
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V

    .line 595
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->COMMENT:[B

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 596
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->GARBAGE:[B

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 597
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V

    return-void
.end method

.method public doWriteObject(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writtenObjects:Ljava/util/Set;

    .line 556
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getObjectKey(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->currentObjectKey:Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    .line 560
    new-instance v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->getPos()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->currentObjectKey:Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;-><init>(JLcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSObjectKey;)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->addXRefEntry(Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;)V

    .line 562
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->currentObjectKey:Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 563
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->SPACE:[B

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 564
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->currentObjectKey:Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 565
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 566
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->OBJ:[B

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 567
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V

    .line 568
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/cos/COSBase;->accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;

    .line 569
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V

    .line 570
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->ENDOBJ:[B

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 571
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V

    return-void
.end method

.method protected doWriteTrailer(Lcom/tom_roush/pdfbox/cos/COSDocument;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->TRAILER:[B

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 611
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V

    .line 613
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 615
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getXRefEntries()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 616
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getXRefEntries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getXRefEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;

    .line 617
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->SIZE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->getKey()Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setLong(Lcom/tom_roush/pdfbox/cos/COSName;J)V

    iget-boolean v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalUpdate:Z

    if-nez v1, :cond_0

    .line 621
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PREV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 623
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->isXRefStream()Z

    move-result p1

    if-nez p1, :cond_1

    .line 625
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->XREF_STM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 628
    :cond_1
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->DOC_CHECKSUM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 630
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->ID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 633
    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->setDirect(Z)V

    .line 636
    :cond_2
    invoke-virtual {v0, p0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;

    return-void
.end method

.method public getDataToSign()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementPart:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalInput:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->signatureOffset:J

    .line 815
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->length()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v0, v1

    iget-wide v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->signatureLength:J

    long-to-int v1, v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementPart:[B

    .line 817
    array-length v2, v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    filled-new-array {v3, v0, v1, v2}, [I

    move-result-object v0

    .line 820
    new-instance v1, Ljava/io/SequenceInputStream;

    new-instance v2, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalInput:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    invoke-direct {v2, v3}, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementPart:[B

    invoke-direct {v3, v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;-><init>([B[I)V

    invoke-direct {v1, v2, v3}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object v1

    .line 812
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PDF not prepared for signing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->number:J

    return-wide v0
.end method

.method public getObjectKeys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            "Lcom/tom_roush/pdfbox/cos/COSObjectKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->objectKeys:Ljava/util/Map;

    return-object v0
.end method

.method protected getOutput()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->output:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->standardOutput:Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    return-object v0
.end method

.method protected getStartxref()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->startxref:J

    return-wide v0
.end method

.method protected getXRefEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->xRefEntries:Ljava/util/List;

    return-object v0
.end method

.method protected getXRefRanges(Ljava/util/List;)[Ljava/lang/Long;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;",
            ">;)[",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 902
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 903
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, -0x2

    const-wide/16 v4, 0x1

    move-wide v6, v2

    move-wide v8, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;

    .line 905
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriterXRefEntry;->getKey()Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v10

    add-long v12, v6, v4

    cmp-long v12, v10, v12

    if-nez v12, :cond_0

    add-long/2addr v8, v4

    goto :goto_1

    :cond_0
    cmp-long v12, v6, v2

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    sub-long/2addr v6, v8

    add-long/2addr v6, v4

    .line 917
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v8, v4

    :goto_1
    move-wide v6, v10

    goto :goto_0

    .line 924
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    sub-long/2addr v6, v8

    add-long/2addr v6, v4

    .line 926
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Long;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Long;

    return-object p1
.end method

.method protected setNumber(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->number:J

    return-void
.end method

.method protected setStartxref(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->startxref:J

    return-void
.end method

.method public visitFromArray(Lcom/tom_roush/pdfbox/cos/COSArray;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 970
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->ARRAY_OPEN:[B

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 971
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 973
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 974
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v2, :cond_2

    .line 976
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSBase;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 978
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->visitFromDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/lang/Object;

    goto :goto_2

    .line 982
    :cond_1
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->addObjectToWrite(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 983
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writeReference(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_2

    .line 986
    :cond_2
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v2, :cond_5

    .line 988
    move-object v2, v1

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->willEncrypt:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalUpdate:Z

    if-nez v3, :cond_4

    .line 989
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v3, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 1000
    :cond_3
    invoke-virtual {v2, p0}, Lcom/tom_roush/pdfbox/cos/COSBase;->accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;

    goto :goto_2

    .line 995
    :cond_4
    :goto_1
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->addObjectToWrite(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 996
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writeReference(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    .line 1005
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    invoke-virtual {v1, p0}, Lcom/tom_roush/pdfbox/cos/COSNull;->accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;

    goto :goto_2

    .line 1009
    :cond_6
    invoke-virtual {v1, p0}, Lcom/tom_roush/pdfbox/cos/COSBase;->accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 1012
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    rem-int/lit8 v1, v0, 0xa

    if-nez v1, :cond_7

    .line 1016
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V

    goto :goto_0

    .line 1020
    :cond_7
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->SPACE:[B

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    goto :goto_0

    .line 1024
    :cond_8
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->ARRAY_CLOSE:[B

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 1025
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitFromBoolean(Lcom/tom_roush/pdfbox/cos/COSBoolean;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1032
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSBoolean;->writePDF(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitFromDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->reachedSignature:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1041
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 1042
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->SIG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->DOC_TIME_STAMP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->reachedSignature:Z

    .line 1047
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    sget-object v2, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->DICT_OPEN:[B

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 1048
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V

    .line 1049
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1051
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSBase;

    if-eqz v2, :cond_2

    .line 1054
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, p0}, Lcom/tom_roush/pdfbox/cos/COSName;->accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;

    .line 1055
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v3

    sget-object v4, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->SPACE:[B

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 1056
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v3, :cond_6

    .line 1058
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iget-boolean v3, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalUpdate:Z

    if-nez v3, :cond_4

    .line 1064
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->XOBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1065
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->XOBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1067
    invoke-virtual {v3, v1}, Lcom/tom_roush/pdfbox/cos/COSBase;->setDirect(Z)V

    .line 1069
    :cond_3
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->RESOURCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1070
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->RESOURCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1072
    invoke-virtual {v3, v1}, Lcom/tom_roush/pdfbox/cos/COSBase;->setDirect(Z)V

    .line 1076
    :cond_4
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1080
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->visitFromDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1084
    :cond_5
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->addObjectToWrite(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1085
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writeReference(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto/16 :goto_2

    .line 1088
    :cond_6
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v3, :cond_9

    .line 1090
    move-object v0, v2

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    iget-boolean v3, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->willEncrypt:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalUpdate:Z

    if-nez v3, :cond_8

    .line 1091
    instance-of v3, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v3, :cond_8

    if-nez v0, :cond_7

    goto :goto_1

    .line 1102
    :cond_7
    invoke-virtual {v0, p0}, Lcom/tom_roush/pdfbox/cos/COSBase;->accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;

    goto :goto_2

    .line 1097
    :cond_8
    :goto_1
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->addObjectToWrite(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1098
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writeReference(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_2

    :cond_9
    iget-boolean v3, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->reachedSignature:Z

    if-eqz v3, :cond_a

    .line 1109
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1111
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->getPos()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->signatureOffset:J

    .line 1112
    invoke-virtual {v2, p0}, Lcom/tom_roush/pdfbox/cos/COSBase;->accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;

    .line 1113
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->getPos()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->signatureOffset:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->signatureLength:J

    goto :goto_2

    :cond_a
    iget-boolean v3, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->reachedSignature:Z

    if-eqz v3, :cond_b

    .line 1115
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->BYTERANGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->byteRangeArray:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 1118
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->getPos()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->byteRangeOffset:J

    .line 1119
    invoke-virtual {v2, p0}, Lcom/tom_roush/pdfbox/cos/COSBase;->accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;

    .line 1120
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->getPos()J

    move-result-wide v2

    sub-long/2addr v2, v5

    iget-wide v4, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->byteRangeOffset:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->byteRangeLength:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->reachedSignature:Z

    goto :goto_2

    .line 1125
    :cond_b
    invoke-virtual {v2, p0}, Lcom/tom_roush/pdfbox/cos/COSBase;->accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;

    .line 1128
    :goto_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V

    goto/16 :goto_0

    .line 1139
    :cond_c
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->DICT_CLOSE:[B

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 1140
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitFromDocument(Lcom/tom_roush/pdfbox/cos/COSDocument;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalUpdate:Z

    if-nez v0, :cond_0

    .line 1149
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->doWriteHeader(Lcom/tom_roush/pdfbox/cos/COSDocument;)V

    goto :goto_0

    .line 1157
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeCRLF()V

    .line 1160
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->doWriteBody(Lcom/tom_roush/pdfbox/cos/COSDocument;)V

    .line 1163
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1168
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->XREF_STM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getLong(Lcom/tom_roush/pdfbox/cos/COSName;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, -0x1

    :goto_1
    iget-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalUpdate:Z

    if-nez v2, :cond_3

    .line 1171
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->isXRefStream()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 1177
    :cond_2
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->doWriteXRefTable()V

    .line 1178
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->doWriteTrailer(Lcom/tom_roush/pdfbox/cos/COSDocument;)V

    goto :goto_3

    .line 1173
    :cond_3
    :goto_2
    invoke-direct {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->doWriteXRefInc(Lcom/tom_roush/pdfbox/cos/COSDocument;J)V

    .line 1182
    :goto_3
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->STARTXREF:[B

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 1183
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V

    .line 1184
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStartxref()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 1185
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V

    .line 1186
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->EOF:[B

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 1187
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V

    iget-boolean p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalUpdate:Z

    if-eqz p1, :cond_6

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->signatureOffset:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->byteRangeOffset:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    goto :goto_4

    .line 1197
    :cond_4
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->doWriteSignature()V

    goto :goto_5

    .line 1193
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->doWriteIncrement()V

    :cond_6
    :goto_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitFromFloat(Lcom/tom_roush/pdfbox/cos/COSFloat;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1207
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSFloat;->writePDF(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitFromInt(Lcom/tom_roush/pdfbox/cos/COSInteger;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1214
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSInteger;->writePDF(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitFromName(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1221
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->writePDF(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitFromNull(Lcom/tom_roush/pdfbox/cos/COSNull;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1228
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSNull;->writePDF(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitFromStream(Lcom/tom_roush/pdfbox/cos/COSStream;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->willEncrypt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->pdDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 1254
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getEncryption()Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getSecurityHandler()Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->currentObjectKey:Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    .line 1255
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->currentObjectKey:Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->encryptStream(Lcom/tom_roush/pdfbox/cos/COSStream;JI)V

    :cond_0
    const/4 v0, 0x0

    .line 1262
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->visitFromDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/lang/Object;

    .line 1263
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->STREAM:[B

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 1264
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeCRLF()V

    .line 1266
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createRawInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1267
    :try_start_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 1269
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeCRLF()V

    .line 1270
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->ENDSTREAM:[B

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 1271
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->writeEOL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 1278
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1280
    :cond_2
    throw v0
.end method

.method public visitFromString(Lcom/tom_roush/pdfbox/cos/COSString;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->willEncrypt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->pdDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 1288
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getEncryption()Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getSecurityHandler()Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->currentObjectKey:Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    .line 1290
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->currentObjectKey:Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    .line 1291
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result v3

    .line 1288
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->encryptString(Lcom/tom_roush/pdfbox/cos/COSString;JI)V

    .line 1293
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writeString(Lcom/tom_roush/pdfbox/cos/COSString;Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public write(Lcom/tom_roush/pdfbox/cos/COSDocument;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1305
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;-><init>(Lcom/tom_roush/pdfbox/cos/COSDocument;)V

    .line 1306
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->write(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method

.method public write(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1320
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->write(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;)V

    return-void
.end method

.method public write(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1338
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 1339
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1338
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->pdDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->signatureInterface:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;

    iget-boolean p2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalUpdate:Z

    if-eqz p2, :cond_1

    .line 1346
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->prepareIncrement(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 1350
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->isAllSecurityToBeRemoved()Z

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->willEncrypt:Z

    .line 1355
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object p1

    .line 1356
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    .line 1357
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->ENCRYPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->pdDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 1361
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getEncryption()Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalUpdate:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->pdDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 1365
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getEncryption()Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getSecurityHandler()Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    move-result-object p1

    .line 1366
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->hasProtectionPolicy()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->pdDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 1371
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->prepareDocumentForEncryption(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    goto :goto_1

    .line 1368
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PDF contains an encryption dictionary, please remove it with setAllSecurityToBeRemoved() or set a protection policy with protect()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->willEncrypt:Z

    goto :goto_2

    :cond_5
    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->willEncrypt:Z

    :goto_2
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->pdDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 1381
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object p1

    .line 1382
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    .line 1385
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->ID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 1386
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v5, 0x2

    if-eqz v4, :cond_6

    .line 1388
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 1389
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v4

    if-ne v4, v5, :cond_7

    move v1, v2

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    .line 1395
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v4

    if-ne v4, v5, :cond_8

    move v1, v2

    :cond_8
    if-nez v1, :cond_9

    iget-boolean v4, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalUpdate:Z

    if-eqz v4, :cond_d

    :cond_9
    :try_start_0
    const-string v4, "MD5"

    .line 1404
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 1416
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1419
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getValues()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 1421
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_4

    :cond_a
    if-eqz v1, :cond_b

    .line 1425
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    goto :goto_5

    :cond_b
    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    :goto_5
    if-eqz v1, :cond_c

    move-object v1, v0

    goto :goto_6

    .line 1427
    :cond_c
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    .line 1428
    :goto_6
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 1429
    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1430
    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1431
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 1433
    :cond_d
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p1

    .line 1409
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public write(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->fdfDocument:Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->willEncrypt:Z

    .line 1447
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object p1

    .line 1448
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;

    return-void
.end method

.method public writeExternalSignature([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementPart:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalInput:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    if-eqz v0, :cond_1

    .line 838
    invoke-static {p1}, Lcom/tom_roush/pdfbox/util/Hex;->getBytes([B)[B

    move-result-object p1

    .line 841
    array-length v0, p1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->signatureLength:J

    const-wide/16 v4, 0x2

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->signatureOffset:J

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalInput:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 848
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->length()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementPart:[B

    add-int/lit8 v0, v0, 0x1

    .line 849
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 852
    new-instance p1, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalInput:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    invoke-direct {p1, v0}, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalOutput:Ljava/io/OutputStream;

    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementalOutput:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementPart:[B

    .line 853
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->incrementPart:[B

    return-void

    .line 843
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t write signature, not enough space; adjust it with SignatureOptions.setPreferredSignatureSize"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 836
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "PDF not prepared for setting signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeReference(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1241
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getObjectKey(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    move-result-object p1

    .line 1242
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 1243
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->SPACE:[B

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 1244
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getGeneration()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 1245
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    .line 1246
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getStandardOutput()Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->REFERENCE:[B

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSStandardOutputStream;->write([B)V

    return-void
.end method
