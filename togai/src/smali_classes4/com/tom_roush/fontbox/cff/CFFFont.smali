.class public abstract Lcom/tom_roush/fontbox/cff/CFFFont;
.super Ljava/lang/Object;
.source "CFFFont.java"

# interfaces
.implements Lcom/tom_roush/fontbox/FontBoxFont;


# instance fields
.field protected charStrings:[[B

.field protected charset:Lcom/tom_roush/fontbox/cff/CFFCharset;

.field protected fontName:Ljava/lang/String;

.field protected globalSubrIndex:[[B

.field private source:Lcom/tom_roush/fontbox/cff/CFFParser$ByteSource;

.field protected final topDict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->topDict:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addValueToTopDict(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->topDict:Ljava/util/Map;

    .line 74
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final getCharStringBytes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->charStrings:[[B

    .line 131
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Lcom/tom_roush/fontbox/cff/CFFCharset;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->charset:Lcom/tom_roush/fontbox/cff/CFFCharset;

    return-object v0
.end method

.method public getData()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->source:Lcom/tom_roush/fontbox/cff/CFFParser$ByteSource;

    .line 147
    invoke-interface {v0}, Lcom/tom_roush/fontbox/cff/CFFParser$ByteSource;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getFontBBox()Lcom/tom_roush/fontbox/util/BoundingBox;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->topDict:Ljava/util/Map;

    const-string v1, "FontBBox"

    .line 100
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    new-instance v1, Lcom/tom_roush/fontbox/util/BoundingBox;

    invoke-direct {v1, v0}, Lcom/tom_roush/fontbox/util/BoundingBox;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public abstract getFontMatrix()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end method

.method public getGlobalSubrIndex()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->globalSubrIndex:[[B

    .line 175
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumCharStrings()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->charStrings:[[B

    .line 155
    array-length v0, v0

    return v0
.end method

.method public getTopDict()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->topDict:Ljava/util/Map;

    return-object v0
.end method

.method public abstract getType2CharString(I)Lcom/tom_roush/fontbox/cff/Type2CharString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method setCharset(Lcom/tom_roush/fontbox/cff/CFFCharset;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->charset:Lcom/tom_roush/fontbox/cff/CFFCharset;

    return-void
.end method

.method final setData(Lcom/tom_roush/fontbox/cff/CFFParser$ByteSource;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->source:Lcom/tom_roush/fontbox/cff/CFFParser$ByteSource;

    return-void
.end method

.method setGlobalSubrIndex([[B)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->globalSubrIndex:[[B

    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->fontName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->fontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topDict="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->topDict:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->charset:Lcom/tom_roush/fontbox/cff/CFFCharset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", charStrings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/CFFFont;->charStrings:[[B

    .line 190
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
