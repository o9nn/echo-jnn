.class public Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationSquiggly;
.super Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationTextMarkup;
.source "FDFAnnotationSquiggly.java"


# static fields
.field public static final SUBTYPE:Ljava/lang/String; = "Squiggly"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationTextMarkup;-><init>()V

    .line 43
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationSquiggly;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v2, "Squiggly"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationTextMarkup;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationTextMarkup;-><init>(Lorg/w3c/dom/Element;)V

    .line 66
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationSquiggly;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v1, "Squiggly"

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method
