.class public interface abstract Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;
.super Ljava/lang/Object;
.source "ResourceCache.java"


# virtual methods
.method public abstract getColorSpace(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getExtGState(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;
.end method

.method public abstract getFont(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getPattern(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getProperties(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;
.end method

.method public abstract getShading(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getXObject(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)V
.end method

.method public abstract put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V
.end method
