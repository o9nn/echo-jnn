.class public Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;
.super Ljava/lang/Object;
.source "DefaultResourceCache.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;


# instance fields
.field private final colorSpaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObject;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;",
            ">;>;"
        }
    .end annotation
.end field

.field private final extGStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObject;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObject;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;",
            ">;>;"
        }
    .end annotation
.end field

.field private final patterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObject;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;",
            ">;>;"
        }
    .end annotation
.end field

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObject;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;",
            ">;>;"
        }
    .end annotation
.end field

.field private final shadings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObject;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;",
            ">;>;"
        }
    .end annotation
.end field

.field private final xobjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObject;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->fonts:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->colorSpaces:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->xobjects:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->extGStates:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->shadings:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->patterns:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->properties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getColorSpace(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->colorSpaces:Ljava/util/Map;

    .line 83
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExtGState(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->extGStates:Ljava/util/Map;

    .line 100
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFont(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->fonts:Ljava/util/Map;

    .line 66
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPattern(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->patterns:Ljava/util/Map;

    .line 134
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getProperties(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->properties:Ljava/util/Map;

    .line 151
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getShading(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->shadings:Ljava/util/Map;

    .line 117
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getXObject(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->xobjects:Ljava/util/Map;

    .line 168
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->properties:Ljava/util/Map;

    .line 162
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->fonts:Ljava/util/Map;

    .line 77
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->xobjects:Ljava/util/Map;

    .line 179
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->colorSpaces:Ljava/util/Map;

    .line 94
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->patterns:Ljava/util/Map;

    .line 145
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->shadings:Ljava/util/Map;

    .line 128
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;->extGStates:Ljava/util/Map;

    .line 111
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
