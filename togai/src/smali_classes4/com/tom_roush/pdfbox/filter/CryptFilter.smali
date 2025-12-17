.class final Lcom/tom_roush/pdfbox/filter/CryptFilter;
.super Lcom/tom_roush/pdfbox/filter/Filter;
.source "CryptFilter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/filter/DecodeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p3, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_1

    .line 37
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IDENTITY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported crypt filter "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    :goto_0
    new-instance v0, Lcom/tom_roush/pdfbox/filter/IdentityFilter;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/filter/IdentityFilter;-><init>()V

    .line 41
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/filter/Filter;->decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/filter/DecodeResult;

    .line 42
    new-instance p1, Lcom/tom_roush/pdfbox/filter/DecodeResult;

    invoke-direct {p1, p3}, Lcom/tom_roush/pdfbox/filter/DecodeResult;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object p1
.end method

.method protected encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p3, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_1

    .line 52
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IDENTITY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported crypt filter "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1
    :goto_0
    new-instance v0, Lcom/tom_roush/pdfbox/filter/IdentityFilter;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/filter/IdentityFilter;-><init>()V

    .line 56
    invoke-virtual {v0, p1, p2, p3}, Lcom/tom_roush/pdfbox/filter/Filter;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method
