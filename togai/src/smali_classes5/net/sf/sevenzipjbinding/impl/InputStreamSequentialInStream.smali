.class public Lnet/sf/sevenzipjbinding/impl/InputStreamSequentialInStream;
.super Ljava/lang/Object;
.source "InputStreamSequentialInStream.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/ISequentialInStream;


# instance fields
.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/InputStreamSequentialInStream;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InputStreamSequentialInStream;->inputStream:Ljava/io/InputStream;

    .line 57
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InputStreamSequentialInStream;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public read([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 32
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/InputStreamSequentialInStream;->inputStream:Ljava/io/InputStream;

    .line 37
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_1

    return v1

    :cond_1
    return p1

    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Lnet/sf/sevenzipjbinding/SevenZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error reading "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " bytes out of InputStream"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
