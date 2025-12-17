.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFileAttachmentAppearanceHandler;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;
.source "PDFileAttachmentAppearanceHandler.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method

.method private drawPaperclip(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x41592f1b    # 13.574f

    const v1, 0x4114d0e5    # 9.301f

    .line 88
    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    const v0, 0x410ed0e5    # 8.926f

    const v1, 0x415f2f1b    # 13.949f

    .line 89
    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const v1, 0x40f4bc6a    # 7.648f

    const v2, 0x4173a1cb    # 15.227f

    const/high16 v3, 0x40b40000    # 5.625f

    const v4, 0x4173a1cb    # 15.227f

    const v5, 0x408da1cb    # 4.426f

    const v6, 0x415f2f1b    # 13.949f

    move-object v0, p1

    .line 90
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x404978d5    # 3.148f

    const v2, 0x414ad0e5    # 12.676f

    const v3, 0x404978d5    # 3.148f

    const v4, 0x412a5e35    # 10.648f

    const v6, 0x41172f1b    # 9.449f

    .line 91
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v0, 0x4126d0e5    # 10.426f

    const v1, 0x405cbc6a    # 3.449f

    .line 92
    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const v1, 0x4132d0e5    # 11.176f

    const v2, 0x403178d5    # 2.773f

    const v3, 0x4144d0e5    # 12.301f

    const v4, 0x403178d5    # 2.773f

    const v5, 0x4150d0e5    # 13.051f

    const v6, 0x405cbc6a    # 3.449f

    move-object v0, p1

    .line 93
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x415cd0e5    # 13.801f

    const v2, 0x40865e35    # 4.199f

    const v3, 0x415cd0e5    # 13.801f

    const v4, 0x40acbc6a    # 5.398f

    const v6, 0x40c25e35    # 6.074f

    .line 94
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const/high16 v0, 0x40fc0000    # 7.875f

    const/high16 v1, 0x41340000    # 11.25f

    .line 95
    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const v1, 0x40f4bc6a    # 7.648f

    const v2, 0x4137a1cb    # 11.477f

    const v3, 0x40e8bc6a    # 7.273f

    const v4, 0x4137a1cb    # 11.477f

    const v5, 0x40e1a1cb    # 7.051f

    const/high16 v6, 0x41340000    # 11.25f

    move-object v0, p1

    .line 96
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x40da5e35    # 6.824f

    const v2, 0x41305e35    # 11.023f

    const v3, 0x40da5e35    # 6.824f

    const v4, 0x412a5e35    # 10.648f

    const v6, 0x4126d0e5    # 10.426f

    .line 97
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const/high16 v0, 0x412e0000    # 10.875f

    const v1, 0x40d34396    # 6.602f

    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const v1, 0x4132d0e5    # 11.176f

    const v2, 0x40c9a1cb    # 6.301f

    const v3, 0x4132d0e5    # 11.176f

    const v4, 0x40bb4396    # 5.852f

    const/high16 v5, 0x412e0000    # 10.875f

    const v6, 0x40b1a1cb    # 5.551f

    move-object v0, p1

    .line 99
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x41292f1b    # 10.574f

    const/high16 v2, 0x40a80000    # 5.25f

    const/high16 v3, 0x41220000    # 10.125f

    const/high16 v4, 0x40a80000    # 5.25f

    const v5, 0x411d2f1b    # 9.824f

    .line 100
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const/high16 v0, 0x40c00000    # 6.0f

    const v1, 0x41172f1b    # 9.449f

    .line 101
    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const v1, 0x40a5a1cb    # 5.176f

    const v2, 0x41245e35    # 10.273f

    const v3, 0x40a5a1cb    # 5.176f

    const v4, 0x4138d0e5    # 11.551f

    const/high16 v5, 0x40c00000    # 6.0f

    const/high16 v6, 0x41460000    # 12.375f

    move-object v0, p1

    .line 102
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x40da5e35    # 6.824f

    const/high16 v2, 0x41520000    # 13.125f

    const v3, 0x4101a1cb    # 8.102f

    const/high16 v4, 0x41520000    # 13.125f

    const v5, 0x410ed0e5    # 8.926f

    .line 103
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v0, 0x4161a1cb    # 14.102f

    const v1, 0x40e65e35    # 7.199f

    .line 104
    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const v1, 0x41772f1b    # 15.449f

    const v2, 0x40bb4396    # 5.852f

    const v3, 0x41772f1b    # 15.449f

    const/high16 v4, 0x40700000    # 3.75f

    const v5, 0x4161a1cb    # 14.102f

    const v6, 0x401978d5    # 2.398f

    move-object v0, p1

    .line 105
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const/high16 v1, 0x414c0000    # 12.75f

    const v2, 0x3f86872b    # 1.051f

    const v3, 0x412a5e35    # 10.648f

    const v4, 0x3f86872b    # 1.051f

    const v5, 0x4114d0e5    # 9.301f

    .line 106
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v0, 0x40534396    # 3.301f

    const v1, 0x41065e35    # 8.398f

    .line 107
    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const v1, 0x401978d5    # 2.398f

    const v2, 0x4114d0e5    # 9.301f

    const v3, 0x3ff978d5    # 1.949f

    const/high16 v4, 0x41280000    # 10.5f

    const v5, 0x3ff978d5    # 1.949f

    const v6, 0x413b2f1b    # 11.699f

    move-object v0, p1

    .line 108
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x3ff978d5    # 1.949f

    const v2, 0x41652f1b    # 14.324f

    const v3, 0x4081a1cb    # 4.051f

    const v4, 0x4182d0e5    # 16.352f

    const v5, 0x40d5a1cb    # 6.676f

    const v6, 0x4182d0e5    # 16.352f

    .line 109
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x40fe5e35    # 7.949f

    const v2, 0x4182d0e5    # 16.352f

    const v3, 0x41112f1b    # 9.074f

    const v4, 0x417d2f1b    # 15.824f

    const v5, 0x411fa1cb    # 9.977f

    const/high16 v6, 0x41700000    # 15.0f

    .line 110
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const/high16 v0, 0x416a0000    # 14.625f

    const v1, 0x4125a1cb    # 10.352f

    .line 111
    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const v1, 0x416ed0e5    # 14.926f

    const v2, 0x4120d0e5    # 10.051f

    const v3, 0x416ed0e5    # 14.926f

    const v4, 0x4119a1cb    # 9.602f

    const/high16 v5, 0x416a0000    # 14.625f

    const v6, 0x4114d0e5    # 9.301f

    move-object v0, p1

    .line 112
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x41652f1b    # 14.324f

    const/high16 v2, 0x41100000    # 9.0f

    const/high16 v3, 0x415e0000    # 13.875f

    const/high16 v4, 0x41100000    # 9.0f

    const v5, 0x41592f1b    # 13.574f

    .line 113
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    .line 114
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closePath()V

    .line 115
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fill()V

    return-void
.end method


# virtual methods
.method public generateDownAppearance()V
    .locals 0

    return-void
.end method

.method public generateNormalAppearance()V
    .locals 5

    .line 49
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFileAttachmentAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationFileAttachment;

    const/4 v1, 0x0

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFileAttachmentAppearanceHandler;->getNormalAppearanceAsContentStream()Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    move-result-object v1

    .line 55
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationFileAttachment;->getConstantOpacity()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFileAttachmentAppearanceHandler;->setOpacity(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;F)V

    .line 59
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFileAttachmentAppearanceHandler;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v3

    const/16 v4, 0x12

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 61
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v3

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 62
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationFileAttachment;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 63
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationFileAttachment;->getNormalAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object v0

    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v2, v4, v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FF)V

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 66
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFileAttachmentAppearanceHandler;->drawPaperclip(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "PdfBox-Android"

    .line 70
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :goto_0
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 75
    throw v0
.end method

.method public generateRolloverAppearance()V
    .locals 0

    return-void
.end method
