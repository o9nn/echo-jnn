.class public Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;
.super Ljava/lang/Object;
.source "PDStream.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final stream:Lcom/tom_roush/pdfbox/cos/COSStream;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDocument;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 94
    move-object v1, v0

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSBase;

    invoke-direct {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method private constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 135
    invoke-virtual {p1, p3}, Lcom/tom_roush/pdfbox/cos/COSStream;->createOutputStream(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/io/OutputStream;

    move-result-object v0

    .line 136
    invoke-static {p2, v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 144
    :cond_0
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 144
    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 145
    throw p1
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method private internalGetDecodeParams(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 370
    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    .line 371
    instance-of v0, p2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 373
    move-object v0, p2

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->convertBasicTypesToMap(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;

    move-result-object v0

    .line 374
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v1, v0, p2, v2, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/lang/Object;Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)V

    return-object v1

    .line 377
    :cond_0
    instance-of p1, p2, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz p1, :cond_3

    .line 379
    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 380
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 381
    :goto_0
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 383
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 384
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v2, :cond_1

    .line 386
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->convertBasicTypesToMap(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 390
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected COSDictionary, got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PdfBox-Android"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_2
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addCompression()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getFilters()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 165
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->getLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 170
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 171
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSStream;->createOutputStream(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/io/OutputStream;

    move-result-object v0

    .line 172
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 177
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :goto_0
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 182
    throw v1

    .line 186
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->setFilters(Ljava/util/List;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 236
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v0

    return-object v0
.end method

.method public createInputStream(Lcom/tom_roush/pdfbox/filter/DecodeOptions;)Lcom/tom_roush/pdfbox/cos/COSInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 241
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream(Lcom/tom_roush/pdfbox/filter/DecodeOptions;)Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object p1

    return-object p1
.end method

.method public createInputStream(Ljava/util/List;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 255
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createRawInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 257
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getFilters()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 260
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 262
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 269
    :cond_0
    sget-object v5, Lcom/tom_roush/pdfbox/filter/FilterFactory;->INSTANCE:Lcom/tom_roush/pdfbox/filter/FilterFactory;

    invoke-virtual {v5, v4}, Lcom/tom_roush/pdfbox/filter/FilterFactory;->getFilter(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/filter/Filter;

    move-result-object v4

    :try_start_0
    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 272
    invoke-virtual {v4, v0, v1, v5, v3}, Lcom/tom_roush/pdfbox/filter/Filter;->decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/filter/DecodeResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 278
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 279
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 276
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 277
    throw p1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public createOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 213
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public createOutputStream(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 225
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createOutputStream(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    return-object v0
.end method

.method public getDecodeParms()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DECODE_PARMS:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->internalGetDecodeParams(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDecodedStreamLength()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 546
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DL:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    return v0
.end method

.method public getFile()Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 419
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 420
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;->createFS(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;

    move-result-object v0

    return-object v0
.end method

.method public getFileDecodeParams()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->F_DECODE_PARMS:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->internalGetDecodeParams(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFileFilters()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 442
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F_FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 443
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v1, :cond_0

    .line 445
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 446
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->F_FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/lang/Object;Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_0

    .line 449
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_1

    .line 451
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 452
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->convertCOSNameCOSArrayToList(Lcom/tom_roush/pdfbox/cos/COSArray;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getFilters()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 319
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->getFilters()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 320
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v1, :cond_0

    .line 322
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 323
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {v1, v0, v0, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/lang/Object;Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_0

    .line 325
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_1

    .line 327
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getLength()I
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 307
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public getMetadata()Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 512
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->METADATA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 513
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_0

    .line 515
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    goto :goto_1

    .line 517
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSNull;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 523
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a COSStream but was a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStream()Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    return-object v0
.end method

.method public setDecodeParms(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 406
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DECODE_PARMS:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 407
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    .line 406
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setDecodedStreamLength(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 556
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DL:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setFile(Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 430
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setFileDecodeParams(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 475
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F_DECODE_PARMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFileFilters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 464
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->convertStringListToCOSNameCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 465
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F_FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFilters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ">;)V"
        }
    .end annotation

    .line 339
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 340
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setMetadata(Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->stream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 536
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->METADATA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 490
    :try_start_1
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 498
    :cond_1
    throw v1
.end method
