.class public final Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;
.super Ljava/lang/Object;
.source "PDInlineImage.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;


# instance fields
.field private final decodedData:[B

.field private final parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private final rawData:[B

.field private final resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;[BLcom/tom_roush/pdfbox/pdmodel/PDResources;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->rawData:[B

    .line 77
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getFilters()Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 78
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 85
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length p2, p2

    invoke-direct {v2, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 p2, 0x0

    .line 86
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_1

    .line 89
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 90
    sget-object v0, Lcom/tom_roush/pdfbox/filter/FilterFactory;->INSTANCE:Lcom/tom_roush/pdfbox/filter/FilterFactory;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/filter/FilterFactory;->getFilter(Ljava/lang/String;)Lcom/tom_roush/pdfbox/filter/Filter;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/tom_roush/pdfbox/filter/Filter;->decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/filter/DecodeResult;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->decodedData:[B

    goto :goto_2

    :cond_2
    :goto_1
    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->decodedData:[B

    :goto_2
    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/filter/DecodeResult;->getParameters()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->addAll(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    :cond_3
    return-void
.end method

.method private createColorSpace(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->toLongName(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->create(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p1

    return-object p1

    .line 174
    :cond_0
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    const/4 p1, 0x0

    .line 177
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 178
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->I:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->INDEXED:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Illegal type of inline image color space: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_2
    :goto_0
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 181
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->addAll(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 182
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->INDEXED:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, p1, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 183
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->toLongName(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 184
    invoke-static {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->create(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p1

    return-object p1

    .line 190
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal type of object for inline image color space: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toLongName(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 152
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->RGB:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICERGB:Lcom/tom_roush/pdfbox/cos/COSName;

    return-object p1

    .line 156
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->CMYK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICECMYK:Lcom/tom_roush/pdfbox/cos/COSName;

    return-object p1

    .line 160
    :cond_1
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->G:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICEGRAY:Lcom/tom_roush/pdfbox/cos/COSName;

    :cond_2
    return-object p1
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->decodedData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public createInputStream(Lcom/tom_roush/pdfbox/filter/DecodeOptions;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->createInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public createInputStream(Ljava/util/List;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getFilters()Ljava/util/List;

    move-result-object v0

    .line 314
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->rawData:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 315
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->rawData:[B

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 316
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 319
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 320
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 326
    :cond_0
    sget-object v4, Lcom/tom_roush/pdfbox/filter/FilterFactory;->INSTANCE:Lcom/tom_roush/pdfbox/filter/FilterFactory;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/filter/FilterFactory;->getFilter(Ljava/lang/String;)Lcom/tom_roush/pdfbox/filter/Filter;

    move-result-object v4

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 327
    invoke-virtual {v4, v1, v2, v5, v3}, Lcom/tom_roush/pdfbox/filter/Filter;->decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/filter/DecodeResult;

    .line 328
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public getBitsPerComponent()I
    .locals 4

    .line 113
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->isStencil()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 119
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BPC:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->BITS_PER_COMPONENT:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getColorKeyMask()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 380
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IM:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->MASK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 381
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 383
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 132
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CS:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->createColorSpace(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->isStencil()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    return-object v0

    .line 145
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "could not determine inline image color space"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->decodedData:[B

    return-object v0
.end method

.method public getDecode()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 282
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 249
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 250
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v1, :cond_0

    .line 252
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 253
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/lang/Object;Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_0

    .line 255
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_1

    .line 257
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->convertCOSNameCOSArrayToList(Lcom/tom_roush/pdfbox/cos/COSArray;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getHeight()I
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 207
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->H:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->HEIGHT:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 351
    invoke-static {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->getRGBImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Lcom/tom_roush/pdfbox/cos/COSArray;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 357
    invoke-static {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->getRGBImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Landroid/graphics/Rect;ILcom/tom_roush/pdfbox/cos/COSArray;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getInterpolate()Z
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 231
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->I:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->INTERPOLATE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public getStencilImage(Landroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->isStencil()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-static {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/SampledImageReader;->getStencilImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Landroid/graphics/Paint;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 365
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Image is not a stencil"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 3

    .line 396
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getFilters()Ljava/util/List;

    move-result-object v0

    const-string v1, "png"

    if-eqz v0, :cond_5

    .line 398
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 402
    :cond_0
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->DCT_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->DCT_DECODE_ABBREVIATION:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 403
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 407
    :cond_1
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CCITTFAX_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CCITTFAX_DECODE_ABBREVIATION:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 408
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    const-string v0, "tiff"

    return-object v0

    :cond_4
    :goto_1
    const-string v0, "jpg"

    return-object v0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public getWidth()I
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 219
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->W:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->WIDTH:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->decodedData:[B

    .line 337
    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStencil()Z
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 288
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IM:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->IMAGE_MASK:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public setBitsPerComponent(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 126
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BPC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setColorSpace(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 201
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setDecode(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 276
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFilters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 269
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->convertStringListToCOSNameCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 270
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 213
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->H:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setInterpolate(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 237
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->I:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setStencil(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 294
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 225
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->W:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method
