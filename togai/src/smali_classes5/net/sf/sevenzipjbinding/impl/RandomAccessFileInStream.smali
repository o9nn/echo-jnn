.class public Lnet/sf/sevenzipjbinding/impl/RandomAccessFileInStream;
.super Ljava/lang/Object;
.source "RandomAccessFileInStream.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IInStream;


# instance fields
.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileInStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileInStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 80
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileInStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 61
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 63
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 65
    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    :try_start_1
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    const-string v1, "Error reading random access file"

    invoke-direct {v0, v1, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized seek(JI)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    const-string v0, "Seek: unknown origin: "

    monitor-enter p0

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    :try_start_0
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileInStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 43
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {p3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileInStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 39
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {p3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileInStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 35
    invoke-virtual {p3, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/RandomAccessFileInStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 50
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 52
    :try_start_1
    new-instance p2, Lnet/sf/sevenzipjbinding/SevenZipException;

    const-string p3, "Error while seek operation"

    invoke-direct {p2, p3, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method
