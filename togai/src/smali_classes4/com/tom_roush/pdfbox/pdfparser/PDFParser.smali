.class public Lcom/tom_roush/pdfbox/pdfparser/PDFParser;
.super Lcom/tom_roush/pdfbox/pdfparser/COSParser;
.source "PDFParser.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 45
    invoke-static {}, Lcom/tom_roush/pdfbox/io/ScratchFile;->getMainMemoryOnlyInstance()Lcom/tom_roush/pdfbox/io/ScratchFile;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Lcom/tom_roush/pdfbox/io/ScratchFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 58
    invoke-direct {p0, p1, v0, p2}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/tom_roush/pdfbox/io/ScratchFile;->getMainMemoryOnlyInstance()Lcom/tom_roush/pdfbox/io/ScratchFile;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/ScratchFile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 86
    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-static {}, Lcom/tom_roush/pdfbox/io/ScratchFile;->getMainMemoryOnlyInstance()Lcom/tom_roush/pdfbox/io/ScratchFile;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/ScratchFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdfparser/COSParser;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 122
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->fileLen:J

    .line 123
    invoke-direct {p0, p5}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->init(Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    return-void
.end method

.method private init(Lcom/tom_roush/pdfbox/io/ScratchFile;)V
    .locals 3

    const-string v0, "com.tom_roush.pdfbox.pdfparser.nonSequentialPDFParser.eofLookupRange"

    .line 128
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->setEOFLookupRange(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
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

    .line 141
    :cond_0
    :goto_0
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;-><init>(Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    return-void
.end method


# virtual methods
.method public getPDDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->source:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->getAccessPermission()Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;-><init>(Lcom/tom_roush/pdfbox/cos/COSDocument;Lcom/tom_roush/pdfbox/io/RandomAccessRead;Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;)V

    .line 155
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->getEncryption()Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->setEncryptionDictionary(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;)V

    return-object v0
.end method

.method protected initialParse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->retrieveTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 171
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->parseTrailerValuesDynamically(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 172
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v2, :cond_3

    .line 176
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 178
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->isLenient()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->CATALOG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    const/4 v2, 0x0

    .line 183
    move-object v3, v2

    check-cast v3, [Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v1, v2}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->parseDictObjects(Lcom/tom_roush/pdfbox/cos/COSDictionary;[Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 185
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 186
    instance-of v3, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v3, :cond_1

    .line 188
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {p0, v0, v2}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->parseDictObjects(Lcom/tom_roush/pdfbox/cos/COSDictionary;[Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 191
    :cond_1
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->checkPages(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 192
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PAGES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    instance-of v0, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->setDecrypted()V

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->initialParseDone:Z

    return-void

    .line 194
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Page tree root must be a dictionary"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected root dictionary, but got this: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->parsePDFHeader()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->parseFDFHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error: Header doesn\'t contain versioninfo"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->initialParseDone:Z

    if-nez v0, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->initialParse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 228
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    if-eqz v1, :cond_3

    .line 230
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v1, 0x0

    .line 231
    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    .line 233
    :cond_3
    throw v0
.end method
