.class public abstract Lcom/tom_roush/pdfbox/filter/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# static fields
.field public static final SYSPROP_DEFLATELEVEL:Ljava/lang/String; = "com.tom_roush.pdfbox.filter.deflatelevel"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompressionLevel()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "com.tom_roush.pdfbox.filter.deflatelevel"

    const-string v2, "-1"

    .line 145
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PdfBox-Android"

    .line 149
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v0

    :goto_0
    const/16 v2, 0x9

    .line 151
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/filter/DecodeResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;ILcom/tom_roush/pdfbox/filter/DecodeOptions;)Lcom/tom_roush/pdfbox/filter/DecodeResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/filter/Filter;->decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/filter/DecodeResult;

    move-result-object p1

    return-object p1
.end method

.method protected abstract encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->asUnmodifiableDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/filter/Filter;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method protected getDecodeParams(Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 3

    .line 106
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DP:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->DECODE_PARMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 108
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 113
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object p1

    .line 115
    :cond_0
    instance-of v0, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_1

    .line 117
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 118
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 120
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 121
    instance-of p2, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz p2, :cond_2

    .line 123
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 127
    instance-of p2, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez p2, :cond_2

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Expected DecodeParams to be an Array or Dictionary but found "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PdfBox-Android"

    .line 129
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_2
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    return-object p1
.end method
