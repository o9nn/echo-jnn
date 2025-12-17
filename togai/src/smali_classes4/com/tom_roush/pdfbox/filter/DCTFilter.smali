.class final Lcom/tom_roush/pdfbox/filter/DCTFilter;
.super Lcom/tom_roush/pdfbox/filter/Filter;
.source "DCTFilter.java"


# static fields
.field private static final ADOBE:Ljava/lang/String; = "Adobe"

.field private static final POS_TRANSFORM:I = 0xb


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/Filter;-><init>()V

    return-void
.end method

.method private clamp(F)I
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/filter/DecodeResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    sget-object v5, Lcom/tom_roush/pdfbox/filter/DecodeOptions;->DEFAULT:Lcom/tom_roush/pdfbox/filter/DecodeOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tom_roush/pdfbox/filter/DCTFilter;->decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;ILcom/tom_roush/pdfbox/filter/DecodeOptions;)Lcom/tom_roush/pdfbox/filter/DecodeResult;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;ILcom/tom_roush/pdfbox/filter/DecodeOptions;)Lcom/tom_roush/pdfbox/filter/DecodeResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-static {p1, p2}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 44
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

    .line 76
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "DCTFilter encoding not implemented, use the JPEGFactory methods instead"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
