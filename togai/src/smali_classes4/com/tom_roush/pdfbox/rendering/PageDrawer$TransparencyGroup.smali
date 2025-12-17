.class final Lcom/tom_roush/pdfbox/rendering/PageDrawer$TransparencyGroup;
.super Ljava/lang/Object;
.source "PageDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/rendering/PageDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransparencyGroup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tom_roush/pdfbox/rendering/PageDrawer;


# direct methods
.method private constructor <init>(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;ZLcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer$TransparencyGroup;->this$0:Lcom/tom_roush/pdfbox/rendering/PageDrawer;

    .line 1246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;->getMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/util/Matrix;)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p4

    .line 1255
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p5

    if-nez p5, :cond_0

    const-string p5, "PdfBox-Android"

    const-string v0, "transparency group ignored because BBox is null"

    .line 1260
    invoke-static {p5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    new-instance p5, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {p5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>()V

    .line 1263
    :cond_0
    invoke-virtual {p5, p4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)Landroid/graphics/Path;

    .line 1285
    invoke-static {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$100(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p4

    .line 1286
    invoke-static {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$200(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)F

    move-result p5

    float-to-double v0, p5

    invoke-static {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$300(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)F

    move-result p5

    float-to-double v2, p5

    invoke-static {v0, v1, v2, v3}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getScaleInstance(DD)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p5

    invoke-static {p1, p5}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$102(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    .line 1298
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;->getGroup()Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;

    move-result-object p5

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;->getColorSpace(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p5

    invoke-direct {p0, p5}, Lcom/tom_roush/pdfbox/rendering/PageDrawer$TransparencyGroup;->isGray(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Z

    const/4 p5, 0x0

    if-nez p3, :cond_1

    .line 1308
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;->getGroup()Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroupAttributes;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1309
    invoke-static {p1, p2, v0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$400(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p5

    :goto_0
    if-eqz v0, :cond_3

    .line 1316
    invoke-static {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$500(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1319
    invoke-static {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$600(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Lcom/tom_roush/pdfbox/rendering/PDFRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->getPageImage()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 1332
    :cond_2
    invoke-static {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$500(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/rendering/PageDrawer$TransparencyGroup;

    .line 1360
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$700(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Z

    move-result v0

    .line 1361
    invoke-static {p1, p5}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$702(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Z)Z

    .line 1367
    invoke-static {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$800(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p5

    .line 1372
    invoke-static {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$900(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Landroid/graphics/Path$FillType;

    move-result-object v1

    const/4 v2, 0x0

    .line 1373
    invoke-static {p1, v2}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$902(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Landroid/graphics/Path$FillType;)Landroid/graphics/Path$FillType;

    .line 1374
    invoke-static {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$1000(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Landroid/graphics/Path;

    move-result-object v2

    .line 1375
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-static {p1, v3}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$1002(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Landroid/graphics/Path;)Landroid/graphics/Path;

    .line 1381
    invoke-static {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$1100(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)V

    if-eqz p3, :cond_4

    .line 1386
    :try_start_0
    invoke-static {p1, p2}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$1200(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;)V

    goto :goto_2

    .line 1390
    :cond_4
    invoke-static {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$500(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Ljava/util/Deque;

    move-result-object p3

    invoke-interface {p3, p0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1391
    invoke-static {p1, p2}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$1300(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;)V

    .line 1392
    invoke-static {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$500(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Ljava/util/Deque;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Deque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 1394
    invoke-static {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$500(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Ljava/util/Deque;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Deque;->pop()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    :cond_5
    :goto_2
    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$702(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Z)Z

    .line 1410
    invoke-static {p1, v1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$902(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Landroid/graphics/Path$FillType;)Landroid/graphics/Path$FillType;

    .line 1411
    invoke-static {p1, v2}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$1002(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Landroid/graphics/Path;)Landroid/graphics/Path;

    .line 1412
    invoke-static {p1, p5}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$802(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 1413
    invoke-static {p1, p4}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$102(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    return-void

    :catchall_0
    move-exception p2

    .line 1405
    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$702(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Z)Z

    .line 1410
    invoke-static {p1, v1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$902(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Landroid/graphics/Path$FillType;)Landroid/graphics/Path$FillType;

    .line 1411
    invoke-static {p1, v2}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$1002(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Landroid/graphics/Path;)Landroid/graphics/Path;

    .line 1412
    invoke-static {p1, p5}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$802(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 1413
    invoke-static {p1, p4}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->access$102(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    .line 1414
    throw p2
.end method

.method synthetic constructor <init>(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;ZLcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;Lcom/tom_roush/pdfbox/rendering/PageDrawer$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1220
    invoke-direct/range {p0 .. p5}, Lcom/tom_roush/pdfbox/rendering/PageDrawer$TransparencyGroup;-><init>(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;ZLcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    return-void
.end method

.method private isGray(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Z
    .locals 0

    .line 1422
    instance-of p1, p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
