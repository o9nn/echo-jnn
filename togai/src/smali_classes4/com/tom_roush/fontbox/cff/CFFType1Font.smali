.class public Lcom/tom_roush/fontbox/cff/CFFType1Font;
.super Lcom/tom_roush/fontbox/cff/CFFFont;
.source "CFFType1Font.java"

# interfaces
.implements Lcom/tom_roush/fontbox/EncodedFont;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/fontbox/cff/CFFType1Font$PrivateType1CharStringReader;
    }
.end annotation


# instance fields
.field private final charStringCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tom_roush/fontbox/cff/Type2CharString;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:Lcom/tom_roush/fontbox/cff/CFFEncoding;

.field private final privateDict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final reader:Lcom/tom_roush/fontbox/cff/CFFType1Font$PrivateType1CharStringReader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/CFFFont;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->privateDict:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->charStringCache:Ljava/util/Map;

    .line 44
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFType1Font$PrivateType1CharStringReader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tom_roush/fontbox/cff/CFFType1Font$PrivateType1CharStringReader;-><init>(Lcom/tom_roush/fontbox/cff/CFFType1Font;Lcom/tom_roush/fontbox/cff/CFFType1Font$1;)V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->reader:Lcom/tom_roush/fontbox/cff/CFFType1Font$PrivateType1CharStringReader;

    return-void
.end method

.method private getDefaultWidthX()I
    .locals 1

    const-string v0, "defaultWidthX"

    .line 215
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    return v0

    .line 220
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private getLocalSubrIndex()[[B
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->privateDict:Ljava/util/Map;

    const-string v1, "Subrs"

    .line 199
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    return-object v0
.end method

.method private getNominalWidthX()I
    .locals 1

    const-string v0, "nominalWidthX"

    .line 225
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 230
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->topDict:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->privateDict:Ljava/util/Map;

    .line 210
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getType2CharString(ILjava/lang/String;)Lcom/tom_roush/fontbox/cff/Type2CharString;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->charStringCache:Ljava/util/Map;

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/cff/Type2CharString;

    if-nez v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->charStrings:[[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->charStrings:[[B

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->charStrings:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 142
    :cond_1
    new-instance v1, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;

    iget-object v2, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->fontName:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->globalSubrIndex:[[B

    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getLocalSubrIndex()[[B

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->parse([B[[B[[B)Ljava/util/List;

    move-result-object v9

    .line 144
    new-instance v0, Lcom/tom_roush/fontbox/cff/Type2CharString;

    iget-object v5, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->reader:Lcom/tom_roush/fontbox/cff/CFFType1Font$PrivateType1CharStringReader;

    iget-object v6, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->fontName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getDefaultWidthX()I

    move-result v10

    .line 145
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getNominalWidthX()I

    move-result v11

    move-object v4, v0

    move-object v7, p2

    move v8, p1

    invoke-direct/range {v4 .. v11}, Lcom/tom_roush/fontbox/cff/Type2CharString;-><init>(Lcom/tom_roush/fontbox/type1/Type1CharStringReader;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    iget-object p2, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->charStringCache:Ljava/util/Map;

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method


# virtual methods
.method addToPrivateDict(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->privateDict:Ljava/util/Map;

    .line 172
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getEncoding()Lcom/tom_roush/fontbox/cff/CFFEncoding;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->encoding:Lcom/tom_roush/fontbox/cff/CFFEncoding;

    return-object v0
.end method

.method public bridge synthetic getEncoding()Lcom/tom_roush/fontbox/encoding/Encoding;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getEncoding()Lcom/tom_roush/fontbox/cff/CFFEncoding;

    move-result-object v0

    return-object v0
.end method

.method public getFontMatrix()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->topDict:Ljava/util/Map;

    const-string v1, "FontMatrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPath(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getType1CharString(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/Type1CharString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/Type1CharString;->getPath()Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateDict()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->privateDict:Ljava/util/Map;

    return-object v0
.end method

.method public getType1CharString(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/Type1CharString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->nameToGID(Ljava/lang/String;)I

    move-result v0

    .line 97
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getType2CharString(ILjava/lang/String;)Lcom/tom_roush/fontbox/cff/Type2CharString;

    move-result-object p1

    return-object p1
.end method

.method public getType2CharString(I)Lcom/tom_roush/fontbox/cff/Type2CharString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GID+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getType2CharString(ILjava/lang/String;)Lcom/tom_roush/fontbox/cff/Type2CharString;

    move-result-object p1

    return-object p1
.end method

.method public getWidth(Ljava/lang/String;)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getType1CharString(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/Type1CharString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/Type1CharString;->getWidth()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->charset:Lcom/tom_roush/fontbox/cff/CFFCharset;

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFCharset;->getSID(Ljava/lang/String;)I

    move-result p1

    .line 75
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->charset:Lcom/tom_roush/fontbox/cff/CFFCharset;

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFCharset;->getGIDForSID(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public nameToGID(Ljava/lang/String;)I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->charset:Lcom/tom_roush/fontbox/cff/CFFCharset;

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFCharset;->getSID(Ljava/lang/String;)I

    move-result p1

    .line 110
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->charset:Lcom/tom_roush/fontbox/cff/CFFCharset;

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFCharset;->getGIDForSID(I)I

    move-result p1

    return p1
.end method

.method setEncoding(Lcom/tom_roush/fontbox/cff/CFFEncoding;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFType1Font;->encoding:Lcom/tom_roush/fontbox/cff/CFFEncoding;

    return-void
.end method
