.class public interface abstract Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;
.super Ljava/lang/Object;
.source "FontMapper.java"


# virtual methods
.method public abstract getCIDFont(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;)Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;
.end method

.method public abstract getFontBoxFont(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;)Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;",
            ")",
            "Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping<",
            "Lcom/tom_roush/fontbox/FontBoxFont;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTrueTypeFont(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;)Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;",
            ")",
            "Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping<",
            "Lcom/tom_roush/fontbox/ttf/TrueTypeFont;",
            ">;"
        }
    .end annotation
.end method
