.class final Lcom/tom_roush/pdfbox/filter/FlateFilter;
.super Lcom/tom_roush/pdfbox/filter/Filter;
.source "FlateFilter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/Filter;-><init>()V

    return-void
.end method

.method private decompress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 68
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 69
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 70
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_4

    .line 74
    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    const/4 v4, 0x0

    .line 75
    invoke-virtual {v2, v0, v4, v1}, Ljava/util/zip/Inflater;->setInput([BII)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    move v5, v4

    .line 85
    :goto_0
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v6
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 103
    :try_start_1
    invoke-virtual {p2, v1, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    move v5, v3

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 112
    invoke-virtual {v2, v0, v4, v6}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    if-eqz v5, :cond_3

    const-string p1, "PdfBox-Android"

    const-string v0, "FlateFilter: premature end of stream due to a DataFormatException"

    .line 92
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    goto :goto_3

    .line 98
    :cond_3
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :goto_2
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    .line 118
    throw p1

    .line 120
    :cond_4
    :goto_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/filter/DecodeResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p3, p4}, Lcom/tom_roush/pdfbox/filter/FlateFilter;->getDecodeParams(Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p4

    .line 49
    :try_start_0
    invoke-static {p2, p4}, Lcom/tom_roush/pdfbox/filter/Predictor;->wrapPredictor(Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/filter/FlateFilter;->decompress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    new-instance p1, Lcom/tom_roush/pdfbox/filter/DecodeResult;

    invoke-direct {p1, p3}, Lcom/tom_roush/pdfbox/filter/DecodeResult;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "PdfBox-Android"

    const-string p3, "FlateFilter: stop reading corrupt stream due to a DataFormatException"

    .line 54
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-static {}, Lcom/tom_roush/pdfbox/filter/FlateFilter;->getCompressionLevel()I

    move-result p3

    .line 128
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0, p3}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 129
    new-instance p3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {p3, p2, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 130
    invoke-static {p1, p3}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 131
    invoke-virtual {p3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 132
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 133
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    return-void
.end method
