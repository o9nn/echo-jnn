.class public Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;
.super Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;
.source "DictionaryEncoding.java"


# instance fields
.field private final baseEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

.field private final differences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final encoding:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->differences:Ljava/util/Map;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->encoding:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->baseEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    .line 79
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->applyDifferences()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;ZLcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->differences:Ljava/util/Map;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->encoding:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 94
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->BASE_ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->BASE_ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    .line 98
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getInstance(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    if-eqz p2, :cond_1

    .line 106
    sget-object p3, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/StandardEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/StandardEncoding;

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_1

    .line 119
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Symbolic fonts must have a built-in encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move-object p3, p1

    :goto_1
    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->baseEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    .line 126
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->codeToName:Ljava/util/Map;

    iget-object p2, p3, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->codeToName:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 127
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->inverted:Ljava/util/Map;

    iget-object p2, p3, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->inverted:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 128
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->applyDifferences()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 3

    .line 46
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->differences:Ljava/util/Map;

    .line 47
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->encoding:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 48
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 49
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DIFFERENCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 50
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->STANDARD_ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    if-eq p1, p2, :cond_0

    .line 52
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->BASE_ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 53
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getInstance(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object p2

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->baseEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getInstance(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object p2

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->baseEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    :goto_0
    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->baseEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    if-eqz p2, :cond_1

    .line 65
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->codeToName:Ljava/util/Map;

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->baseEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    iget-object p2, p2, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->codeToName:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 66
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->inverted:Ljava/util/Map;

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->baseEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    iget-object p2, p2, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->inverted:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 67
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->applyDifferences()V

    return-void

    .line 62
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid encoding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private applyDifferences()V
    .locals 6

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->encoding:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 134
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DIFFERENCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 135
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v1, :cond_0

    return-void

    .line 139
    :cond_0
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 141
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 143
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 144
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v4, :cond_1

    .line 146
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v1

    goto :goto_1

    .line 148
    :cond_1
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v4, :cond_2

    .line 150
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 151
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->overwrite(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->differences:Ljava/util/Map;

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getBaseEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->baseEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->encoding:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getDifferences()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->differences:Ljava/util/Map;

    return-object v0
.end method

.method public getEncodingName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->baseEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    if-nez v0, :cond_0

    const-string v0, "differences"

    return-object v0

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->baseEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getEncodingName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with differences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
