.class public Lcom/tom_roush/pdfbox/cos/COSStream;
.super Lcom/tom_roush/pdfbox/cos/COSDictionary;
.source "COSStream.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private isWriting:Z

.field private randomAccess:Lcom/tom_roush/pdfbox/io/RandomAccess;

.field private final scratchFile:Lcom/tom_roush/pdfbox/io/ScratchFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-static {}, Lcom/tom_roush/pdfbox/io/ScratchFile;->getMainMemoryOnlyInstance()Lcom/tom_roush/pdfbox/io/ScratchFile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;-><init>(Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/io/ScratchFile;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 70
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Lcom/tom_roush/pdfbox/io/ScratchFile;->getMainMemoryOnlyInstance()Lcom/tom_roush/pdfbox/io/ScratchFile;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->scratchFile:Lcom/tom_roush/pdfbox/io/ScratchFile;

    return-void
.end method

.method static synthetic access$000(Lcom/tom_roush/pdfbox/cos/COSStream;)Lcom/tom_roush/pdfbox/io/RandomAccess;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->randomAccess:Lcom/tom_roush/pdfbox/io/RandomAccess;

    return-object p0
.end method

.method static synthetic access$102(Lcom/tom_roush/pdfbox/cos/COSStream;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->isWriting:Z

    return p1
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->randomAccess:Lcom/tom_roush/pdfbox/io/RandomAccess;

    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccess;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "COSStream has been closed and cannot be read. Perhaps its enclosing PDDocument has been closed?"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private ensureRandomAccessExists(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->randomAccess:Lcom/tom_roush/pdfbox/io/RandomAccess;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 115
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PdfBox-Android"

    const-string v0, "Create InputStream called without data being written before to stream."

    .line 118
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->scratchFile:Lcom/tom_roush/pdfbox/io/ScratchFile;

    .line 120
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/io/ScratchFile;->createBuffer()Lcom/tom_roush/pdfbox/io/RandomAccess;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->randomAccess:Lcom/tom_roush/pdfbox/io/RandomAccess;

    :cond_1
    return-void
.end method

.method private getFilterList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/filter/Filter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->getFilters()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 300
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v1, :cond_0

    .line 302
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    sget-object v2, Lcom/tom_roush/pdfbox/filter/FilterFactory;->INSTANCE:Lcom/tom_roush/pdfbox/filter/FilterFactory;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/filter/FilterFactory;->getFilter(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/filter/Filter;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 305
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_3

    .line 307
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 309
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 311
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 312
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSName;

    if-nez v4, :cond_2

    .line 314
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Forbidden type in filter array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_1

    const-string v2, "null"

    goto :goto_1

    .line 315
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_2
    sget-object v4, Lcom/tom_roush/pdfbox/filter/FilterFactory;->INSTANCE:Lcom/tom_roush/pdfbox/filter/FilterFactory;

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v4, v3}, Lcom/tom_roush/pdfbox/filter/FilterFactory;->getFilter(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/filter/Filter;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    :goto_2
    return-object v1
.end method


# virtual methods
.method public accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-interface {p1, p0}, Lcom/tom_roush/pdfbox/cos/ICOSVisitor;->visitFromStream(Lcom/tom_roush/pdfbox/cos/COSStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->randomAccess:Lcom/tom_roush/pdfbox/io/RandomAccess;

    if-eqz v0, :cond_0

    .line 432
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccess;->close()V

    :cond_0
    return-void
.end method

.method public createFilteredStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createRawOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    sget-object v0, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->DEFAULT:Lcom/tom_roush/pdfbox/filter/DecodeOptions;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream(Lcom/tom_roush/pdfbox/filter/DecodeOptions;)Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v0

    return-object v0
.end method

.method public createInputStream(Lcom/tom_roush/pdfbox/filter/DecodeOptions;)Lcom/tom_roush/pdfbox/cos/COSInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->checkClosed()V

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->isWriting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 172
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->ensureRandomAccessExists(Z)V

    .line 173
    new-instance v0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->randomAccess:Lcom/tom_roush/pdfbox/io/RandomAccess;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    .line 174
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->getFilterList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->scratchFile:Lcom/tom_roush/pdfbox/io/ScratchFile;

    invoke-static {v1, p0, v0, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSInputStream;->create(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/io/ScratchFile;Lcom/tom_roush/pdfbox/filter/DecodeOptions;)Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object p1

    return-object p1

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot read while there is an open stream writer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createOutputStream(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public createOutputStream(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->checkClosed()V

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->isWriting:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 218
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->randomAccess:Lcom/tom_roush/pdfbox/io/RandomAccess;

    .line 220
    invoke-static {p1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->scratchFile:Lcom/tom_roush/pdfbox/io/ScratchFile;

    .line 221
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/io/ScratchFile;->createBuffer()Lcom/tom_roush/pdfbox/io/RandomAccess;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->randomAccess:Lcom/tom_roush/pdfbox/io/RandomAccess;

    .line 222
    new-instance p1, Lcom/tom_roush/pdfbox/io/RandomAccessOutputStream;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->randomAccess:Lcom/tom_roush/pdfbox/io/RandomAccess;

    invoke-direct {p1, v0}, Lcom/tom_roush/pdfbox/io/RandomAccessOutputStream;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessWrite;)V

    .line 223
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;

    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->getFilterList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->scratchFile:Lcom/tom_roush/pdfbox/io/ScratchFile;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/tom_roush/pdfbox/cos/COSOutputStream;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->isWriting:Z

    .line 225
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSStream$1;

    invoke-direct {p1, p0, v0}, Lcom/tom_roush/pdfbox/cos/COSStream$1;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;Ljava/io/OutputStream;)V

    return-object p1

    .line 213
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot have more than one open stream writer."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createRawInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->checkClosed()V

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->isWriting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 137
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->ensureRandomAccessExists(Z)V

    .line 138
    new-instance v0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->randomAccess:Lcom/tom_roush/pdfbox/io/RandomAccess;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    return-object v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read while there is an open stream writer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRawOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->checkClosed()V

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->isWriting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->randomAccess:Lcom/tom_roush/pdfbox/io/RandomAccess;

    .line 271
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->scratchFile:Lcom/tom_roush/pdfbox/io/ScratchFile;

    .line 272
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/io/ScratchFile;->createBuffer()Lcom/tom_roush/pdfbox/io/RandomAccess;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->randomAccess:Lcom/tom_roush/pdfbox/io/RandomAccess;

    .line 273
    new-instance v0, Lcom/tom_roush/pdfbox/io/RandomAccessOutputStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->randomAccess:Lcom/tom_roush/pdfbox/io/RandomAccess;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessOutputStream;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessWrite;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->isWriting:Z

    .line 275
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSStream$2;

    invoke-direct {v1, p0, v0}, Lcom/tom_roush/pdfbox/cos/COSStream$2;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;Ljava/io/OutputStream;)V

    return-object v1

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot have more than one open stream writer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createUnfilteredStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getFilteredStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createRawInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getFilters()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 356
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    return-object v0
.end method

.method public getLength()J
    .locals 2

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSStream;->isWriting:Z

    if-nez v0, :cond_0

    .line 340
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is an open OutputStream associated with this COSStream. It must be closed before querying the length of this COSStream."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->toTextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnfilteredStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v0

    return-object v0
.end method

.method public setFilters(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 369
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public toTextString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 396
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v0

    .line 397
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 408
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    .line 409
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "PdfBox-Android"

    const-string v3, "An exception occurred trying to get the content - returning empty string instead"

    .line 401
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :goto_0
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 407
    throw v1
.end method
