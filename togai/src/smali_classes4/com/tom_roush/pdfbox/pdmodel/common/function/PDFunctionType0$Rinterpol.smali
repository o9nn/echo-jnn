.class Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;
.super Ljava/lang/Object;
.source "PDFunctionType0.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Rinterpol"
.end annotation


# instance fields
.field private final in:[F

.field private final inNext:[I

.field private final inPrev:[I

.field private final numberOfInputValues:I

.field private final numberOfOutputValues:I

.field final synthetic this$0:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;[F[I[I)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->this$0:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getNumberOfOutputParameters()I

    move-result p1

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->numberOfOutputValues:I

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->in:[F

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->inPrev:[I

    iput-object p4, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->inNext:[I

    .line 270
    array-length p1, p2

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->numberOfInputValues:I

    return-void
.end method

.method private calcSampleIndex([I)I
    .locals 6

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->this$0:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;

    .line 349
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getSize()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v0

    .line 352
    array-length v1, p1

    add-int/lit8 v2, v1, -0x2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-ltz v2, :cond_0

    int-to-float v4, v4

    .line 355
    aget v5, v0, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v3

    const/4 v2, 0x0

    :goto_1
    if-ltz v1, :cond_2

    .line 359
    aget v3, p1, v1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v3, v1, -0x1

    if-ltz v3, :cond_1

    int-to-float v4, v4

    .line 362
    aget v3, v0, v3

    div-float/2addr v4, v3

    float-to-int v3, v4

    move v4, v3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method private getSamples()[[I
    .locals 12

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->this$0:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;

    .line 375
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->access$000(Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;)[[I

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->this$0:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;

    .line 378
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getNumberOfInputParameters()I

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->this$0:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;

    .line 379
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getNumberOfOutputParameters()I

    move-result v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->this$0:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;

    .line 380
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getSize()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    :goto_0
    if-ge v5, v0, :cond_0

    .line 383
    invoke-virtual {v2, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->getInt(I)I

    move-result v6

    mul-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->this$0:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;

    filled-new-array {v4, v1}, [I

    move-result-object v2

    .line 385
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->access$002(Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;[[I)[[I

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->this$0:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;

    .line 386
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getBitsPerSample()I

    move-result v0

    :try_start_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->this$0:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;

    .line 393
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getPDStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v2

    .line 394
    new-instance v5, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;

    invoke-direct {v5, v2}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    move v6, v3

    move v7, v6

    :goto_1
    if-ge v6, v4, :cond_2

    move v8, v3

    :goto_2
    if-ge v8, v1, :cond_1

    iget-object v9, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->this$0:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;

    .line 400
    invoke-static {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->access$000(Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;)[[I

    move-result-object v9

    aget-object v9, v9, v7

    invoke-interface {v5, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->readBits(I)J

    move-result-wide v10

    long-to-int v10, v10

    aput v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 404
    :cond_2
    invoke-interface {v5}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;->close()V

    .line 405
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "PdfBox-Android"

    const-string v2, "IOException while reading the sample values of this function."

    .line 409
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->this$0:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;

    .line 412
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->access$000(Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;)[[I

    move-result-object v0

    return-object v0
.end method

.method private rinterpol([II)[F
    .locals 10

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->numberOfOutputValues:I

    .line 295
    new-array v0, v0, [F

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->in:[F

    .line 296
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->inPrev:[I

    .line 299
    aget v1, v1, p2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->inNext:[I

    aget v3, v3, p2

    if-ne v1, v3, :cond_1

    .line 301
    aput v1, p1, p2

    .line 302
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->getSamples()[[I

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->calcSampleIndex([I)I

    move-result p1

    aget-object p1, p2, p1

    :goto_0
    iget p2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->numberOfOutputValues:I

    if-ge v2, p2, :cond_0

    .line 305
    aget p2, p1, v2

    int-to-float p2, p2

    aput p2, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 309
    :cond_1
    aput v1, p1, p2

    .line 310
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->getSamples()[[I

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->calcSampleIndex([I)I

    move-result v3

    aget-object v1, v1, v3

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->inNext:[I

    .line 311
    aget v3, v3, p2

    aput v3, p1, p2

    .line 312
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->getSamples()[[I

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->calcSampleIndex([I)I

    move-result p1

    aget-object p1, v3, p1

    :goto_1
    iget v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->numberOfOutputValues:I

    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->this$0:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->in:[F

    .line 315
    aget v5, v3, p2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->inPrev:[I

    aget v3, v3, p2

    int-to-float v6, v3

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->inNext:[I

    aget v3, v3, p2

    int-to-float v7, v3

    aget v3, v1, v2

    int-to-float v8, v3

    aget v3, p1, v2

    int-to-float v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->interpolate(FFFFF)F

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->inPrev:[I

    .line 322
    aget v1, v1, p2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->inNext:[I

    aget v3, v3, p2

    if-ne v1, v3, :cond_4

    .line 324
    aput v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 325
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->rinterpol([II)[F

    move-result-object p1

    return-object p1

    .line 327
    :cond_4
    aput v1, p1, p2

    add-int/lit8 v1, p2, 0x1

    .line 328
    invoke-direct {p0, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->rinterpol([II)[F

    move-result-object v3

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->inNext:[I

    .line 329
    aget v4, v4, p2

    aput v4, p1, p2

    .line 330
    invoke-direct {p0, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->rinterpol([II)[F

    move-result-object p1

    :goto_2
    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->numberOfOutputValues:I

    if-ge v2, v1, :cond_5

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->this$0:Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->in:[F

    .line 333
    aget v5, v1, p2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->inPrev:[I

    aget v1, v1, p2

    int-to-float v6, v1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->inNext:[I

    aget v1, v1, p2

    int-to-float v7, v1

    aget v8, v3, v2

    aget v9, p1, v2

    invoke-virtual/range {v4 .. v9}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->interpolate(FFFFF)F

    move-result v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method


# virtual methods
.method rinterpolate()[F
    .locals 2

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->numberOfInputValues:I

    .line 280
    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->rinterpol([II)[F

    move-result-object v0

    return-object v0
.end method
