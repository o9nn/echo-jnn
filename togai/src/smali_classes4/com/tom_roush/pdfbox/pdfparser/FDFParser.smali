.class public Lcom/tom_roush/pdfbox/pdfparser/FDFParser;
.super Lcom/tom_roush/pdfbox/pdfparser/COSParser;
.source "FDFParser.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    .line 58
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->fileLen:J

    .line 59
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    .line 71
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    invoke-interface {p1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->fileLen:J

    .line 72
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private init()V
    .locals 3

    const-string v0, "com.tom_roush.pdfbox.pdfparser.nonSequentialPDFParser.eofLookupRange"

    .line 89
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->setEOFLookupRange(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "System property com.tom_roush.pdfbox.pdfparser.nonSequentialPDFParser.eofLookupRange does not contain an integer value, but: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    :goto_0
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    return-void
.end method

.method private initialParse()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->getStartxrefOffset()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-lez v4, :cond_0

    .line 122
    invoke-virtual {p0, v2, v3}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->parseXref(J)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    goto :goto_1

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->isLenient()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 131
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->isLenient()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    move v5, v0

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v5, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->rebuildTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    .line 145
    :cond_2
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->parseTrailerValuesDynamically(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 149
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v3, :cond_3

    .line 151
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-object v3, v1

    check-cast v3, [Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v2, v1}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->parseDictObjects(Lcom/tom_roush/pdfbox/cos/COSDictionary;[Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 153
    :cond_3
    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->initialParseDone:Z

    return-void

    .line 137
    :cond_4
    throw v2
.end method


# virtual methods
.method protected final isCatalog(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z
    .locals 1

    .line 84
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FDF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result p1

    return p1
.end method

.method public parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->parseFDFHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->initialParse()V

    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error: Header doesn\'t contain versioninfo"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 177
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v1, 0x0

    .line 180
    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    .line 182
    :cond_1
    throw v0
.end method
