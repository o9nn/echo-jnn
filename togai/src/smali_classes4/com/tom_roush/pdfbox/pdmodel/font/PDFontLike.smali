.class public interface abstract Lcom/tom_roush/pdfbox/pdmodel/font/PDFontLike;
.super Ljava/lang/Object;
.source "PDFontLike.java"


# virtual methods
.method public abstract getAverageFontWidth()F
.end method

.method public abstract getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;
.end method

.method public abstract getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
.end method

.method public abstract getHeight(I)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPositionVector(I)Lcom/tom_roush/pdfbox/util/Vector;
.end method

.method public abstract getWidth(I)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getWidthFromFont(I)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract hasExplicitWidth(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isDamaged()Z
.end method

.method public abstract isEmbedded()Z
.end method
