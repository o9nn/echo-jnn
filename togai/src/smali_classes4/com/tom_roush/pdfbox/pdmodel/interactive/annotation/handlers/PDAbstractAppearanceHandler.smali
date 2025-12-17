.class public abstract Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;
.super Ljava/lang/Object;
.source "PDAbstractAppearanceHandler.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;


# static fields
.field protected static final ANGLED_STYLES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final ARROW_ANGLE:D

.field protected static final INTERIOR_COLOR_STYLES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final SHORT_STYLES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final annotation:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

.field protected document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->createShortStyles()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->SHORT_STYLES:Ljava/util/Set;

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->ARROW_ANGLE:D

    .line 62
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->createInteriorColorStyles()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->INTERIOR_COLOR_STYLES:Ljava/util/Set;

    .line 67
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->createAngledStyles()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->ANGLED_STYLES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->annotation:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-void
.end method

.method private static createAngledStyles()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 457
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "ClosedArrow"

    .line 458
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "OpenArrow"

    .line 459
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "RClosedArrow"

    .line 460
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ROpenArrow"

    .line 461
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Butt"

    .line 462
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Slash"

    .line 463
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static createInteriorColorStyles()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "ClosedArrow"

    .line 447
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Circle"

    .line 448
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Diamond"

    .line 449
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "RClosedArrow"

    .line 450
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Square"

    .line 451
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static createShortStyles()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "OpenArrow"

    .line 436
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ClosedArrow"

    .line 437
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Square"

    .line 438
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Circle"

    .line 439
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Diamond"

    .line 440
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private getAppearanceEntryAsContentStream(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;Z)Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->getAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object p1

    .line 495
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->setTransformationMatrix(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V

    .line 498
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v0

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    .line 502
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    .line 505
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Z)V

    return-object v0
.end method

.method private getNormalAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;
    .locals 3

    .line 478
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->getAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->getNormalAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->isSubDictionary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 483
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 484
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->setNormalAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;)V

    :cond_1
    return-object v1
.end method

.method private setTransformationMatrix(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V
    .locals 5

    .line 510
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    .line 511
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 512
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    neg-float v1, v1

    float-to-double v1, v1

    .line 513
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v0

    neg-float v0, v0

    float-to-double v3, v0

    .line 512
    invoke-static {v1, v2, v3, v4}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getTranslateInstance(DD)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object v0

    .line 514
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setMatrix(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    return-void
.end method


# virtual methods
.method addRectDifferences(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;[F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 6

    if-eqz p2, :cond_1

    .line 234
    array-length v0, p2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    const/4 v2, 0x0

    aget v3, p2, v2

    sub-float/2addr v1, v3

    .line 240
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v3

    const/4 v4, 0x1

    aget v5, p2, v4

    sub-float/2addr v3, v5

    .line 241
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v5

    aget v2, p2, v2

    add-float/2addr v5, v2

    const/4 v2, 0x2

    aget v2, p2, v2

    add-float/2addr v5, v2

    .line 242
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    aget v2, p2, v4

    add-float/2addr p1, v2

    const/4 v2, 0x3

    aget p2, p2, v2

    add-float/2addr p1, p2

    invoke-direct {v0, v1, v3, v5, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FFFF)V

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method applyRectDifferences(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;[F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 6

    if-eqz p2, :cond_1

    .line 258
    array-length v0, p2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    const/4 v2, 0x0

    aget v3, p2, v2

    add-float/2addr v1, v3

    .line 263
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v3

    const/4 v4, 0x1

    aget v5, p2, v4

    add-float/2addr v3, v5

    .line 264
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v5

    aget v2, p2, v2

    sub-float/2addr v5, v2

    const/4 v2, 0x2

    aget v2, p2, v2

    sub-float/2addr v5, v2

    .line 265
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    aget v2, p2, v4

    sub-float/2addr p1, v2

    const/4 v2, 0x3

    aget p2, p2, v2

    sub-float/2addr p1, p2

    invoke-direct {v0, v1, v3, v5, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FFFF)V

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method drawArrow(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-wide v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->ARROW_ANGLE:D

    .line 362
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    float-to-double v4, p4

    mul-double/2addr v2, v4

    double-to-float p4, v2

    add-float/2addr p4, p2

    .line 363
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    add-float v1, p3, v0

    .line 364
    invoke-virtual {p1, p4, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    .line 365
    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    sub-float/2addr p3, v0

    .line 366
    invoke-virtual {p1, p4, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    return-void
.end method

.method drawCircle(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v7, p2

    const v0, 0x3f0d41b7

    mul-float v8, p4, v0

    add-float v9, p3, p4

    move-object/from16 v10, p1

    .line 402
    invoke-virtual {v10, v7, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    add-float v11, v7, v8

    add-float v12, v7, p4

    add-float v13, p3, v8

    move-object/from16 v0, p1

    move v1, v11

    move v2, v9

    move v3, v12

    move v4, v13

    move v5, v12

    move/from16 v6, p3

    .line 403
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    sub-float v14, p3, v8

    sub-float v15, p3, p4

    move v1, v12

    move v2, v14

    move v3, v11

    move v4, v15

    move/from16 v5, p2

    move v6, v15

    .line 404
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    sub-float v8, v7, v8

    sub-float v11, v7, p4

    move v1, v8

    move v2, v15

    move v3, v11

    move v4, v14

    move v5, v11

    move/from16 v6, p3

    .line 405
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    move v1, v11

    move v2, v13

    move v3, v8

    move v4, v9

    move/from16 v5, p2

    move v6, v9

    .line 406
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    .line 407
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closePath()V

    return-void
.end method

.method drawCircle2(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v7, p2

    const v0, 0x3f0d41b7

    mul-float v8, p4, v0

    add-float v9, p3, p4

    move-object/from16 v10, p1

    .line 425
    invoke-virtual {v10, v7, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    sub-float v11, v7, v8

    sub-float v12, v7, p4

    add-float v13, p3, v8

    move-object/from16 v0, p1

    move v1, v11

    move v2, v9

    move v3, v12

    move v4, v13

    move v5, v12

    move/from16 v6, p3

    .line 426
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    sub-float v14, p3, v8

    sub-float v15, p3, p4

    move v1, v12

    move v2, v14

    move v3, v11

    move v4, v15

    move/from16 v5, p2

    move v6, v15

    .line 427
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    add-float/2addr v8, v7

    add-float v11, v7, p4

    move v1, v8

    move v2, v15

    move v3, v11

    move v4, v14

    move v5, v11

    move/from16 v6, p3

    .line 428
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    move v1, v11

    move v2, v13

    move v3, v8

    move v4, v9

    move/from16 v5, p2

    move v6, v9

    .line 429
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    .line 430
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closePath()V

    return-void
.end method

.method drawDiamond(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sub-float v0, p2, p4

    .line 381
    invoke-virtual {p1, v0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    add-float v0, p3, p4

    .line 382
    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    add-float v0, p2, p4

    .line 383
    invoke-virtual {p1, v0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    sub-float/2addr p3, p4

    .line 384
    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 385
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closePath()V

    return-void
.end method

.method drawStyle(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFFZZZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const/4 v6, 0x1

    if-eqz p8, :cond_0

    const/4 v7, -0x1

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    const-string v8, "OpenArrow"

    .line 300
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "RClosedArrow"

    const-string v10, "ClosedArrow"

    const/high16 v11, 0x41100000    # 9.0f

    if-nez v8, :cond_8

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v8, "Butt"

    .line 304
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/high16 v12, 0x40400000    # 3.0f

    if-eqz v8, :cond_2

    mul-float v7, v5, v12

    sub-float v8, v4, v7

    .line 306
    invoke-virtual {v2, v3, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    add-float/2addr v4, v7

    .line 307
    invoke-virtual {v2, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    goto/16 :goto_3

    :cond_2
    const-string v8, "Diamond"

    .line 309
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    mul-float v7, v5, v12

    .line 311
    invoke-virtual {p0, v2, v3, v4, v7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->drawDiamond(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V

    goto/16 :goto_3

    :cond_3
    const-string v8, "Square"

    .line 313
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    mul-float v7, v5, v12

    sub-float/2addr v3, v7

    sub-float/2addr v4, v7

    const/high16 v7, 0x40c00000    # 6.0f

    mul-float/2addr v7, v5

    .line 315
    invoke-virtual {v2, v3, v4, v7, v7}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->addRect(FFFF)V

    goto :goto_3

    :cond_4
    const-string v8, "Circle"

    .line 317
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    mul-float v7, v5, v12

    .line 319
    invoke-virtual {p0, v2, v3, v4, v7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->drawCircle(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V

    goto :goto_3

    :cond_5
    const-string v8, "ROpenArrow"

    .line 321
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    const-string v7, "Slash"

    .line 325
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    mul-float v7, v5, v11

    const-wide/high16 v11, 0x404e000000000000L    # 60.0

    .line 329
    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    float-to-double v7, v7

    mul-double/2addr v13, v7

    double-to-float v13, v13

    add-float/2addr v13, v3

    .line 330
    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    double-to-float v11, v11

    add-float/2addr v11, v4

    .line 329
    invoke-virtual {v2, v13, v11}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    const-wide/high16 v11, 0x406e000000000000L    # 240.0

    .line 331
    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v7

    double-to-float v13, v13

    add-float/2addr v3, v13

    .line 332
    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    double-to-float v7, v11

    add-float/2addr v4, v7

    .line 331
    invoke-virtual {v2, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    goto :goto_3

    :cond_7
    :goto_1
    neg-int v7, v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v3, v7

    mul-float/2addr v7, v11

    .line 323
    invoke-virtual {p0, v2, v3, v4, v7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->drawArrow(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V

    goto :goto_3

    :cond_8
    :goto_2
    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v3, v7

    mul-float/2addr v7, v11

    .line 302
    invoke-virtual {p0, v2, v3, v4, v7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->drawArrow(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V

    .line 335
    :cond_9
    :goto_3
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 336
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 338
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closePath()V

    :cond_b
    sget-object v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->INTERIOR_COLOR_STYLES:Ljava/util/Set;

    .line 343
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p7, :cond_c

    goto :goto_4

    :cond_c
    const/4 v6, 0x0

    :goto_4
    move/from16 v1, p6

    .line 340
    invoke-virtual {v2, v5, v1, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->drawShape(FZZ)V

    return-void
.end method

.method public generateAppearanceStreams()V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->generateNormalAppearance()V

    .line 84
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->generateRolloverAppearance()V

    .line 85
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->generateDownAppearance()V

    return-void
.end method

.method getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->annotation:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    return-object v0
.end method

.method getAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->annotation:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    .line 119
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->annotation:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    .line 123
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->setAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;)V

    :cond_0
    return-object v0
.end method

.method getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->annotation:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    .line 95
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v0

    return-object v0
.end method

.method getDownAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;
    .locals 3

    .line 171
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->getAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->getDownAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->isSubDictionary()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 177
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->setDownAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;)V

    :cond_0
    return-object v1
.end method

.method getNormalAppearanceAsContentStream()Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->getNormalAppearanceAsContentStream(Z)Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    move-result-object v0

    return-object v0
.end method

.method getNormalAppearanceAsContentStream(Z)Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->getNormalAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    move-result-object v0

    .line 157
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->getAppearanceEntryAsContentStream(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;Z)Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    move-result-object p1

    return-object p1
.end method

.method getPaddedRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 5

    .line 217
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    add-float/2addr v1, p2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v2

    add-float/2addr v2, p2

    .line 218
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr p2, v4

    sub-float/2addr v3, p2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    sub-float/2addr p1, p2

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FFFF)V

    return-object v0
.end method

.method getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->annotation:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    .line 100
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    return-object v0
.end method

.method getRolloverAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;
    .locals 3

    .line 194
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->getAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->getRolloverAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->isSubDictionary()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 200
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->setRolloverAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;)V

    :cond_0
    return-object v1
.end method

.method handleBorderBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 5

    .line 526
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getRectDifferences()[F

    move-result-object v0

    .line 527
    array-length v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    div-float/2addr p2, v2

    invoke-virtual {p0, v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->getPaddedRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    .line 531
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->setRectDifferences(F)V

    .line 532
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getRectDifferences()[F

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->addRectDifferences(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;[F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 535
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p2

    .line 536
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getNormalAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object p1

    .line 538
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    neg-float v1, v1

    float-to-double v1, v1

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v3

    neg-float v3, v3

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getTranslateInstance(DD)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object v1

    .line 539
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 540
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setMatrix(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    goto :goto_0

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->applyRectDifferences(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;[F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    div-float/2addr p2, v2

    .line 545
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;->getPaddedRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method setOpacity(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 272
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;-><init>()V

    .line 273
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setStrokingAlphaConstant(Ljava/lang/Float;)V

    .line 274
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setNonStrokingAlphaConstant(Ljava/lang/Float;)V

    .line 276
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setGraphicsStateParameters(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V

    :cond_0
    return-void
.end method
