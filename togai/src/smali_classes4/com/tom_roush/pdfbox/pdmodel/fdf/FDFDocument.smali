.class public Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;
.super Ljava/lang/Object;
.source "FDFDocument.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private document:Lcom/tom_roush/pdfbox/cos/COSDocument;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    const v1, 0x3f99999a    # 1.2f

    .line 55
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->setVersion(F)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    .line 58
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->setTrailer(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 61
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;-><init>()V

    .line 62
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->setCatalog(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDocument;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;-><init>()V

    .line 84
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    .line 85
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xfdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;-><init>(Lorg/w3c/dom/Element;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->setCatalog(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;)V

    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while importing xfdf document, root should be \'xfdf\' and not \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static load(Ljava/io/File;)Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;-><init>(Ljava/io/File;)V

    .line 182
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->parse()V

    .line 183
    new-instance p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;-><init>(Lcom/tom_roush/pdfbox/cos/COSDocument;)V

    return-object p0
.end method

.method public static load(Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;-><init>(Ljava/io/InputStream;)V

    .line 198
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->parse()V

    .line 199
    new-instance p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;-><init>(Lcom/tom_roush/pdfbox/cos/COSDocument;)V

    return-object p0
.end method

.method public static load(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->parse()V

    .line 167
    new-instance p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfparser/FDFParser;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;-><init>(Lcom/tom_roush/pdfbox/cos/COSDocument;)V

    return-object p0
.end method

.method public static loadXFDF(Ljava/io/File;)Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->loadXFDF(Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;

    move-result-object p0

    return-object p0
.end method

.method public static loadXFDF(Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;

    invoke-static {p0}, Lcom/tom_roush/pdfbox/util/XMLUtil;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method public static loadXFDF(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->loadXFDF(Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    .line 351
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->close()V

    return-void
.end method

.method public getCatalog()Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    .line 129
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ROOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;-><init>()V

    .line 134
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->setCatalog(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;)V

    goto :goto_0

    .line 138
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    return-object v0
.end method

.method public save(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 254
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->save(Ljava/io/OutputStream;)V

    .line 255
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 282
    :try_start_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->write(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;)V

    .line 284
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->close()V

    .line 292
    :cond_0
    throw p1
.end method

.method public save(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->save(Ljava/io/File;)V

    return-void
.end method

.method public saveXFDF(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string p1, "UTF-8"

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 306
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->saveXFDF(Ljava/io/Writer;)V

    .line 307
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    return-void
.end method

.method public saveXFDF(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->writeXML(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 339
    invoke-virtual {p1}, Ljava/io/Writer;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/Writer;->close()V

    .line 341
    :cond_1
    throw v0
.end method

.method public saveXFDF(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->saveXFDF(Ljava/io/File;)V

    return-void
.end method

.method public setCatalog(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    .line 150
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 151
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ROOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public writeXML(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    .line 103
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "<xfdf xmlns=\"http://ns.adobe.com/xfdf/\" xml:space=\"preserve\">\n"

    .line 104
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->getCatalog()Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;->writeXML(Ljava/io/Writer;)V

    const-string v0, "</xfdf>\n"

    .line 108
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
