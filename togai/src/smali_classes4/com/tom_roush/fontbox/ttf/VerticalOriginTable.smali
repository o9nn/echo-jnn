.class public Lcom/tom_roush/fontbox/ttf/VerticalOriginTable;
.super Lcom/tom_roush/fontbox/ttf/TTFTable;
.source "VerticalOriginTable.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VORG"


# instance fields
.field private defaultVertOriginY:I

.field private origins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private version:F


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    return-void
.end method


# virtual methods
.method public getOriginY(I)I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalOriginTable;->origins:Ljava/util/Map;

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalOriginTable;->origins:Ljava/util/Map;

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    iget p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalOriginTable;->defaultVertOriginY:I

    return p1
.end method

.method public getVersion()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalOriginTable;->version:F

    return v0
.end method

.method read(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read32Fixed()F

    move-result p1

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalOriginTable;->version:F

    .line 65
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result p1

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalOriginTable;->defaultVertOriginY:I

    .line 66
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p1

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/VerticalOriginTable;->origins:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 70
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v1

    .line 71
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v2

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/VerticalOriginTable;->origins:Ljava/util/Map;

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/tom_roush/fontbox/ttf/VerticalOriginTable;->initialized:Z

    return-void
.end method
