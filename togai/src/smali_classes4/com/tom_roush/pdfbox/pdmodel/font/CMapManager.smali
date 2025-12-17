.class final Lcom/tom_roush/pdfbox/pdmodel/font/CMapManager;
.super Ljava/lang/Object;
.source "CmapManager.java"


# static fields
.field private static final CMAP_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/fontbox/cmap/CMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/CMapManager;->CMAP_CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPredefinedCMap(Ljava/lang/String;)Lcom/tom_roush/fontbox/cmap/CMap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/CMapManager;->CMAP_CACHE:Ljava/util/Map;

    .line 47
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/cmap/CMap;

    if-eqz v1, :cond_0

    return-object v1

    .line 53
    :cond_0
    new-instance v1, Lcom/tom_roush/fontbox/cmap/CMapParser;

    invoke-direct {v1}, Lcom/tom_roush/fontbox/cmap/CMapParser;-><init>()V

    invoke-virtual {v1, p0}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parsePredefined(Ljava/lang/String;)Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/cmap/CMap;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static parseCMap(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/cmap/CMap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 72
    new-instance v0, Lcom/tom_roush/fontbox/cmap/CMapParser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tom_roush/fontbox/cmap/CMapParser;-><init>(Z)V

    invoke-virtual {v0, p0}, Lcom/tom_roush/fontbox/cmap/CMapParser;->parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
