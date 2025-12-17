.class public final Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;
.super Ljava/lang/Object;
.source "PDPageContentStream.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;
    }
.end annotation


# instance fields
.field private final document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private final fontStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;",
            ">;"
        }
    .end annotation
.end field

.field private final formatBuffer:[B

.field private final formatDecimal:Ljava/text/NumberFormat;

.field private inTextMode:Z

.field private final nonStrokingColorSpaceStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;",
            ">;"
        }
    .end annotation
.end field

.field private output:Ljava/io/OutputStream;

.field private resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

.field private sourcePageHadContents:Z

.field private final strokingColorSpaceStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    sget-object v3, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;->OVERWRITE:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;ZZ)V

    iget-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->sourcePageHadContents:Z

    if-eqz p1, :cond_0

    const-string p1, "PdfBox-Android"

    const-string p2, "You are overwriting an existing content, you should use the append mode"

    .line 123
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    .line 99
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fontStack:Ljava/util/Stack;

    .line 101
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->nonStrokingColorSpaceStack:Ljava/util/Stack;

    .line 102
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->strokingColorSpaceStack:Ljava/util/Stack;

    .line 105
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->formatDecimal:Ljava/text/NumberFormat;

    const/16 v2, 0x20

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->formatBuffer:[B

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->sourcePageHadContents:Z

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz p4, :cond_0

    .line 201
    sget-object p4, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 204
    :goto_0
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;->isOverwrite()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->hasContents()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 207
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 210
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v3

    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 212
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v4, :cond_1

    .line 215
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSArray;

    goto :goto_1

    .line 220
    :cond_1
    new-instance v4, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v4}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 221
    invoke-virtual {v4, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    move-object v3, v4

    .line 223
    :goto_1
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;->isPrepend()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 225
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p3

    invoke-virtual {v3, v0, p3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_2

    .line 229
    :cond_2
    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    :goto_2
    if-eqz p5, :cond_3

    .line 236
    new-instance p3, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-direct {p3, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 237
    invoke-virtual {p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createOutputStream(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    .line 240
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->saveGraphicsState()V

    .line 241
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->close()V

    .line 244
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 248
    :cond_3
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object p3, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p3, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 249
    invoke-virtual {v2, p4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createOutputStream(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    if-eqz p5, :cond_5

    .line 254
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->restoreGraphicsState()V

    goto :goto_3

    .line 259
    :cond_4
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->hasContents()Z

    move-result p3

    iput-boolean p3, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->sourcePageHadContents:Z

    .line 260
    new-instance p3, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-direct {p3, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 261
    invoke-virtual {p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setContents(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V

    .line 262
    invoke-virtual {p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createOutputStream(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    .line 267
    :cond_5
    :goto_3
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    if-nez p1, :cond_6

    .line 270
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 271
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    :cond_6
    const/4 p1, 0x5

    .line 275
    invoke-virtual {v1, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 276
    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/PDPage;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 142
    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/PDPage;ZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/PDPage;ZZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    .line 181
    sget-object p3, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;->APPEND:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;->OVERWRITE:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    :goto_0
    move-object v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    .line 99
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fontStack:Ljava/util/Stack;

    .line 101
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->nonStrokingColorSpaceStack:Ljava/util/Stack;

    .line 102
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->strokingColorSpaceStack:Ljava/util/Stack;

    .line 105
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->formatDecimal:Ljava/text/NumberFormat;

    const/16 v2, 0x20

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->formatBuffer:[B

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->sourcePageHadContents:Z

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    .line 325
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    const/4 p1, 0x4

    .line 327
    invoke-virtual {v1, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 328
    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    .line 99
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fontStack:Ljava/util/Stack;

    .line 101
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->nonStrokingColorSpaceStack:Ljava/util/Stack;

    .line 102
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->strokingColorSpaceStack:Ljava/util/Stack;

    .line 105
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->formatDecimal:Ljava/text/NumberFormat;

    const/16 v2, 0x20

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->formatBuffer:[B

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->sourcePageHadContents:Z

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    .line 345
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    const/4 p1, 0x4

    .line 347
    invoke-virtual {v1, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 348
    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    .line 99
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fontStack:Ljava/util/Stack;

    .line 101
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->nonStrokingColorSpaceStack:Ljava/util/Stack;

    .line 102
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->strokingColorSpaceStack:Ljava/util/Stack;

    .line 105
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->formatDecimal:Ljava/text/NumberFormat;

    const/16 v2, 0x20

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->formatBuffer:[B

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->sourcePageHadContents:Z

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    .line 305
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    const/4 p1, 0x4

    .line 307
    invoke-virtual {v1, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 308
    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method private getName(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1081
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 1089
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1

    .line 1085
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1
.end method

.method private isOutside255Interval(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isOutsideOneInterval(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private setNonStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->nonStrokingColorSpaceStack:Ljava/util/Stack;

    .line 2571
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->nonStrokingColorSpaceStack:Ljava/util/Stack;

    .line 2573
    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->nonStrokingColorSpaceStack:Ljava/util/Stack;

    .line 2577
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/Stack;->setElementAt(Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method private setStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->strokingColorSpaceStack:Ljava/util/Stack;

    .line 2559
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->strokingColorSpaceStack:Ljava/util/Stack;

    .line 2561
    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->strokingColorSpaceStack:Ljava/util/Stack;

    .line 2565
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/Stack;->setElementAt(Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    .line 2496
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeAffineTransform(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    new-array v1, v0, [D

    .line 2521
    invoke-virtual {p1, v1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getMatrix([D)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 2522
    aget-wide v2, v1, p1

    double-to-float v2, v2

    .line 2524
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeBytes([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    .line 2512
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeLine()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    const/16 v1, 0xa

    .line 2504
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private writeOperand(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->formatDecimal:Ljava/text/NumberFormat;

    int-to-long v1, p1

    .line 2469
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    const/16 v0, 0x20

    .line 2470
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    .line 2478
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->writePDF(Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    const/16 v0, 0x20

    .line 2479
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private writeOperator(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    .line 2487
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    const/16 v0, 0xa

    .line 2488
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public addBezier31(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1710
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->curveTo1(FFFF)V

    return-void
.end method

.method public addBezier312(FFFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1624
    invoke-virtual/range {p0 .. p6}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->curveTo(FFFFFF)V

    return-void
.end method

.method public addBezier32(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1669
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->curveTo2(FFFF)V

    return-void
.end method

.method public addComment(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 2426
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    const/16 v2, 0x25

    .line 2430
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    .line 2431
    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    .line 2432
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void

    .line 2428
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "comment should not include a newline"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addLine(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 1794
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->moveTo(FF)V

    .line 1795
    invoke-virtual {p0, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->lineTo(FF)V

    return-void

    .line 1792
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: addLine is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addPolygon([F[F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_3

    .line 1838
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 1842
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 1846
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->moveTo(FF)V

    goto :goto_1

    .line 1850
    :cond_0
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->lineTo(FF)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1853
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->closeSubPath()V

    return-void

    .line 1840
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Error: some points are missing coordinate"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1836
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: addPolygon is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addRect(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 1580
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1581
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1582
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1583
    invoke-virtual {p0, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "re"

    .line 1584
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1578
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: addRect is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    .line 2400
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->writePDF(Ljava/io/OutputStream;)V

    return-void
.end method

.method public appendRawCommands(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->formatDecimal:Ljava/text/NumberFormat;

    .line 2374
    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public appendRawCommands(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->formatDecimal:Ljava/text/NumberFormat;

    float-to-double v2, p1

    .line 2387
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public appendRawCommands(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    .line 2361
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public appendRawCommands(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    .line 2335
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public appendRawCommands([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    .line 2348
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public beginMarkedContent(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2267
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "BMC"

    .line 2268
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public beginMarkedContent(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2298
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 2299
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "BDC"

    .line 2300
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public beginMarkedContentSequence(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2256
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->beginMarkedContent(Lcom/tom_roush/pdfbox/cos/COSName;)V

    return-void
.end method

.method public beginMarkedContentSequence(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2283
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 2284
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "BDC"

    .line 2285
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public beginText()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "BT"

    .line 364
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    return-void

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: Nested beginText() calls are not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clip()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "W"

    .line 2134
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    const-string v0, "n"

    .line 2137
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 2132
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: clip is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clipEvenOdd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "W*"

    .line 2152
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    const-string v0, "n"

    .line 2155
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 2150
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: clipEvenOdd is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clipPath(Landroid/graphics/Path$FillType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_2

    .line 2107
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    if-ne p1, v0, :cond_0

    const-string p1, "W"

    .line 2109
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 2111
    :cond_0
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    if-ne p1, v0, :cond_1

    const-string p1, "W*"

    .line 2113
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    :goto_0
    const-string p1, "n"

    .line 2119
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 2117
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error: unknown value for winding rule"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2105
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error: clipPath is not allowed within a text block."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-eqz v0, :cond_0

    const-string v0, "PdfBox-Android"

    const-string v1, "You did not call endText(), some viewers won\'t display your text"

    .line 2538
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 2542
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    :cond_1
    return-void
.end method

.method public closeAndFillAndStroke()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "b"

    .line 2027
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 2025
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: closeAndFillAndStroke is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeAndFillAndStrokeEvenOdd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "b*"

    .line 2044
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 2042
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: closeAndFillAndStrokeEvenOdd is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeAndStroke()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "s"

    .line 1921
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1919
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: closeAndStroke is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closePath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "h"

    .line 2089
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 2087
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: closePath is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeSubPath()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2074
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->closePath()V

    return-void
.end method

.method public concatenate2CTM(DDDDDD)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 959
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    double-to-float p2, p1

    double-to-float p3, p3

    double-to-float p4, p5

    double-to-float p5, p7

    double-to-float p6, p9

    double-to-float p7, p11

    move-object p1, v0

    invoke-direct/range {p1 .. p7}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method

.method public concatenate2CTM(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 972
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method

.method public curveTo(FFFFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 1646
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1647
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1648
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1649
    invoke-virtual {p0, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1650
    invoke-virtual {p0, p5}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1651
    invoke-virtual {p0, p6}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "c"

    .line 1652
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1644
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: curveTo is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public curveTo1(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 1730
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1731
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1732
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1733
    invoke-virtual {p0, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "y"

    .line 1734
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1728
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: curveTo1 is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public curveTo2(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 1689
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1690
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1691
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1692
    invoke-virtual {p0, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "v"

    .line 1693
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1687
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: curveTo2 is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 941
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "Do"

    .line 942
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 938
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error: drawForm is not allowed within a text block."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;FF)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;FFFF)V

    return-void
.end method

.method public drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;FFFF)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 712
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->saveGraphicsState()V

    .line 714
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move v2, p4

    move v5, p5

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>(FFFFFF)V

    .line 715
    new-instance p2, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {p2, v0}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 717
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "Do"

    .line 718
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->restoreGraphicsState()V

    return-void

    .line 709
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: drawImage is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->saveGraphicsState()V

    .line 741
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/util/Matrix;->createAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p2

    .line 742
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {v0, p2}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 744
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "Do"

    .line 745
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->restoreGraphicsState()V

    return-void

    .line 736
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: drawImage is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;FF)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 777
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;FFFF)V

    return-void
.end method

.method public drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;FFFF)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_3

    .line 817
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->saveGraphicsState()V

    .line 818
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move v2, p4

    move v5, p5

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 821
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "BI\n /W "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getWidth()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\n /H "

    .line 827
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\n /CS /"

    .line 830
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getDecode()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 835
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p4

    if-lez p4, :cond_1

    const-string p4, "\n /D ["

    .line 837
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 841
    check-cast p4, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " "

    .line 842
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p3, "]"

    .line 844
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->isStencil()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "\n /IM true"

    .line 849
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p3, "\n /BPC "

    .line 852
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getBitsPerComponent()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->write(Ljava/lang/String;)V

    .line 857
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeLine()V

    const-string p2, "ID"

    .line 860
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getData()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeBytes([B)V

    .line 862
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeLine()V

    const-string p1, "EI"

    .line 863
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    .line 865
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->restoreGraphicsState()V

    return-void

    .line 814
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: drawImage is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawInlineImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;FF)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 763
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;FFFF)V

    return-void
.end method

.method public drawInlineImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 795
    invoke-virtual/range {p0 .. p5}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;FFFF)V

    return-void
.end method

.method public drawLine(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 1817
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->moveTo(FF)V

    .line 1818
    invoke-virtual {p0, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->lineTo(FF)V

    .line 1819
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->stroke()V

    return-void

    .line 1815
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: drawLine is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawPolygon([F[F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 1871
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->addPolygon([F[F)V

    .line 1872
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->stroke()V

    return-void

    .line 1869
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: drawPolygon is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawString(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 423
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->showText(Ljava/lang/String;)V

    return-void
.end method

.method public drawXObject(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;FFFF)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 883
    new-instance v7, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move v1, p4

    move v4, p5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>(FFFFFF)V

    .line 884
    invoke-virtual {p0, p1, v7}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->drawXObject(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    return-void
.end method

.method public drawXObject(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_1

    .line 908
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    if-eqz v0, :cond_0

    const-string v0, "Im"

    goto :goto_0

    :cond_0
    const-string v0, "Form"

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 916
    invoke-virtual {v1, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    .line 918
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->saveGraphicsState()V

    .line 919
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {v0, p2}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 921
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "Do"

    .line 922
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->restoreGraphicsState()V

    return-void

    .line 904
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: drawXObject is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endMarkedContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "EMC"

    .line 2322
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public endMarkedContentSequence()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2312
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->endMarkedContent()V

    return-void
.end method

.method public endText()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-eqz v0, :cond_0

    const-string v0, "ET"

    .line 381
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    return-void

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: You must call beginText() before calling endText."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fill()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "f"

    .line 1961
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1959
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: fill is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fill(Landroid/graphics/Path$FillType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1935
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    if-ne p1, v0, :cond_0

    .line 1937
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fill()V

    goto :goto_0

    .line 1939
    :cond_0
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    if-ne p1, v0, :cond_1

    .line 1941
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fillEvenOdd()V

    :goto_0
    return-void

    .line 1945
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error: unknown value for winding rule"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fillAndStroke()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "B"

    .line 1993
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1991
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: fillAndStroke is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fillAndStrokeEvenOdd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "B*"

    .line 2010
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 2008
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: fillAndStrokeEvenOdd is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fillEvenOdd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "f*"

    .line 1976
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1974
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: fillEvenOdd is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fillPolygon([F[F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 1890
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->addPolygon([F[F)V

    .line 1891
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fill()V

    return-void

    .line 1888
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: fillPolygon is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fillRect(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 1605
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->addRect(FFFF)V

    .line 1606
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fill()V

    return-void

    .line 1603
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: fillRect is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lineTo(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 1770
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1771
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "l"

    .line 1772
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1768
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: lineTo is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public moveTextPositionByAmount(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->newLineAtOffset(FF)V

    return-void
.end method

.method public moveTo(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 1751
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1752
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "m"

    .line 1753
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1749
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: moveTo is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newLine()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-eqz v0, :cond_0

    const-string v0, "T*"

    .line 548
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call beginText() before newLine()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newLineAtOffset(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 581
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "Td"

    .line 582
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 578
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: must call beginText() before newLineAtOffset()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public restoreGraphicsState()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-eqz v0, :cond_0

    const-string v0, "PdfBox-Android"

    const-string v1, "Restoring the graphics state is not allowed within text objects."

    .line 1029
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fontStack:Ljava/util/Stack;

    .line 1032
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fontStack:Ljava/util/Stack;

    .line 1034
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->strokingColorSpaceStack:Ljava/util/Stack;

    .line 1036
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->strokingColorSpaceStack:Ljava/util/Stack;

    .line 1038
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->nonStrokingColorSpaceStack:Ljava/util/Stack;

    .line 1040
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->nonStrokingColorSpaceStack:Ljava/util/Stack;

    .line 1042
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_3
    const-string v0, "Q"

    .line 1044
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public saveGraphicsState()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-eqz v0, :cond_0

    const-string v0, "PdfBox-Android"

    const-string v1, "Saving the graphics state is not allowed within text objects."

    .line 1003
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fontStack:Ljava/util/Stack;

    .line 1006
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fontStack:Ljava/util/Stack;

    .line 1008
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->strokingColorSpaceStack:Ljava/util/Stack;

    .line 1010
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->strokingColorSpaceStack:Ljava/util/Stack;

    .line 1012
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->nonStrokingColorSpaceStack:Ljava/util/Stack;

    .line 1014
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->nonStrokingColorSpaceStack:Ljava/util/Stack;

    .line 1016
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "q"

    .line 1018
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setCharacterSpacing(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2603
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "Tc"

    .line 2604
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fontStack:Ljava/util/Stack;

    .line 394
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fontStack:Ljava/util/Stack;

    .line 396
    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fontStack:Ljava/util/Stack;

    .line 400
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/Stack;->setElementAt(Ljava/lang/Object;I)V

    .line 403
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->willBeSubset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 405
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getFontsToSubset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 408
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 409
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "Tf"

    .line 410
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setGraphicsStateParameters(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 2411
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "gs"

    .line 2412
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setHorizontalScaling(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2635
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "Tz"

    .line 2636
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setLeading(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    double-to-float p1, p1

    .line 521
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setLeading(F)V

    return-void
.end method

.method public setLeading(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "TL"

    .line 533
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setLineCapStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 2201
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(I)V

    const-string p1, "J"

    .line 2202
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 2206
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error: unknown value for line cap style"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLineDashPattern([FF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "["

    .line 2219
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->write(Ljava/lang/String;)V

    .line 2220
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 2222
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "] "

    .line 2224
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->write(Ljava/lang/String;)V

    .line 2225
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "d"

    .line 2226
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setLineJoinStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 2181
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(I)V

    const-string p1, "j"

    .line 2182
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 2186
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error: unknown value for line join style"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLineWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2166
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "w"

    .line 2167
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setMiterLimit(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    .line 2242
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "M"

    .line 2243
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 2240
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A miter limit <= 0 is invalid and will not render in Acrobat Reader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNonStrokingColor(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    double-to-float p1, p1

    .line 1543
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setNonStrokingColor(F)V

    return-void
.end method

.method public setNonStrokingColor(DDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    double-to-float p1, p1

    double-to-float p2, p3

    double-to-float p3, p5

    double-to-float p4, p7

    .line 1488
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setNonStrokingColor(FFFF)V

    return-void
.end method

.method public setNonStrokingColor(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    float-to-double v0, p1

    .line 1555
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1559
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "g"

    .line 1560
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    .line 1561
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setNonStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    return-void

    .line 1557
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameter must be within 0..1, but is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNonStrokingColor(FFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    float-to-double v0, p1

    .line 1420
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p2

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p3

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1425
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1426
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1427
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "rg"

    .line 1428
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    .line 1429
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setNonStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    return-void

    .line 1422
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be within 0..1, but are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1423
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(%.2f,%.2f,%.2f)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNonStrokingColor(FFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    float-to-double v0, p1

    .line 1502
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p2

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p3

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p4

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1507
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1508
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1509
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1510
    invoke-virtual {p0, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "k"

    .line 1511
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1504
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be within 0..1, but are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1505
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(%.2f,%.2f,%.2f,%.2f)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNonStrokingColor(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1525
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 1529
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setNonStrokingColor(F)V

    return-void

    .line 1527
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameter must be within 0..255, but is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNonStrokingColor(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1446
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    .line 1451
    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setNonStrokingColor(FFF)V

    return-void

    .line 1448
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be within 0..255, but are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1449
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(%d,%d,%d)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNonStrokingColor(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1466
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    int-to-float p4, p4

    div-float/2addr p4, v0

    .line 1471
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setNonStrokingColor(FFFF)V

    return-void

    .line 1468
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be within 0..255, but are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1469
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(%d,%d,%d,%d)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNonStrokingColor(Lcom/tom_roush/harmony/awt/AWTColor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1370
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/AWTColor;->getRed()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/AWTColor;->getGreen()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/AWTColor;->getBlue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1371
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    invoke-direct {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>([FLcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 1372
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setNonStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    return-void
.end method

.method public setNonStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->nonStrokingColorSpaceStack:Ljava/util/Stack;

    .line 1330
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->nonStrokingColorSpaceStack:Ljava/util/Stack;

    .line 1331
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1333
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->getName(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string v0, "cs"

    .line 1334
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setNonStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 1338
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getComponents()[F

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 1340
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "sc"

    .line 1357
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setNonStrokingColor([F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->nonStrokingColorSpaceStack:Ljava/util/Stack;

    .line 1385
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1390
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 1392
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->nonStrokingColorSpaceStack:Ljava/util/Stack;

    .line 1395
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    const-string p1, "sc"

    .line 1405
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1387
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The color space must be set before setting a color"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNonStrokingColorSpace(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1074
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setNonStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 1075
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->getName(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "cs"

    .line 1076
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setRenderingMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2590
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(I)V

    const-string p1, "Tr"

    .line 2591
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setStrokingColor(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    double-to-float p1, p1

    .line 1301
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setStrokingColor(F)V

    return-void
.end method

.method public setStrokingColor(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    float-to-double v0, p1

    .line 1313
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1317
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "G"

    .line 1318
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    .line 1319
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    return-void

    .line 1315
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameter must be within 0..1, but is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrokingColor(FFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    float-to-double v0, p1

    .line 1191
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p2

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p3

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1196
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1197
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1198
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "RG"

    .line 1199
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    .line 1200
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    return-void

    .line 1193
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be within 0..1, but are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1194
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(%.2f,%.2f,%.2f)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrokingColor(FFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    float-to-double v0, p1

    .line 1259
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p2

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p3

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p4

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1264
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1265
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1266
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    .line 1267
    invoke-virtual {p0, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "K"

    .line 1268
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1261
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be within 0..1, but are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1262
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(%.2f,%.2f,%.2f,%.2f)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrokingColor(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1283
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 1287
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setStrokingColor(F)V

    return-void

    .line 1285
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameter must be within 0..255, but is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrokingColor(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1217
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    .line 1222
    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setStrokingColor(FFF)V

    return-void

    .line 1219
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be within 0..255, but are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(%d,%d,%d)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrokingColor(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1239
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    int-to-float p4, p4

    div-float/2addr p4, v0

    .line 1244
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setStrokingColor(FFFF)V

    return-void

    .line 1241
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be within 0..255, but are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(%d,%d,%d,%d)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrokingColor(Lcom/tom_roush/harmony/awt/AWTColor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1141
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/AWTColor;->getRed()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/AWTColor;->getGreen()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/AWTColor;->getBlue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1142
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    invoke-direct {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>([FLcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 1143
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    return-void
.end method

.method public setStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->strokingColorSpaceStack:Ljava/util/Stack;

    .line 1101
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->strokingColorSpaceStack:Ljava/util/Stack;

    .line 1102
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1104
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->getName(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string v0, "CS"

    .line 1105
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 1109
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getComponents()[F

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 1111
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "SC"

    .line 1128
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setStrokingColor([F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->strokingColorSpaceStack:Ljava/util/Stack;

    .line 1156
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1161
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 1163
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->strokingColorSpaceStack:Ljava/util/Stack;

    .line 1166
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    const-string p1, "SC"

    .line 1176
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1158
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The color space must be set before setting a color"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStrokingColorSpace(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1058
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 1059
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->getName(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "CS"

    .line 1060
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setTextMatrix(DDDDDD)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    double-to-float p2, p1

    double-to-float p3, p3

    double-to-float p4, p5

    double-to-float p5, p7

    double-to-float p6, p9

    double-to-float p7, p11

    move-object p1, v0

    invoke-direct/range {p1 .. p7}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setTextMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method

.method public setTextMatrix(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 613
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setTextMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method

.method public setTextMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->createAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeAffineTransform(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    const-string p1, "Tm"

    .line 631
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 628
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error: must call beginText() before setTextMatrix"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTextRise(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2649
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "Ts"

    .line 2650
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setTextRotation(DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    double-to-float p3, p3

    double-to-float p4, p5

    .line 676
    invoke-static {p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/util/Matrix;->getRotateInstance(DFF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setTextMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method

.method public setTextScaling(DDDD)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 647
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    double-to-float p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    double-to-float v3, p3

    double-to-float p6, p5

    double-to-float p7, p7

    move-object p1, v0

    move p3, v1

    move p4, v2

    move p5, v3

    invoke-direct/range {p1 .. p7}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setTextMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method

.method public setTextTranslation(DD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    double-to-float p1, p1

    double-to-float p2, p3

    .line 661
    invoke-static {p1, p2}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setTextMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method

.method public setWordSpacing(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2622
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    const-string p1, "Tw"

    .line 2623
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public shadingFill(Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 2061
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "sh"

    .line 2062
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 2058
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error: shadingFill is not allowed within a text block."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->showTextInternal(Ljava/lang/String;)V

    const-string p1, " "

    .line 471
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->write(Ljava/lang/String;)V

    const-string p1, "Tj"

    .line 472
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method protected showTextInternal(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fontStack:Ljava/util/Stack;

    .line 489
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fontStack:Ljava/util/Stack;

    .line 494
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    .line 497
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->willBeSubset()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 500
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 502
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 503
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->addToSubset(I)V

    .line 504
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 508
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->encode(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writeString([BLjava/io/OutputStream;)V

    return-void

    .line 491
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must call setFont() before showText()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 486
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must call beginText() before showText()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showTextWithPositioning([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "["

    .line 441
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->write(Ljava/lang/String;)V

    .line 442
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 444
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 446
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->showTextInternal(Ljava/lang/String;)V

    goto :goto_1

    .line 448
    :cond_0
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 450
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperand(F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument must consist of array of Float and String types"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, "] "

    .line 457
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->write(Ljava/lang/String;)V

    const-string p1, "TJ"

    .line 458
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public stroke()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "S"

    .line 1906
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1904
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: stroke is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transform(Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->inTextMode:Z

    if-eqz v0, :cond_0

    const-string v0, "PdfBox-Android"

    const-string v1, "Modifying the current transformation matrix is not allowed within text objects."

    .line 988
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->createAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeAffineTransform(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    const-string p1, "cm"

    .line 992
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method protected writeOperand(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2445
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->formatDecimal:Ljava/text/NumberFormat;

    .line 2450
    invoke-virtual {v0}, Ljava/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->formatBuffer:[B

    invoke-static {p1, v0, v1}, Lcom/tom_roush/pdfbox/util/NumberFormatUtil;->formatFloatFast(FI[B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->formatDecimal:Ljava/text/NumberFormat;

    float-to-double v1, p1

    .line 2455
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->formatBuffer:[B

    const/4 v2, 0x0

    .line 2459
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->output:Ljava/io/OutputStream;

    const/16 v0, 0x20

    .line 2461
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void

    .line 2447
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a finite number"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
