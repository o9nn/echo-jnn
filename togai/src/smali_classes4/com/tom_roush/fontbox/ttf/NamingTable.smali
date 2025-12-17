.class public Lcom/tom_roush/fontbox/ttf/NamingTable;
.super Lcom/tom_roush/fontbox/ttf/TTFTable;
.source "NamingTable.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "name"


# instance fields
.field private fontFamily:Ljava/lang/String;

.field private fontSubFamily:Ljava/lang/String;

.field private lookupTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private nameRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/ttf/NameRecord;",
            ">;"
        }
    .end annotation
.end field

.field private psName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->fontFamily:Ljava/lang/String;

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->fontSubFamily:Ljava/lang/String;

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->psName:Ljava/lang/String;

    return-void
.end method

.method private getEnglishName(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x4

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 179
    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/tom_roush/fontbox/ttf/NamingTable;->getName(IIII)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    const/16 v2, 0x409

    const/4 v3, 0x1

    .line 191
    invoke-virtual {p0, p1, v0, v3, v2}, Lcom/tom_roush/fontbox/ttf/NamingTable;->getName(IIII)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 201
    :cond_2
    invoke-virtual {p0, p1, v3, v1, v1}, Lcom/tom_roush/fontbox/ttf/NamingTable;->getName(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getFontFamily()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSubFamily()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->fontSubFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getName(IIII)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->lookupTable:Ljava/util/Map;

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 223
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_1

    return-object v0

    .line 228
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_2

    return-object v0

    .line 233
    :cond_2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNameRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/ttf/NameRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->nameRecords:Ljava/util/List;

    return-object v0
.end method

.method public getPostScriptName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->psName:Ljava/lang/String;

    return-object v0
.end method

.method read(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 64
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    .line 65
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->nameRecords:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 69
    new-instance v3, Lcom/tom_roush/fontbox/ttf/NameRecord;

    invoke-direct {v3}, Lcom/tom_roush/fontbox/ttf/NameRecord;-><init>()V

    .line 70
    invoke-virtual {v3, p1, p2}, Lcom/tom_roush/fontbox/ttf/NameRecord;->initData(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    iget-object v4, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->nameRecords:Ljava/util/List;

    .line 71
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->nameRecords:Ljava/util/List;

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/fontbox/ttf/NameRecord;

    .line 77
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getStringOffset()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/NamingTable;->getLength()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v2, v3}, Lcom/tom_roush/fontbox/ttf/NameRecord;->setString(Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/NamingTable;->getOffset()J

    move-result-wide v6

    const-wide/16 v8, 0x6

    add-long/2addr v6, v8

    mul-int/lit8 v8, v0, 0xc

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getStringOffset()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {p2, v6, v7}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    .line 84
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getPlatformId()I

    move-result v6

    .line 85
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getPlatformEncodingId()I

    move-result v7

    .line 86
    sget-object v8, Lcom/tom_roush/fontbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    if-ne v6, v3, :cond_3

    if-eqz v7, :cond_2

    if-ne v7, v5, :cond_3

    .line 89
    :cond_2
    sget-object v8, Lcom/tom_roush/fontbox/util/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    goto :goto_2

    :cond_3
    if-nez v6, :cond_4

    .line 93
    sget-object v8, Lcom/tom_roush/fontbox/util/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    goto :goto_2

    :cond_4
    if-ne v6, v4, :cond_8

    if-eqz v7, :cond_7

    if-eq v7, v5, :cond_6

    if-eq v7, v4, :cond_5

    goto :goto_2

    .line 107
    :cond_5
    sget-object v8, Lcom/tom_roush/fontbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_2

    .line 104
    :cond_6
    sget-object v8, Lcom/tom_roush/fontbox/util/Charsets;->ISO_10646:Ljava/nio/charset/Charset;

    goto :goto_2

    .line 100
    :cond_7
    sget-object v8, Lcom/tom_roush/fontbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 113
    :cond_8
    :goto_2
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getStringLength()I

    move-result v3

    invoke-virtual {p2, v3, v8}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v2, v3}, Lcom/tom_roush/fontbox/ttf/NameRecord;->setString(Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_9
    new-instance p1, Ljava/util/HashMap;

    iget-object p2, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->nameRecords:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->lookupTable:Ljava/util/Map;

    iget-object p1, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->nameRecords:Ljava/util/List;

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/fontbox/ttf/NameRecord;

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->lookupTable:Ljava/util/Map;

    .line 122
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getNameId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_a

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->lookupTable:Ljava/util/Map;

    .line 126
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getNameId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_a
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getPlatformId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_b

    .line 132
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getPlatformId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_b
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getPlatformEncodingId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_c

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getPlatformEncodingId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_c
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/NameRecord;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 147
    :cond_d
    invoke-direct {p0, v5}, Lcom/tom_roush/fontbox/ttf/NamingTable;->getEnglishName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->fontFamily:Ljava/lang/String;

    .line 148
    invoke-direct {p0, v4}, Lcom/tom_roush/fontbox/ttf/NamingTable;->getEnglishName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->fontSubFamily:Ljava/lang/String;

    const/4 p1, 0x6

    .line 151
    invoke-virtual {p0, p1, v5, v1, v1}, Lcom/tom_roush/fontbox/ttf/NamingTable;->getName(IIII)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->psName:Ljava/lang/String;

    if-nez p2, :cond_e

    const/16 p2, 0x409

    .line 157
    invoke-virtual {p0, p1, v3, v5, p2}, Lcom/tom_roush/fontbox/ttf/NamingTable;->getName(IIII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->psName:Ljava/lang/String;

    :cond_e
    iget-object p1, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->psName:Ljava/lang/String;

    if-eqz p1, :cond_f

    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->psName:Ljava/lang/String;

    .line 167
    :cond_f
    iput-boolean v5, p0, Lcom/tom_roush/fontbox/ttf/NamingTable;->initialized:Z

    return-void
.end method
