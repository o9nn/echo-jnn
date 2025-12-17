.class public Lcom/tom_roush/pdfbox/io/ScratchFile;
.super Ljava/lang/Object;
.source "ScratchFile.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final ENLARGE_PAGE_COUNT:I = 0x10

.field private static final INIT_UNRESTRICTED_MAINMEM_PAGECOUNT:I = 0x186a0

.field private static final PAGE_SIZE:I = 0x1000


# instance fields
.field private file:Ljava/io/File;

.field private final freePages:Ljava/util/BitSet;

.field private final inMemoryMaxPageCount:I

.field private volatile inMemoryPages:[[B

.field private final ioLock:Ljava/lang/Object;

.field private volatile isClosed:Z

.field private final maxMainMemoryIsRestricted:Z

.field private final maxPageCount:I

.field private volatile pageCount:I

.field private raf:Ljava/io/RandomAccessFile;

.field private final scratchFileDirectory:Ljava/io/File;

.field private final useScratchFile:Z


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->ioLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->pageCount:I

    .line 68
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->freePages:Ljava/util/BitSet;

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->isClosed:Z

    .line 109
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->useMainMemory()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->isMainMemoryRestricted()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->maxMainMemoryIsRestricted:Z

    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->useTempFile()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    iput-boolean v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->useScratchFile:Z

    if-eqz v3, :cond_3

    .line 111
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->getTempDir()Ljava/io/File;

    move-result-object v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    iput-object v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->scratchFileDirectory:Ljava/io/File;

    if-eqz v3, :cond_5

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    .line 115
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scratch file directory does not exist: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_5
    :goto_4
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->isStorageRestricted()Z

    move-result v3

    const-wide/16 v4, 0x1000

    const-wide/32 v6, 0x7fffffff

    const v8, 0x7fffffff

    if-eqz v3, :cond_6

    .line 119
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->getMaxStorageBytes()J

    move-result-wide v9

    div-long/2addr v9, v4

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v3, v9

    goto :goto_5

    :cond_6
    move v3, v8

    :goto_5
    iput v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->maxPageCount:I

    .line 122
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->useMainMemory()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 123
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->isMainMemoryRestricted()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 124
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->getMaxMainMemoryBytes()J

    move-result-wide v8

    div-long/2addr v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v8, v3

    goto :goto_6

    :cond_7
    move v8, v0

    :cond_8
    :goto_6
    iput v8, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->inMemoryMaxPageCount:I

    if-eqz v2, :cond_9

    goto :goto_7

    :cond_9
    const v8, 0x186a0

    .line 127
    :goto_7
    new-array p1, v8, [[B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->inMemoryPages:[[B

    iget-object p1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->inMemoryPages:[[B

    .line 129
    array-length p1, p1

    invoke-virtual {v1, v0, p1}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-static {}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setupTempFileOnly()Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setTempDir(Ljava/io/File;)Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/io/ScratchFile;-><init>(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V

    return-void
.end method

.method private enlarge()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "fileLen after2:  "

    const-string v1, "fileLen before: "

    const-string v2, "fileLen after1: "

    const-string v3, "Error deleting scratch file: "

    const-string v4, "file: "

    const-string v5, "Expected scratch file size of "

    iget-object v6, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->ioLock:Ljava/lang/Object;

    .line 202
    monitor-enter v6

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/ScratchFile;->checkClosed()V

    iget v7, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->pageCount:I

    iget v8, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->maxPageCount:I

    if-lt v7, v8, :cond_0

    .line 208
    monitor-exit v6

    return-void

    :cond_0
    iget-boolean v7, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->useScratchFile:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;

    if-nez v7, :cond_2

    const-string v7, "PDFBox"

    const-string v9, ".tmp"

    iget-object v10, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->scratchFileDirectory:Ljava/io/File;

    .line 216
    invoke-static {v7, v9, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->file:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :try_start_1
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v9, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->file:Ljava/io/File;

    const-string v10, "rw"

    invoke-direct {v7, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->file:Ljava/io/File;

    .line 223
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PdfBox-Android"

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    throw v0

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;

    .line 231
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    iget v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->pageCount:I

    int-to-long v11, v3

    iget v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->inMemoryMaxPageCount:I

    int-to-long v13, v3

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x1000

    mul-long/2addr v11, v13

    cmp-long v3, v11, v9

    if-nez v3, :cond_6

    iget v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->pageCount:I

    add-int/lit8 v3, v3, 0x10

    iget v5, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->pageCount:I

    if-le v3, v5, :cond_8

    .line 243
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "PdfBox-Android"

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->file:Ljava/io/File;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "PdfBox-Android"

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", raf length: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", file length: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->file:Ljava/io/File;

    .line 247
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide/32 v3, 0x10000

    add-long/2addr v3, v9

    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;

    .line 251
    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 252
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "PdfBox-Android"

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", raf length: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", file length: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->file:Ljava/io/File;

    .line 255
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;

    .line 257
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;

    .line 261
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    iget-object v5, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/32 v11, 0xffff

    add-long/2addr v9, v11

    .line 262
    invoke-virtual {v5, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v5, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;

    .line 263
    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->write(I)V

    iget-object v5, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;

    .line 264
    invoke-virtual {v5, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string v1, "PdfBox-Android"

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", raf length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", file length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->freePages:Ljava/util/BitSet;

    iget v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->pageCount:I

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->pageCount:I

    add-int/lit8 v2, v2, 0x10

    .line 267
    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    goto :goto_1

    .line 236
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->maxMainMemoryIsRestricted:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->inMemoryPages:[[B

    .line 273
    array-length v0, v0

    int-to-long v1, v0

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x7fffffff

    .line 274
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    if-le v1, v0, :cond_8

    .line 277
    new-array v2, v1, [[B

    iget-object v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->inMemoryPages:[[B

    .line 278
    invoke-static {v3, v8, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->inMemoryPages:[[B

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->freePages:Ljava/util/BitSet;

    .line 281
    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(II)V

    .line 284
    :cond_8
    :goto_1
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static getMainMemoryOnlyInstance()Lcom/tom_roush/pdfbox/io/ScratchFile;
    .locals 3

    .line 142
    :try_start_0
    new-instance v0, Lcom/tom_roush/pdfbox/io/ScratchFile;

    invoke-static {}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setupMainMemoryOnly()Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/io/ScratchFile;-><init>(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected exception occurred creating main memory scratch file instance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->isClosed:Z

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Scratch file already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error deleting scratch file: "

    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->ioLock:Ljava/lang/Object;

    .line 490
    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->isClosed:Z

    if-eqz v2, :cond_0

    .line 494
    monitor-exit v1

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->isClosed:Z

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 503
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->file:Ljava/io/File;

    if-eqz v3, :cond_2

    .line 511
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 513
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 515
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->freePages:Ljava/util/BitSet;

    .line 517
    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->freePages:Ljava/util/BitSet;

    .line 519
    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->pageCount:I

    .line 521
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_3

    return-void

    .line 525
    :cond_3
    throw v2

    :catchall_0
    move-exception v1

    .line 521
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 515
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public createBuffer()Lcom/tom_roush/pdfbox/io/RandomAccess;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    new-instance v0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;-><init>(Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    return-object v0
.end method

.method public createBuffer(Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/io/RandomAccess;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    new-instance v0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;-><init>(Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 442
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    const/4 v3, 0x0

    .line 444
    invoke-virtual {v0, v1, v3, v2}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->write([BII)V

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 446
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->seek(J)V

    return-object v0
.end method

.method getNewPage()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->freePages:Ljava/util/BitSet;

    .line 160
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->freePages:Ljava/util/BitSet;

    const/4 v2, 0x0

    .line 162
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/ScratchFile;->enlarge()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->freePages:Ljava/util/BitSet;

    .line 168
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Maximum allowed scratch file memory exceeded."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->freePages:Ljava/util/BitSet;

    .line 175
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->clear(I)V

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->pageCount:I

    if-lt v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->pageCount:I

    .line 182
    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPageSize()I
    .locals 1

    const/16 v0, 0x1000

    return v0
.end method

.method markPagesAsFree([III)V
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->freePages:Ljava/util/BitSet;

    .line 459
    monitor-enter v0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 463
    :try_start_0
    aget v1, p1, p2

    if-ltz v1, :cond_0

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->pageCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->freePages:Ljava/util/BitSet;

    .line 464
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->freePages:Ljava/util/BitSet;

    .line 466
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->inMemoryMaxPageCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->inMemoryPages:[[B

    const/4 v3, 0x0

    .line 469
    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 475
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method readPage(I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Missing scratch file to read page with index "

    if-ltz p1, :cond_3

    iget v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->pageCount:I

    if-ge p1, v1, :cond_3

    iget v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->inMemoryMaxPageCount:I

    if-ge p1, v1, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->inMemoryPages:[[B

    .line 317
    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/ScratchFile;->checkClosed()V

    .line 323
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested page with index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " was not written before."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->ioLock:Ljava/lang/Object;

    .line 329
    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_2

    const/16 v0, 0x1000

    new-array v0, v0, [B

    int-to-long v3, p1

    iget p1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->inMemoryMaxPageCount:I

    int-to-long v5, p1

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1000

    mul-long/2addr v3, v5

    .line 338
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;

    .line 339
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 341
    monitor-exit v1

    return-object v0

    .line 333
    :cond_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/ScratchFile;->checkClosed()V

    .line 334
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " from."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception p1

    .line 342
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 310
    :cond_3
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/ScratchFile;->checkClosed()V

    .line 311
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Page index out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ". Max value: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->pageCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writePage(I[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_3

    iget v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->pageCount:I

    if-ge p1, v0, :cond_3

    .line 366
    array-length v0, p2

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->inMemoryMaxPageCount:I

    if-ge p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->maxMainMemoryIsRestricted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->inMemoryPages:[[B

    .line 375
    aput-object p2, v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->ioLock:Ljava/lang/Object;

    .line 380
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->inMemoryPages:[[B

    .line 382
    aput-object p2, v1, p1

    .line 383
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/ScratchFile;->checkClosed()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 383
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->ioLock:Ljava/lang/Object;

    .line 391
    monitor-enter v0

    .line 393
    :try_start_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/ScratchFile;->checkClosed()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    iget p1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->inMemoryMaxPageCount:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1000

    mul-long/2addr v2, v4

    .line 394
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->raf:Ljava/io/RandomAccessFile;

    .line 395
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 396
    monitor-exit v0

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 368
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong page size to write: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ". Expected: 4096"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_3
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/ScratchFile;->checkClosed()V

    .line 363
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Page index out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". Max value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFile;->pageCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
