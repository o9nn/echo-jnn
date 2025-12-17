.class public Lcom/tom_roush/fontbox/cmap/CMap;
.super Ljava/lang/Object;
.source "CMap.java"


# static fields
.field private static final SPACE:Ljava/lang/String; = " "


# instance fields
.field private final charToUnicode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cmapName:Ljava/lang/String;

.field private cmapType:I

.field private cmapVersion:Ljava/lang/String;

.field private final codeToCid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final codeToCidRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/cmap/CIDRange;",
            ">;"
        }
    .end annotation
.end field

.field private final codespaceRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/cmap/CodespaceRange;",
            ">;"
        }
    .end annotation
.end field

.field private maxCodeLength:I

.field private minCodeLength:I

.field private ordering:Ljava/lang/String;

.field private registry:Ljava/lang/String;

.field private spaceMapping:I

.field private supplement:I

.field private final unicodeToByteCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private wmode:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->wmode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->cmapName:Ljava/lang/String;

    iput-object v1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->cmapVersion:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/tom_roush/fontbox/cmap/CMap;->cmapType:I

    iput-object v1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->registry:Ljava/lang/String;

    iput-object v1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->ordering:Ljava/lang/String;

    iput v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->supplement:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->minCodeLength:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->codespaceRanges:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->charToUnicode:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->unicodeToByteCodes:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->codeToCid:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->codeToCidRanges:Ljava/util/List;

    iput v2, p0, Lcom/tom_roush/fontbox/cmap/CMap;->spaceMapping:I

    return-void
.end method

.method private getCodeFromArray([BII)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p3, :cond_0

    shl-int/lit8 v1, v1, 0x8

    add-int v2, p2, v0

    .line 199
    aget-byte v2, p1, v2

    add-int/lit16 v2, v2, 0x100

    rem-int/lit16 v2, v2, 0x100

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static toInt([BI)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    shl-int/lit8 v1, v1, 0x8

    .line 157
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method addCIDMapping(II)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->codeToCid:Ljava/util/Map;

    .line 242
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addCIDRange(CCI)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->codeToCidRanges:Ljava/util/List;

    .line 256
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->codeToCidRanges:Ljava/util/List;

    .line 258
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/cmap/CIDRange;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {v0, p1, p2, p3}, Lcom/tom_roush/fontbox/cmap/CIDRange;->extend(CCI)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->codeToCidRanges:Ljava/util/List;

    .line 262
    new-instance v1, Lcom/tom_roush/fontbox/cmap/CIDRange;

    invoke-direct {v1, p1, p2, p3}, Lcom/tom_roush/fontbox/cmap/CIDRange;-><init>(CCI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method addCharMapping([BLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->unicodeToByteCodes:Ljava/util/Map;

    .line 212
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 213
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/tom_roush/fontbox/cmap/CMap;->getCodeFromArray([BII)I

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->charToUnicode:Ljava/util/Map;

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, " "

    .line 217
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->spaceMapping:I

    :cond_0
    return-void
.end method

.method addCodespaceRange(Lcom/tom_roush/fontbox/cmap/CodespaceRange;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->codespaceRanges:Ljava/util/List;

    .line 273
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->maxCodeLength:I

    .line 274
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->getCodeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->maxCodeLength:I

    iget v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->minCodeLength:I

    .line 275
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->getCodeLength()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->minCodeLength:I

    return-void
.end method

.method public getCodesFromUnicode(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->unicodeToByteCodes:Ljava/util/Map;

    .line 231
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->cmapName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdering()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->ordering:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->registry:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceMapping()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->spaceMapping:I

    return v0
.end method

.method public getSupplement()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->supplement:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->cmapType:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->cmapVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getWMode()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->wmode:I

    return v0
.end method

.method public hasCIDMappings()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->codeToCid:Ljava/util/Map;

    .line 77
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->codeToCidRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasUnicodeMappings()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->charToUnicode:Ljava/util/Map;

    .line 87
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public readCode(Ljava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->maxCodeLength:I

    .line 111
    new-array v0, v0, [B

    iget v1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->minCodeLength:I

    const/4 v2, 0x0

    .line 112
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    iget v1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->maxCodeLength:I

    .line 113
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    iget v1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->minCodeLength:I

    add-int/lit8 v1, v1, -0x1

    :cond_0
    :goto_0
    iget v3, p0, Lcom/tom_roush/fontbox/cmap/CMap;->maxCodeLength:I

    if-ge v1, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/tom_roush/fontbox/cmap/CMap;->codespaceRanges:Ljava/util/List;

    .line 117
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/fontbox/cmap/CodespaceRange;

    .line 119
    invoke-virtual {v4, v0, v1}, Lcom/tom_roush/fontbox/cmap/CodespaceRange;->isFullMatch([BI)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    invoke-static {v0, v1}, Lcom/tom_roush/fontbox/cmap/CMap;->toInt([BI)I

    move-result p1

    return p1

    :cond_2
    iget v3, p0, Lcom/tom_roush/fontbox/cmap/CMap;->maxCodeLength:I

    if-ge v1, v3, :cond_0

    .line 126
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    goto :goto_0

    .line 129
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    iget v3, p0, Lcom/tom_roush/fontbox/cmap/CMap;->maxCodeLength:I

    if-ge v2, v3, :cond_4

    .line 132
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aget-byte v4, v0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "0x%02X (%04o) "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid character code sequence "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "in CMap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/fontbox/cmap/CMap;->cmapName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PdfBox-Android"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 138
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_2

    .line 142
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mark() and reset() not supported, "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->maxCodeLength:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes have been skipped"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget p1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->minCodeLength:I

    .line 145
    invoke-static {v0, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->toInt([BI)I

    move-result p1

    return p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->cmapName:Ljava/lang/String;

    return-void
.end method

.method public setOrdering(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->ordering:Ljava/lang/String;

    return-void
.end method

.method public setRegistry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->registry:Ljava/lang/String;

    return-void
.end method

.method public setSupplement(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->supplement:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->cmapType:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->cmapVersion:Ljava/lang/String;

    return-void
.end method

.method public setWMode(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/cmap/CMap;->wmode:I

    return-void
.end method

.method public toCID(I)I
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->codeToCid:Ljava/util/Map;

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->codeToCidRanges:Ljava/util/List;

    .line 175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/cmap/CIDRange;

    int-to-char v2, p1

    .line 177
    invoke-virtual {v1, v2}, Lcom/tom_roush/fontbox/cmap/CIDRange;->map(C)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->cmapName:Ljava/lang/String;

    return-object v0
.end method

.method public toUnicode(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->charToUnicode:Ljava/util/Map;

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method useCmap(Lcom/tom_roush/fontbox/cmap/CMap;)V
    .locals 2

    .line 286
    iget-object v0, p1, Lcom/tom_roush/fontbox/cmap/CMap;->codespaceRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/cmap/CodespaceRange;

    .line 288
    invoke-virtual {p0, v1}, Lcom/tom_roush/fontbox/cmap/CMap;->addCodespaceRange(Lcom/tom_roush/fontbox/cmap/CodespaceRange;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->charToUnicode:Ljava/util/Map;

    .line 290
    iget-object v1, p1, Lcom/tom_roush/fontbox/cmap/CMap;->charToUnicode:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->codeToCid:Ljava/util/Map;

    .line 291
    iget-object v1, p1, Lcom/tom_roush/fontbox/cmap/CMap;->codeToCid:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tom_roush/fontbox/cmap/CMap;->codeToCidRanges:Ljava/util/List;

    .line 292
    iget-object p1, p1, Lcom/tom_roush/fontbox/cmap/CMap;->codeToCidRanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
