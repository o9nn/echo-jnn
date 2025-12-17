.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;
.super Ljava/lang/Object;
.source "SignatureOptions.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final DEFAULT_SIGNATURE_SIZE:I = 0x2500


# instance fields
.field private pageNo:I

.field private pdfSource:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

.field private preferredSignatureSize:I

.field private visualSignature:Lcom/tom_roush/pdfbox/cos/COSDocument;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->pdfSource:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->pageNo:I

    return-void
.end method

.method private initFromRandomAccessRead(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->pdfSource:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 99
    new-instance p1, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->pdfSource:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    invoke-direct {p1, v0}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    .line 100
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->parse()V

    .line 101
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->visualSignature:Lcom/tom_roush/pdfbox/cos/COSDocument;

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

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->visualSignature:Lcom/tom_roush/pdfbox/cos/COSDocument;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->pdfSource:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    if-eqz v0, :cond_1

    .line 171
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->pdfSource:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->close()V

    .line 173
    :cond_2
    throw v0
.end method

.method public getPage()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->pageNo:I

    return v0
.end method

.method public getPreferredSignatureSize()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->preferredSignatureSize:I

    return v0
.end method

.method public getVisualSignature()Lcom/tom_roush/pdfbox/cos/COSDocument;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->visualSignature:Lcom/tom_roush/pdfbox/cos/COSDocument;

    return-object v0
.end method

.method public setPage(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->pageNo:I

    return-void
.end method

.method public setPreferredSignatureSize(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->preferredSignatureSize:I

    :cond_0
    return-void
.end method

.method public setVisualSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->getVisibleSignature()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->setVisualSignature(Ljava/io/InputStream;)V

    return-void
.end method

.method public setVisualSignature(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->initFromRandomAccessRead(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    return-void
.end method

.method public setVisualSignature(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->initFromRandomAccessRead(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    return-void
.end method
