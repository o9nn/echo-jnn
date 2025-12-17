.class final Lcom/tom_roush/pdfbox/filter/ASCII85Filter;
.super Lcom/tom_roush/pdfbox/filter/Filter;
.source "ASCII85Filter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/filter/DecodeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p4, 0x0

    .line 39
    :try_start_0
    new-instance v0, Lcom/tom_roush/pdfbox/filter/ASCII85InputStream;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/filter/ASCII85InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    invoke-static {v0, p2}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 41
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 47
    new-instance p1, Lcom/tom_roush/pdfbox/filter/DecodeResult;

    invoke-direct {p1, p3}, Lcom/tom_roush/pdfbox/filter/DecodeResult;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object p4, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 45
    :goto_0
    invoke-static {p4}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 46
    throw p1
.end method

.method protected encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance p3, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;

    invoke-direct {p3, p2}, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 55
    invoke-static {p1, p3}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 56
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->close()V

    .line 57
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
