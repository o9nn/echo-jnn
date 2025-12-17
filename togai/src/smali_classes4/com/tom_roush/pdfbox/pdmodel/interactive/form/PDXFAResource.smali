.class public final Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDXFAResource;
.super Ljava/lang/Object;
.source "PDXFAResource.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field private static final BUFFER_SIZE:I = 0x400


# instance fields
.field private final xfa:Lcom/tom_roush/pdfbox/cos/COSBase;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDXFAResource;->xfa:Lcom/tom_roush/pdfbox/cos/COSBase;

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDXFAResource;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    instance-of v2, v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v3, -0x1

    const/16 v4, 0x400

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    new-array v2, v4, [B

    .line 97
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDXFAResource;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v6

    check-cast v6, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v7, 0x1

    .line 98
    :goto_0
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 100
    invoke-virtual {v6, v7}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v8

    .line 101
    instance-of v9, v8, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v9, :cond_1

    .line 103
    check-cast v8, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v1

    .line 105
    :goto_1
    invoke-virtual {v1, v2, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-eq v8, v3, :cond_0

    .line 107
    invoke-virtual {v0, v2, v5, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    :cond_1
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDXFAResource;->xfa:Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 114
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSBase;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    instance-of v2, v2, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v2, :cond_4

    new-array v2, v4, [B

    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDXFAResource;->xfa:Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 117
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/cos/COSBase;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v6

    check-cast v6, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v1

    .line 119
    :goto_2
    invoke-virtual {v1, v2, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-eq v6, v3, :cond_3

    .line 121
    invoke-virtual {v0, v2, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 123
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz v1, :cond_5

    .line 130
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 133
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    .line 130
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 132
    :cond_6
    throw v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDXFAResource;->xfa:Lcom/tom_roush/pdfbox/cos/COSBase;

    return-object v0
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 151
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDXFAResource;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/util/XMLUtil;->parse(Ljava/io/InputStream;Z)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method
