.class public Lcom/tom_roush/fontbox/cff/CFFCIDFont;
.super Lcom/tom_roush/fontbox/cff/CFFFont;
.source "CFFCIDFont.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/fontbox/cff/CFFCIDFont$PrivateType1CharStringReader;
    }
.end annotation


# instance fields
.field private final charStringCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tom_roush/fontbox/cff/CIDKeyedType2CharString;",
            ">;"
        }
    .end annotation
.end field

.field private fdSelect:Lcom/tom_roush/fontbox/cff/FDSelect;

.field private fontDictionaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private ordering:Ljava/lang/String;

.field private privateDictionaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final reader:Lcom/tom_roush/fontbox/cff/CFFCIDFont$PrivateType1CharStringReader;

.field private registry:Ljava/lang/String;

.field private supplement:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/CFFFont;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->fontDictionaries:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->privateDictionaries:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->charStringCache:Ljava/util/Map;

    .line 49
    new-instance v0, Lcom/tom_roush/fontbox/cff/CFFCIDFont$PrivateType1CharStringReader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tom_roush/fontbox/cff/CFFCIDFont$PrivateType1CharStringReader;-><init>(Lcom/tom_roush/fontbox/cff/CFFCIDFont;Lcom/tom_roush/fontbox/cff/CFFCIDFont$1;)V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->reader:Lcom/tom_roush/fontbox/cff/CFFCIDFont$PrivateType1CharStringReader;

    return-void
.end method

.method private getDefaultWidthX(I)I
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->fdSelect:Lcom/tom_roush/fontbox/cff/FDSelect;

    .line 177
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/FDSelect;->getFDIndex(I)I

    move-result p1

    const/4 v0, -0x1

    const/16 v1, 0x3e8

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->privateDictionaries:Ljava/util/List;

    .line 182
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "defaultWidthX"

    .line 183
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    :cond_1
    return v1
.end method

.method private getLocalSubrIndex(I)[[B
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->fdSelect:Lcom/tom_roush/fontbox/cff/FDSelect;

    .line 209
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/FDSelect;->getFDIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->privateDictionaries:Ljava/util/List;

    .line 214
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "Subrs"

    .line 215
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    return-object p1
.end method

.method private getNominalWidthX(I)I
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->fdSelect:Lcom/tom_roush/fontbox/cff/FDSelect;

    .line 193
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/FDSelect;->getFDIndex(I)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->privateDictionaries:Ljava/util/List;

    .line 198
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "nominalWidthX"

    .line 199
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    :cond_1
    return v1
.end method

.method private selectorToCID(Ljava/lang/String;)I
    .locals 1

    const-string v0, "\\"

    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 283
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 281
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid selector"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getFdSelect()Lcom/tom_roush/fontbox/cff/FDSelect;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->fdSelect:Lcom/tom_roush/fontbox/cff/FDSelect;

    return-object v0
.end method

.method public getFontDicts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->fontDictionaries:Ljava/util/List;

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

    .line 250
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->topDict:Ljava/util/Map;

    const-string v1, "FontMatrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getOrdering()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->ordering:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->selectorToCID(Ljava/lang/String;)I

    move-result p1

    .line 257
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->getType2CharString(I)Lcom/tom_roush/fontbox/cff/CIDKeyedType2CharString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CIDKeyedType2CharString;->getPath()Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public getPrivDicts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->privateDictionaries:Ljava/util/List;

    return-object v0
.end method

.method public getRegistry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->registry:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplement()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->supplement:I

    return v0
.end method

.method public getType2CharString(I)Lcom/tom_roush/fontbox/cff/CIDKeyedType2CharString;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->charStringCache:Ljava/util/Map;

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/cff/CIDKeyedType2CharString;

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->charset:Lcom/tom_roush/fontbox/cff/CFFCharset;

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFCharset;->getGIDForCID(I)I

    move-result v5

    .line 232
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->charStrings:[[B

    aget-object v0, v0, v5

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->charStrings:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 237
    :cond_0
    new-instance v1, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;

    iget-object v2, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->fontName:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;-><init>(Ljava/lang/String;I)V

    .line 238
    iget-object v2, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->globalSubrIndex:[[B

    invoke-direct {p0, v5}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->getLocalSubrIndex(I)[[B

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/tom_roush/fontbox/cff/Type2CharStringParser;->parse([B[[B[[B)Ljava/util/List;

    move-result-object v6

    .line 239
    new-instance v0, Lcom/tom_roush/fontbox/cff/CIDKeyedType2CharString;

    iget-object v2, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->reader:Lcom/tom_roush/fontbox/cff/CFFCIDFont$PrivateType1CharStringReader;

    iget-object v3, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->fontName:Ljava/lang/String;

    .line 240
    invoke-direct {p0, v5}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->getDefaultWidthX(I)I

    move-result v7

    invoke-direct {p0, v5}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->getNominalWidthX(I)I

    move-result v8

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/tom_roush/fontbox/cff/CIDKeyedType2CharString;-><init>(Lcom/tom_roush/fontbox/type1/Type1CharStringReader;Ljava/lang/String;IILjava/util/List;II)V

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->charStringCache:Ljava/util/Map;

    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getType2CharString(I)Lcom/tom_roush/fontbox/cff/Type2CharString;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->getType2CharString(I)Lcom/tom_roush/fontbox/cff/CIDKeyedType2CharString;

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

    .line 263
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->selectorToCID(Ljava/lang/String;)I

    move-result p1

    .line 264
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->getType2CharString(I)Lcom/tom_roush/fontbox/cff/CIDKeyedType2CharString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CIDKeyedType2CharString;->getWidth()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->selectorToCID(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method setFdSelect(Lcom/tom_roush/fontbox/cff/FDSelect;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->fdSelect:Lcom/tom_roush/fontbox/cff/FDSelect;

    return-void
.end method

.method setFontDict(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->fontDictionaries:Ljava/util/List;

    return-void
.end method

.method setOrdering(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->ordering:Ljava/lang/String;

    return-void
.end method

.method setPrivDict(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->privateDictionaries:Ljava/util/List;

    return-void
.end method

.method setRegistry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->registry:Ljava/lang/String;

    return-void
.end method

.method setSupplement(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->supplement:I

    return-void
.end method
