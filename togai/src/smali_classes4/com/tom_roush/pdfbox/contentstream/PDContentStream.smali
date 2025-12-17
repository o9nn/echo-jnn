.class public interface abstract Lcom/tom_roush/pdfbox/contentstream/PDContentStream;
.super Ljava/lang/Object;
.source "PDContentStream.java"


# virtual methods
.method public abstract getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
.end method

.method public abstract getContents()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
.end method

.method public abstract getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;
.end method
