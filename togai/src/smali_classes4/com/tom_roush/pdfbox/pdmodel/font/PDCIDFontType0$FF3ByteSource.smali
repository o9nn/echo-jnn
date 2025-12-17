.class Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0$FF3ByteSource;
.super Ljava/lang/Object;
.source "PDCIDFontType0.java"

# interfaces
.implements Lcom/tom_roush/fontbox/cff/CFFParser$ByteSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FF3ByteSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;


# direct methods
.method private constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0$FF3ByteSource;->this$0:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0$1;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0$FF3ByteSource;-><init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;)V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0$FF3ByteSource;->this$0:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;

    .line 209
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontFile3()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
