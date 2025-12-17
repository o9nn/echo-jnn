.class public final Lcom/tom_roush/pdfbox/pdmodel/font/PDFontFactory;
.super Ljava/lang/Object;
.source "PDFontFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefaultFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->HELVETICA:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    return-object v0
.end method

.method static createDescendantFont(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;)Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v1

    .line 131
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CID_FONT_TYPE0:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;)V

    return-object v0

    .line 135
    :cond_0
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CID_FONT_TYPE2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;)V

    return-object v0

    .line 141
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid font type: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Expected \'Font\' dictionary but found \'"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFont(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    invoke-static {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontFactory;->createFont(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object p0

    return-object p0
.end method

.method public static createFont(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\'"

    const-string v3, "PdfBox-Android"

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Expected \'Font\' dictionary but found \'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    .line 67
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE1:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_DESC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 70
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_FILE3:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;

    invoke-direct {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object p1

    .line 74
    :cond_1
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    invoke-direct {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object p1

    .line 76
    :cond_2
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MM_TYPE1:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_DESC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 79
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_FILE3:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 81
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;

    invoke-direct {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object p1

    .line 83
    :cond_3
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDMMType1Font;

    invoke-direct {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDMMType1Font;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object p1

    .line 85
    :cond_4
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TRUE_TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;

    invoke-direct {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object p1

    .line 89
    :cond_5
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE3:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 91
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V

    return-object v0

    .line 93
    :cond_6
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE0:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 95
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    invoke-direct {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object p1

    .line 97
    :cond_7
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->CID_FONT_TYPE0:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 101
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->CID_FONT_TYPE2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid font subtype \'"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    invoke-direct {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object p1

    .line 103
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Type 2 descendant font not allowed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Type 0 descendant font not allowed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
