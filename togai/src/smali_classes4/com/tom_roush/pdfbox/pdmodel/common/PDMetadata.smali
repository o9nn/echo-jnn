.class public Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;
.super Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;
.source "PDMetadata.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 45
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v1, "Metadata"

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v1, "XML"

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)V

    .line 60
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v0, "Metadata"

    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v0, "XML"

    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exportXMPMetadata()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v0

    return-object v0
.end method

.method public importXMPMetadata([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;->createOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 99
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method
