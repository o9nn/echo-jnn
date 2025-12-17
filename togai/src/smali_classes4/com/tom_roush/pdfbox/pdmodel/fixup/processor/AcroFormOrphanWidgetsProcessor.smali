.class public Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormOrphanWidgetsProcessor;
.super Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AbstractProcessor;
.source "AcroFormOrphanWidgetsProcessor.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AbstractProcessor;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method

.method private addFontFromWidget(Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V
    .locals 5

    .line 149
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getNormalAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 159
    :cond_1
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getFontNames()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 161
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "PdfBox-Android"

    if-nez v2, :cond_3

    .line 165
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getFont(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v2

    if-nez v2, :cond_2

    .line 167
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getFont(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "added font resource to AcroForm from widget for font name "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "unable to add font to AcroForm for font name "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "font resource for widget was a subsetted font - ignored: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    return-void
.end method

.method private ensureFontResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;)V
    .locals 7

    const-string v0, "PdfBox-Android"

    const-string v1, "looked up font for "

    const-string v2, "no suitable font found for field "

    const-string v3, "trying to add missing font resource for field "

    .line 223
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getDefaultAppearance()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    const-string v5, " "

    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v4

    .line 229
    :try_start_0
    invoke-virtual {p1, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getFont(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v5

    if-nez v5, :cond_1

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers;->instance()Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;

    move-result-object v3

    .line 233
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;->getTrueTypeFont(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;)Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 236
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormOrphanWidgetsProcessor;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;->getFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->load(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Z)Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    move-result-object v2

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " - found "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;->getFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p1, v4, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V

    goto :goto_0

    .line 242
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " for font name "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to handle font resources for field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private handleAnnotations(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;",
            "Lcom/tom_roush/pdfbox/pdmodel/PDResources;",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
            ">;",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
            ">;)V"
        }
    .end annotation

    .line 117
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    .line 119
    instance-of v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    if-eqz v1, :cond_0

    .line 121
    invoke-direct {p0, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormOrphanWidgetsProcessor;->addFontFromWidget(Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V

    .line 123
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 126
    invoke-direct {p0, p1, v1, p5}, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormOrphanWidgetsProcessor;->resolveNonRootField(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Map;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldFactory;->createField(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private resolveFieldsFromWidgets(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V
    .locals 11

    const-string v0, "rebuilding fields from widgets"

    const-string v1, "PdfBox-Android"

    .line 78
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getDefaultResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "AcroForm default resources is null"

    .line 84
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 90
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormOrphanWidgetsProcessor;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    .line 94
    :try_start_0
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getAnnotations()Ljava/util/List;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, v8

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormOrphanWidgetsProcessor;->handleAnnotations(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "couldn\'t read annotations for page "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p1, v8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->setFields(Ljava/util/List;)V

    .line 104
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFieldTree()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    .line 106
    instance-of v2, v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    if-eqz v2, :cond_2

    .line 108
    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormOrphanWidgetsProcessor;->ensureFontResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private resolveNonRootField(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Map;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
            ">;)",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;"
        }
    .end annotation

    .line 189
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 191
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v1

    .line 198
    :cond_1
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 200
    invoke-static {p1, p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldFactory;->createField(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 203
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1

    :cond_3
    return-object v1
.end method


# virtual methods
.method public process()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormOrphanWidgetsProcessor;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getAcroForm(Lcom/tom_roush/pdfbox/pdmodel/fixup/PDDocumentFixup;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormOrphanWidgetsProcessor;->resolveFieldsFromWidgets(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    :cond_0
    return-void
.end method
