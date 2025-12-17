.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType6;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;
.source "PDShadingType6.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDMeshBasedShadingType;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method protected generatePatch([Landroid/graphics/PointF;[[F)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Patch;
    .locals 1

    .line 54
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoonsPatch;-><init>([Landroid/graphics/PointF;[[F)V

    return-object v0
.end method

.method public getBounds(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/util/Matrix;)Landroid/graphics/RectF;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    .line 60
    invoke-virtual {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType6;->getBounds(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/util/Matrix;I)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getShadingType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
