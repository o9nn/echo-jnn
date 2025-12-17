.class public Lcom/tom_roush/pdfbox/util/GraphicsUtil;
.super Ljava/lang/Object;
.source "GraphicsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPathRegion(Landroid/graphics/Path;)Landroid/graphics/Region;
    .locals 3

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    .line 29
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 30
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 31
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 32
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 33
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0, v2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p0, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    return-object v1
.end method
