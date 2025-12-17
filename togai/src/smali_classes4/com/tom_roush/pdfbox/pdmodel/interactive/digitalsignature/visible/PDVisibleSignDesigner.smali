.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
.super Ljava/lang/Object;
.source "PDVisibleSignDesigner.java"


# instance fields
.field private affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

.field private formatterRectangleParameters:[I

.field private formatterRectangleParams:[B

.field private image:Landroid/graphics/Bitmap;

.field private imageHeight:Ljava/lang/Float;

.field private imageSizeInPercents:F

.field private imageWidth:Ljava/lang/Float;

.field private pageHeight:F

.field private pageWidth:F

.field private rotation:I

.field private signatureFieldName:Ljava/lang/String;

.field private xAxis:F

.field private yAxis:F


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sig"

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->signatureFieldName:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParams:[B

    const/16 v0, 0x64

    const/16 v1, 0x32

    const/4 v2, 0x0

    filled-new-array {v2, v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParameters:[I

    .line 52
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    iput v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->rotation:I

    .line 151
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->setImage(Landroid/graphics/Bitmap;)V

    .line 152
    invoke-direct {p0, p1, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->calculatePageSize(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;I)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x64t
        0x32t
    .end array-data
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sig"

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->signatureFieldName:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParams:[B

    const/16 v0, 0x64

    const/16 v1, 0x32

    const/4 v2, 0x0

    filled-new-array {v2, v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParameters:[I

    .line 52
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    iput v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->rotation:I

    .line 102
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->readImageStream(Ljava/io/InputStream;)V

    .line 103
    invoke-direct {p0, p1, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->calculatePageSize(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;I)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x64t
        0x32t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sig"

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->signatureFieldName:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParams:[B

    const/16 v0, 0x64

    const/16 v1, 0x32

    const/4 v2, 0x0

    filled-new-array {v2, v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParameters:[I

    .line 52
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    iput v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->rotation:I

    .line 164
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->readImageStream(Ljava/io/InputStream;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x64t
        0x32t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;Landroid/graphics/Bitmap;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sig"

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->signatureFieldName:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParams:[B

    const/16 v0, 0x64

    const/16 v1, 0x32

    const/4 v2, 0x0

    filled-new-array {v2, v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParameters:[I

    .line 52
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    iput v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->rotation:I

    .line 136
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->setImage(Landroid/graphics/Bitmap;)V

    .line 139
    invoke-direct {p0, p1, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->calculatePageSizeFromStream(Ljava/io/InputStream;I)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x64t
        0x32t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sig"

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->signatureFieldName:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParams:[B

    const/16 v0, 0x64

    const/16 v1, 0x32

    const/4 v2, 0x0

    filled-new-array {v2, v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParameters:[I

    .line 52
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    iput v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->rotation:I

    .line 86
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->readImageStream(Ljava/io/InputStream;)V

    .line 89
    invoke-direct {p0, p1, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->calculatePageSizeFromStream(Ljava/io/InputStream;I)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x64t
        0x32t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sig"

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->signatureFieldName:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParams:[B

    const/16 v0, 0x64

    const/16 v1, 0x32

    const/4 v2, 0x0

    filled-new-array {v2, v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParameters:[I

    .line 52
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    iput v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->rotation:I

    .line 118
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->setImage(Landroid/graphics/Bitmap;)V

    .line 121
    invoke-direct {p0, p1, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->calculatePageSizeFromFile(Ljava/lang/String;I)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x64t
        0x32t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sig"

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->signatureFieldName:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParams:[B

    const/16 v0, 0x64

    const/16 v1, 0x32

    const/4 v2, 0x0

    filled-new-array {v2, v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParameters:[I

    .line 52
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    iput v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->rotation:I

    .line 68
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->readImageStream(Ljava/io/InputStream;)V

    .line 71
    invoke-direct {p0, p1, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->calculatePageSizeFromFile(Ljava/lang/String;I)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x64t
        0x32t
    .end array-data
.end method

.method private calculatePageSize(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    sub-int/2addr p2, v0

    .line 204
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPage(I)Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getMediaBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p2

    .line 206
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->pageHeight(F)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;

    .line 207
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result p2

    iput p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->pageWidth:F

    const/high16 p2, 0x42c80000    # 100.0f

    iput p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageSizeInPercents:F

    .line 209
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getRotation()I

    move-result p1

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->rotation:I

    return-void

    .line 201
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "First page of pdf is 1, not "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private calculatePageSizeFromFile(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/File;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p1

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->calculatePageSize(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;I)V

    .line 175
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->close()V

    return-void
.end method

.method private calculatePageSizeFromStream(Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p1

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->calculatePageSize(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;I)V

    .line 186
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->close()V

    return-void
.end method

.method private pageHeight(F)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->pageHeight:F

    return-object p0
.end method

.method private readImageStream(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->setImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private setImage(Landroid/graphics/Bitmap;)V
    .locals 3

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->image:Landroid/graphics/Bitmap;

    .line 465
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    .line 466
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParameters:[I

    const/4 v1, 0x2

    .line 467
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParameters:[I

    const/4 v1, 0x3

    .line 468
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    aput p1, v0, v1

    return-void
.end method


# virtual methods
.method public adjustForRotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 9

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->xAxis:F

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->pageWidth:F

    iget v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->yAxis:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    .line 247
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->xAxis:F

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->yAxis:F

    .line 250
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    .line 251
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float v4, v1, v2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float v5, v1, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>(FFFFFF)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    .line 253
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    .line 255
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->pageWidth:F

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->xAxis:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    .line 237
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->pageHeight:F

    iget v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->yAxis:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    .line 238
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->xAxis:F

    iput v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->yAxis:F

    .line 242
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>(FFFFFF)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->yAxis:F

    iget v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->pageHeight:F

    iget v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->xAxis:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    .line 225
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->yAxis:F

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->xAxis:F

    .line 228
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    .line 229
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float v4, v1, v2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float v5, v1, v2

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>(FFFFFF)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    .line 231
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    .line 233
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    :goto_0
    return-object p0
.end method

.method public affineTransformParams([B)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    new-instance v7, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    int-to-float v1, v0

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    int-to-float v2, v0

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    int-to-float v3, v0

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    int-to-float v4, v0

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    int-to-float v5, v0

    const/4 v0, 0x5

    aget-byte p1, p1, v0

    int-to-float v6, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>(FFFFFF)V

    iput-object v7, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    return-object p0
.end method

.method public coordinates(FF)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->xAxis(F)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;

    .line 311
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->yAxis(F)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;

    return-object p0
.end method

.method public formatterRectangleParameters([I)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParameters:[I

    return-object p0
.end method

.method public formatterRectangleParams([B)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParams:[B

    return-object p0
.end method

.method public getAffineTransformParams()[B
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    .line 481
    invoke-virtual {v1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    .line 482
    invoke-virtual {v1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    .line 483
    invoke-virtual {v1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    .line 484
    invoke-virtual {v1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    .line 485
    invoke-virtual {v1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    .line 486
    invoke-virtual {v1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public getFormatterRectangleParameters()[I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParameters:[I

    return-object v0
.end method

.method public getFormatterRectangleParams()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParams:[B

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    .line 382
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageSizeInPercents()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageSizeInPercents:F

    return v0
.end method

.method public getPageHeight()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->pageHeight:F

    return v0
.end method

.method public getPageWidth()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->pageWidth:F

    return v0
.end method

.method public getSignatureFieldName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->signatureFieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureText()Ljava/lang/String;
    .locals 2

    .line 622
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "That method is not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getTemplateHeight()F
    .locals 1

    .line 403
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->getPageHeight()F

    move-result v0

    return v0
.end method

.method public getTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    .line 361
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getxAxis()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->xAxis:F

    return v0
.end method

.method public getyAxis()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->yAxis:F

    return v0
.end method

.method public height(F)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 2

    .line 392
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParameters:[I

    const/4 v1, 0x3

    float-to-int p1, p1

    .line 393
    aput p1, v0, v1

    return-object p0
.end method

.method public imageSizeInPercents(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageSizeInPercents:F

    return-void
.end method

.method public pageWidth(F)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->pageWidth:F

    return-object p0
.end method

.method public signatureFieldName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->signatureFieldName:Ljava/lang/String;

    return-object p0
.end method

.method public signatureImage(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 277
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 278
    :try_start_1
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->readImageStream(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 283
    throw p1
.end method

.method public signatureText(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 1

    .line 632
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "That method is not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transform(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 1

    .line 520
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v0, p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->affineTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    return-object p0
.end method

.method public width(F)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 2

    .line 371
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParameters:[I

    const/4 v1, 0x2

    float-to-int p1, p1

    .line 372
    aput p1, v0, v1

    return-object p0
.end method

.method public xAxis(F)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->xAxis:F

    return-object p0
.end method

.method public yAxis(F)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->yAxis:F

    return-object p0
.end method

.method public zoom(F)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    .line 295
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    .line 296
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageWidth:Ljava/lang/Float;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParameters:[I

    .line 297
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x2

    aput p1, v0, v1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->formatterRectangleParameters:[I

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->imageHeight:Ljava/lang/Float;

    .line 298
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x3

    aput v0, p1, v1

    return-object p0
.end method
