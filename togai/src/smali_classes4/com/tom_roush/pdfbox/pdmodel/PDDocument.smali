.class public Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
.super Ljava/lang/Object;
.source "PDDocument.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final RESERVE_BYTE_RANGE:[I


# instance fields
.field private accessPermission:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

.field private allSecurityToBeRemoved:Z

.field private final document:Lcom/tom_roush/pdfbox/cos/COSDocument;

.field private documentCatalog:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

.field private documentId:Ljava/lang/Long;

.field private documentInformation:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

.field private encryption:Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

.field private final fontsToClose:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tom_roush/fontbox/ttf/TrueTypeFont;",
            ">;"
        }
    .end annotation
.end field

.field private final fontsToSubset:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;",
            ">;"
        }
    .end annotation
.end field

.field private final pdfSource:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

.field private resourceCache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

.field private signInterface:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;

.field private signatureAdded:Z

.field private signingSupport:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SigningSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x3b9aca00

    filled-new-array {v0, v1, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->RESERVE_BYTE_RANGE:[I

    .line 100
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->toRGB([F)[F

    :try_start_0
    const-string v0, "0"

    .line 104
    invoke-static {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->get(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSNumber;

    const-string v0, "1"

    .line 105
    invoke-static {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->get(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSNumber;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 160
    invoke-static {}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setupMainMemoryOnly()Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;-><init>(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDocument;)V
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;-><init>(Lcom/tom_roush/pdfbox/cos/COSDocument;Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDocument;Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V
    .locals 1

    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;-><init>(Lcom/tom_roush/pdfbox/cos/COSDocument;Lcom/tom_roush/pdfbox/io/RandomAccessRead;Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDocument;Lcom/tom_roush/pdfbox/io/RandomAccessRead;Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;)V
    .locals 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->fontsToSubset:Ljava/util/Set;

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->fontsToClose:Ljava/util/Set;

    .line 149
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->resourceCache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->signatureAdded:Z

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->pdfSource:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->accessPermission:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V
    .locals 3

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->fontsToSubset:Ljava/util/Set;

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->fontsToClose:Ljava/util/Set;

    .line 149
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/DefaultResourceCache;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->resourceCache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->signatureAdded:Z

    const/4 v0, 0x0

    .line 174
    :try_start_0
    new-instance v1, Lcom/tom_roush/pdfbox/io/ScratchFile;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/io/ScratchFile;-><init>(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error initializing scratch file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ". Fall back to main memory usage only."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PdfBox-Android"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :try_start_1
    new-instance v1, Lcom/tom_roush/pdfbox/io/ScratchFile;

    invoke-static {}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setupMainMemoryOnly()Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/io/ScratchFile;-><init>(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-object v1, v0

    .line 187
    :goto_0
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-direct {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDocument;-><init>(Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->pdfSource:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 191
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 192
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->setTrailer(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 195
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 196
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ROOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 197
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CATALOG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 198
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->VERSION:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v1, "1.4"

    invoke-static {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 201
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 202
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAGES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 203
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAGES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 204
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 205
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 206
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->COUNT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSInteger;->ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method private assignAcroFormDefaultResource(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 3

    .line 614
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    .line 615
    instance-of v0, p2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_1

    .line 617
    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 618
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getDefaultResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 621
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 622
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    .line 623
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    .line 628
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->XOBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    .line 629
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->XOBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 630
    instance-of v2, p2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v2, :cond_1

    instance-of v2, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v2, :cond_1

    .line 633
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->addAll(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 634
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private assignAppearanceDictionary(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 2

    .line 606
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    invoke-direct {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    const/4 v1, 0x1

    .line 607
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    .line 608
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->setAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;)V

    return-void
.end method

.method private assignSignatureRectangle(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 2

    .line 592
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 597
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->RECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 598
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 599
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    :cond_1
    return-void
.end method

.method private checkSignatureAnnotation(Ljava/util/List;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;",
            ">;",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;",
            ")Z"
        }
    .end annotation

    .line 535
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    .line 537
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private checkSignatureField(Ljava/util/Iterator;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
            ">;",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;",
            ")Z"
        }
    .end annotation

    .line 514
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    .line 517
    instance-of v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;

    if-eqz v1, :cond_0

    .line 518
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private findSignatureField(Ljava/util/Iterator;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
            ">;",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;",
            ")",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;"
        }
    .end annotation

    .line 489
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    .line 492
    instance-of v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;

    if-eqz v1, :cond_0

    .line 494
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->getSignature()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static load(Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1092
    new-instance v6, Lcom/tom_roush/pdfbox/io/ScratchFile;

    invoke-direct {v6, p4}, Lcom/tom_roush/pdfbox/io/ScratchFile;-><init>(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V

    .line 1095
    :try_start_0
    new-instance p4, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    .line 1096
    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->parse()V

    .line 1097
    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->getPDDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1101
    invoke-static {v6}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1102
    throw p0
.end method

.method public static load(Ljava/io/File;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 986
    invoke-static {}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setupMainMemoryOnly()Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/File;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/File;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 1003
    invoke-static {p0, v0, v1, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1020
    invoke-static {}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setupMainMemoryOnly()Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object v1

    invoke-static {p0, p1, v0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1038
    invoke-static {p0, p1, v0, v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1056
    invoke-static {}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setupMainMemoryOnly()Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1076
    new-instance v0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;-><init>(Ljava/io/File;)V

    .line 1079
    :try_start_0
    invoke-static {v0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1083
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1084
    throw p0
.end method

.method public static load(Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1119
    invoke-static {}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setupMainMemoryOnly()Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object v1

    const-string v2, ""

    invoke-static {p0, v2, v0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/InputStream;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 1137
    invoke-static {p0, v0, v1, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1155
    invoke-static {}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setupMainMemoryOnly()Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object v1

    invoke-static {p0, p1, v0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1193
    invoke-static {p0, p1, v0, v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1174
    invoke-static {}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setupMainMemoryOnly()Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1214
    new-instance v6, Lcom/tom_roush/pdfbox/io/ScratchFile;

    invoke-direct {v6, p4}, Lcom/tom_roush/pdfbox/io/ScratchFile;-><init>(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V

    .line 1217
    :try_start_0
    invoke-virtual {v6, p0}, Lcom/tom_roush/pdfbox/io/ScratchFile;->createBuffer(Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/io/RandomAccess;

    move-result-object v1

    .line 1218
    new-instance p0, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    .line 1219
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->parse()V

    .line 1220
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->getPDDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1224
    invoke-static {v6}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1225
    throw p0
.end method

.method public static load([B)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 1241
    invoke-static {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load([BLjava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0

    return-object p0
.end method

.method public static load([BLjava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1258
    invoke-static {p0, p1, v0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load([BLjava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0

    return-object p0
.end method

.method public static load([BLjava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1277
    invoke-static {}, Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;->setupMainMemoryOnly()Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->load([BLjava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0

    return-object p0
.end method

.method public static load([BLjava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1297
    new-instance v5, Lcom/tom_roush/pdfbox/io/ScratchFile;

    invoke-direct {v5, p4}, Lcom/tom_roush/pdfbox/io/ScratchFile;-><init>(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V

    .line 1298
    new-instance v1, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;

    invoke-direct {v1, p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;-><init>([B)V

    .line 1299
    new-instance p0, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lcom/tom_roush/pdfbox/io/ScratchFile;)V

    .line 1300
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->parse()V

    .line 1301
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFParser;->getPDDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p0

    return-object p0
.end method

.method private prepareNonVisibleSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)V
    .locals 3

    .line 645
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 648
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;-><init>()V

    .line 649
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    invoke-direct {v1, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 650
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 651
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->setNormalAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V

    .line 652
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->setAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;)V

    return-void
.end method

.method private prepareVisibleSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDocument;)V
    .locals 7

    .line 551
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getObjects()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    goto :goto_1

    .line 558
    :cond_1
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 559
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v3, :cond_0

    .line 561
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 564
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 565
    sget-object v5, Lcom/tom_roush/pdfbox/cos/COSName;->ANNOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v5, v3}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 567
    invoke-direct {p0, p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->assignSignatureRectangle(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    move v0, v4

    .line 572
    :cond_2
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->FT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 573
    sget-object v5, Lcom/tom_roush/pdfbox/cos/COSName;->AP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    if-eqz v1, :cond_0

    .line 574
    sget-object v6, Lcom/tom_roush/pdfbox/cos/COSName;->SIG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v6, v3}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v5, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v3, :cond_0

    .line 576
    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {p0, p1, v5}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->assignAppearanceDictionary(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 577
    invoke-direct {p0, p2, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->assignAcroFormDefaultResource(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    move v1, v4

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    return-void

    .line 585
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Template is missing required objects"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->add(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    return-void
.end method

.method public addSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->addSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;)V

    return-void
.end method

.method public addSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->addSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;)V

    return-void
.end method

.method public addSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->signatureAdded:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->signatureAdded:Z

    .line 339
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->getPreferredSignatureSize()I

    move-result v1

    if-lez v1, :cond_0

    .line 342
    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->setContents([B)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x2500

    new-array v1, v1, [B

    .line 346
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->setContents([B)V

    :goto_0
    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->RESERVE_BYTE_RANGE:[I

    .line 350
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->setByteRange([I)V

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->signInterface:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;

    .line 357
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object p2

    .line 358
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->getCount()I

    move-result v1

    if-eqz v1, :cond_9

    .line 364
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->getPage()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 365
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->get(I)Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object p2

    .line 368
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v1

    const/4 v2, 0x0

    .line 369
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getAcroForm(Lcom/tom_roush/pdfbox/pdmodel/fixup/PDDocumentFixup;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v4

    .line 370
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    if-nez v4, :cond_1

    .line 374
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    invoke-direct {v4, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 375
    invoke-virtual {v1, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->setAcroForm(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    goto :goto_1

    .line 379
    :cond_1
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    .line 383
    :goto_1
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v5, Lcom/tom_roush/pdfbox/cos/COSName;->FIELDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 384
    instance-of v5, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v5, :cond_2

    .line 386
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 387
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->setNeedToBeUpdated(Z)V

    .line 388
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFieldIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->findSignatureField(Ljava/util/Iterator;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;

    move-result-object v2

    goto :goto_2

    .line 392
    :cond_2
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v5, Lcom/tom_roush/pdfbox/cos/COSName;->FIELDS:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v6, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v6}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    invoke-virtual {v1, v5, v6}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_2
    if-nez v2, :cond_3

    .line 397
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;

    invoke-direct {v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    .line 399
    invoke-virtual {v2, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->setValue(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;)V

    .line 400
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->getWidgets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    .line 402
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->setPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    goto :goto_3

    .line 406
    :cond_3
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->getWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    .line 407
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    move-object p1, v1

    .line 416
    :goto_3
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->setPrinted(Z)V

    .line 423
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFields()Ljava/util/List;

    move-result-object v1

    .line 424
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    .line 425
    invoke-virtual {v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->setSignaturesExist(Z)V

    .line 426
    invoke-virtual {v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->setAppendOnly(Z)V

    .line 428
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFieldIterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->checkSignatureField(Ljava/util/Iterator;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 431
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    goto :goto_4

    .line 435
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    :goto_4
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;->getVisualSignature()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object p3

    if-nez p3, :cond_5

    .line 444
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->prepareNonVisibleSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)V

    return-void

    .line 448
    :cond_5
    invoke-direct {p0, p1, v4, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->prepareVisibleSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDocument;)V

    .line 451
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getAnnotations()Ljava/util/List;

    move-result-object p3

    .line 456
    invoke-virtual {p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setAnnotations(Ljava/util/List;)V

    if-eqz v3, :cond_6

    .line 460
    instance-of v2, p3, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    if-eqz v2, :cond_6

    instance-of v2, v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    if-eqz v2, :cond_6

    move-object v2, p3

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    .line 463
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->toList()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v2

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    .line 464
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->toList()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 467
    :cond_6
    invoke-direct {p0, p3, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->checkSignatureAnnotation(Ljava/util/List;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 469
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    goto :goto_5

    .line 473
    :cond_7
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_8
    :goto_5
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    return-void

    .line 361
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot sign an empty document"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 332
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only one signature may be added in a document"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, p1, v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->addSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;)V

    return-void
.end method

.method public addSignatureField(Ljava/util/List;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;",
            ">;",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 670
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    const/4 v1, 0x0

    .line 673
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getAcroForm(Lcom/tom_roush/pdfbox/pdmodel/fixup/PDDocumentFixup;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v1

    if-nez v1, :cond_0

    .line 676
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    invoke-direct {v1, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 677
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->setAcroForm(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    .line 679
    :cond_0
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 680
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    .line 681
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    .line 682
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->isSignaturesExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 685
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->setSignaturesExist(Z)V

    .line 688
    :cond_1
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFields()Ljava/util/List;

    move-result-object v0

    .line 690
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;

    .line 692
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    .line 695
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFieldIterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->checkSignatureField(Ljava/util/Iterator;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 698
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    goto :goto_1

    .line 702
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    :goto_1
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->getSignature()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 708
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    .line 713
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->getSignature()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->addSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureOptions;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    .line 1565
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->signingSupport:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SigningSupport;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "SigningSupport"

    .line 1577
    invoke-static {v0, v2, v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeAndLogException(Ljava/io/Closeable;Ljava/lang/String;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    const-string v2, "COSDocument"

    .line 1581
    invoke-static {v0, v2, v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeAndLogException(Ljava/io/Closeable;Ljava/lang/String;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->pdfSource:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    if-eqz v1, :cond_1

    const-string v2, "RandomAccessRead pdfSource"

    .line 1586
    invoke-static {v1, v2, v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeAndLogException(Ljava/io/Closeable;Ljava/lang/String;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->fontsToClose:Ljava/util/Set;

    .line 1590
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    const-string v3, "TrueTypeFont"

    .line 1592
    invoke-static {v2, v3, v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeAndLogException(Ljava/io/Closeable;Ljava/lang/String;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    .line 1598
    :cond_3
    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public getCurrentAccessPermission()Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->accessPermission:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    if-nez v0, :cond_0

    .line 1652
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->getOwnerAccessPermission()Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->accessPermission:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->accessPermission:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    return-object v0
.end method

.method public getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    return-object v0
.end method

.method public getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->documentCatalog:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    .line 840
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 841
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ROOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 842
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 844
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->documentCatalog:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    goto :goto_0

    .line 848
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->documentCatalog:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->documentCatalog:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    return-object v0
.end method

.method public getDocumentId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->documentId:Ljava/lang/Long;

    return-object v0
.end method

.method public getDocumentInformation()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->documentInformation:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    .line 804
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 805
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    if-nez v1, :cond_0

    .line 808
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 809
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 811
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->documentInformation:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->documentInformation:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

    return-object v0
.end method

.method public getEncryption()Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->encryption:Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    if-nez v0, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getEncryptionDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->encryption:Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->encryption:Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    return-object v0
.end method

.method getFontsToSubset()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->fontsToSubset:Ljava/util/Set;

    return-object v0
.end method

.method public getLastSignatureDictionary()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 902
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getSignatureDictionaries()Ljava/util/List;

    move-result-object v0

    .line 903
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 906
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumberOfPages()I
    .locals 1

    .line 1554
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->getCount()I

    move-result v0

    return v0
.end method

.method public getPage(I)Lcom/tom_roush/pdfbox/pdmodel/PDPage;
    .locals 1

    .line 1534
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->get(I)Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object p1

    return-object p1
.end method

.method public getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;
    .locals 1

    .line 1544
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object v0

    return-object v0
.end method

.method public getResourceCache()Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->resourceCache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    return-object v0
.end method

.method public getSignatureDictionaries()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 942
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 943
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getSignatureFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;

    .line 945
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 948
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSignatureFields()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 920
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getAcroForm(Lcom/tom_roush/pdfbox/pdmodel/fixup/PDDocumentFixup;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 923
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFieldTree()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    .line 925
    instance-of v3, v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;

    if-eqz v3, :cond_0

    .line 927
    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getVersion()F
    .locals 4

    .line 1704
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getVersion()F

    move-result v0

    const v1, 0x3fb33333    # 1.4f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 1708
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1714
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PdfBox-Android"

    const-string v3, "Can\'t extract the version number of the document catalog."

    .line 1718
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 1722
    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_1
    return v0
.end method

.method public importPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)Lcom/tom_roush/pdfbox/pdmodel/PDPage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 765
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->resourceCache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V

    .line 766
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getContents()Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {v1, p0, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 767
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setContents(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V

    .line 768
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->addPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    .line 769
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCropBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setCropBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 770
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getMediaBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setMediaBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 771
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setRotation(I)V

    .line 772
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RESOURCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "inherited resources of source document are not imported to destination page"

    const-string v1, "PdfBox-Android"

    .line 774
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "call importedPage.setResources(page.getResources()) to do this"

    .line 775
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public isAllSecurityToBeRemoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->allSecurityToBeRemoved:Z

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    .line 861
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method public protect(Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1619
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->isAllSecurityToBeRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PdfBox-Android"

    const-string v1, "do not call setAllSecurityToBeRemoved(true) before calling protect(), as protect() implies setAllSecurityToBeRemoved(false)"

    .line 1621
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1623
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->setAllSecurityToBeRemoved(Z)V

    .line 1626
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1628
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->encryption:Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    .line 1631
    :cond_1
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;->newSecurityHandlerForPolicy(Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;)Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1637
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getEncryption()Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setSecurityHandler(Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;)V

    return-void

    .line 1634
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No security handler for policy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerTrueTypeFontForClosing(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->fontsToClose:Ljava/util/Set;

    .line 963
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePage(I)V
    .locals 1

    .line 735
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->remove(I)V

    return-void
.end method

.method public removePage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 1

    .line 725
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->remove(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    return-void
.end method

.method public save(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1333
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->save(Ljava/io/OutputStream;)V

    return-void
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    .line 1350
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->fontsToSubset:Ljava/util/Set;

    .line 1356
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    .line 1358
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->subset()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->fontsToSubset:Ljava/util/Set;

    .line 1360
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1363
    new-instance v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1366
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->write(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->close()V

    .line 1371
    throw p1

    .line 1352
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot save a document which has been closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public save(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1317
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->save(Ljava/io/File;)V

    return-void
.end method

.method public saveIncremental(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->pdfSource:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    if-eqz v1, :cond_0

    .line 1400
    new-instance v1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->pdfSource:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    invoke-direct {v1, p1, v2}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;-><init>(Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->signInterface:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;

    .line 1401
    invoke-virtual {v1, p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->write(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1407
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    .line 1398
    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "document was not loaded from a file or a stream"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_1

    .line 1407
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->close()V

    .line 1409
    :cond_1
    throw p1
.end method

.method public saveIncremental(Ljava/io/OutputStream;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->pdfSource:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1442
    :try_start_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->pdfSource:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    invoke-direct {v1, p1, v2, p2}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;-><init>(Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/io/RandomAccessRead;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->signInterface:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;

    .line 1443
    invoke-virtual {v1, p0, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->write(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SignatureInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1449
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

    .line 1451
    :cond_0
    throw p1

    .line 1437
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "document was not loaded from a file or a stream"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveIncrementalForExternalSigning(Ljava/io/OutputStream;)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/ExternalSigningSupport;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->pdfSource:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    if-eqz v0, :cond_3

    .line 1502
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getSignatureDictionaries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;

    .line 1505
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->isNeedToBeUpdated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1510
    :cond_1
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->getByteRange()[I

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->RESERVE_BYTE_RANGE:[I

    .line 1511
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1516
    new-instance v0, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->pdfSource:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    invoke-direct {v0, p1, v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;-><init>(Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V

    .line 1517
    invoke-virtual {v0, p0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->write(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 1518
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SigningSupport;

    invoke-direct {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SigningSupport;-><init>(Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;)V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->signingSupport:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/SigningSupport;

    return-object p1

    .line 1513
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "signature reserve byte range has been changed after addSignature(), please set the byte range that existed after addSignature()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1497
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "document was not loaded from a file or a stream"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAllSecurityToBeRemoved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->allSecurityToBeRemoved:Z

    return-void
.end method

.method public setDocumentId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->documentId:Ljava/lang/Long;

    return-void
.end method

.method public setDocumentInformation(Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->documentInformation:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->document:Lcom/tom_roush/pdfbox/cos/COSDocument;

    .line 828
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setEncryptionDictionary(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->encryption:Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    return-void
.end method

.method public setResourceCache(Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->resourceCache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    return-void
.end method

.method public setVersion(F)V
    .locals 2

    .line 1738
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getVersion()F

    move-result v0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const-string p1, "PdfBox-Android"

    const-string v0, "It\'s not allowed to downgrade the version of a pdf."

    .line 1747
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1751
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getVersion()F

    move-result v0

    const v1, 0x3fb33333    # 1.4f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 1753
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->setVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 1758
    :cond_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->setVersion(F)V

    :goto_0
    return-void
.end method
