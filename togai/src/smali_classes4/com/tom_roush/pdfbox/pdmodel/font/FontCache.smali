.class public final Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;
.super Ljava/lang/Object;
.source "FontCache.java"


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/tom_roush/fontbox/FontBoxFont;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;->cache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;Lcom/tom_roush/fontbox/FontBoxFont;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;->cache:Ljava/util/Map;

    .line 41
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getFont(Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;)Lcom/tom_roush/fontbox/FontBoxFont;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/FontCache;->cache:Ljava/util/Map;

    .line 49
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/fontbox/FontBoxFont;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
