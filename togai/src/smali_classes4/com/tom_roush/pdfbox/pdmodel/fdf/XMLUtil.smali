.class final Lcom/tom_roush/pdfbox/pdmodel/fdf/XMLUtil;
.super Ljava/lang/Object;
.source "XMLUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/tom_roush/pdfbox/util/XMLUtil;->getNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-static {p0}, Lcom/tom_roush/pdfbox/util/XMLUtil;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method
