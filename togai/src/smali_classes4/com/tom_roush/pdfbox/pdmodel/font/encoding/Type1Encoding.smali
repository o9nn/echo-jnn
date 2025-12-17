.class public Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;
.super Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;
.source "Type1Encoding.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/fontbox/afm/FontMetrics;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/afm/FontMetrics;->getCharMetrics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/afm/CharMetric;

    .line 65
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/afm/CharMetric;->getCharacterCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/afm/CharMetric;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;->add(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fromFontBox(Lcom/tom_roush/fontbox/encoding/Encoding;)Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;
    .locals 3

    .line 38
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/encoding/Encoding;->getCodeToNameMap()Ljava/util/Map;

    move-result-object p0

    .line 39
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;-><init>()V

    .line 41
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;->add(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncodingName()Ljava/lang/String;
    .locals 1

    const-string v0, "built-in (Type 1)"

    return-object v0
.end method
