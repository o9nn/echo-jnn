.class final Lcom/tom_roush/pdfbox/filter/RunLengthDecodeFilter;
.super Lcom/tom_roush/pdfbox/filter/Filter;
.source "RunLengthDecodeFilter.java"


# static fields
.field private static final RUN_LENGTH_EOD:I = 0x80


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/filter/DecodeResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p4, 0x80

    new-array v0, p4, [B

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    if-eq v1, p4, :cond_4

    const/16 v3, 0x7f

    const/4 v4, 0x0

    if-gt v1, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-lez v1, :cond_0

    .line 51
    invoke-virtual {p1, v0, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ne v3, v2, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v1, v3

    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ne v3, v2, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    rsub-int v2, v1, 0x101

    if-ge v4, v2, :cond_0

    .line 71
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 75
    :cond_4
    :goto_3
    new-instance p1, Lcom/tom_roush/pdfbox/filter/DecodeResult;

    invoke-direct {p1, p3}, Lcom/tom_roush/pdfbox/filter/DecodeResult;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object p1
.end method

.method protected encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "PdfBox-Android"

    const-string p2, "RunLengthDecodeFilter.encode is not implemented yet, skipping this stream."

    .line 82
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
