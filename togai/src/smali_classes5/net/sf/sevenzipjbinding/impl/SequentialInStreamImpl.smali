.class public Lnet/sf/sevenzipjbinding/impl/SequentialInStreamImpl;
.super Ljava/lang/Object;
.source "SequentialInStreamImpl.java"

# interfaces
.implements Lnet/sf/sevenzipjbinding/ISequentialInStream;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/SequentialInStreamImpl;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/SequentialInStreamImpl;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 36
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/SequentialInStreamImpl;->inputStream:Ljava/io/InputStream;

    .line 41
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_1

    return v1

    :cond_1
    return p1

    :catch_0
    move-exception p1

    .line 47
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    const-string v1, "Error reading input stream"

    invoke-direct {v0, v1, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
