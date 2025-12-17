.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SigningSupport;
.super Ljava/lang/Object;
.source "SigningSupport.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/ExternalSigningSupport;
.implements Ljava/io/Closeable;


# instance fields
.field private cosWriter:Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SigningSupport;->cosWriter:Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SigningSupport;->cosWriter:Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 58
    :try_start_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SigningSupport;->cosWriter:Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SigningSupport;->cosWriter:Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;

    .line 63
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SigningSupport;->cosWriter:Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;

    .line 42
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->getDataToSign()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public setSignature([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SigningSupport;->cosWriter:Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;

    .line 48
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writeExternalSignature([B)V

    return-void
.end method
