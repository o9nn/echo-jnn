.class Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;
.super Ljava/lang/Object;
.source "PlainTextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;,
        Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;
    }
.end annotation


# static fields
.field private static final FONTSCALE:I = 0x3e8


# instance fields
.field private final appearanceStyle:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;

.field private final contents:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;

.field private horizontalOffset:F

.field private final textAlignment:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

.field private final textContent:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;

.field private verticalOffset:F

.field private final width:F

.field private final wrapLines:Z


# direct methods
.method private constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)V
    .locals 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->access$100(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->appearanceStyle:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;

    .line 159
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->access$200(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->wrapLines:Z

    .line 160
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->access$300(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)F

    move-result v0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->width:F

    .line 161
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->access$400(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->contents:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;

    .line 162
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->access$500(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->textContent:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;

    .line 163
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->access$600(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->textAlignment:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    .line 164
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->access$700(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)F

    move-result v0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->horizontalOffset:F

    .line 165
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->access$800(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)F

    move-result p1

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->verticalOffset:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;)V

    return-void
.end method

.method private processLines(Ljava/util/List;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;

    .line 240
    sget-object v6, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$1;->$SwitchMap$com$tom_roush$pdfbox$pdmodel$interactive$form$PlainTextFormatter$TextAlign:[I

    iget-object v7, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->textAlignment:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v8, 0x2

    if-eq v6, v8, :cond_2

    const/4 v8, 0x3

    if-eq v6, v8, :cond_1

    move v3, v1

    goto :goto_0

    .line 249
    :cond_1
    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_4

    iget v4, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->width:F

    .line 251
    invoke-virtual {v5, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;->getInterWordSpacing(F)F

    move-result v4

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->width:F

    .line 246
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;->getWidth()F

    move-result v6

    sub-float/2addr v3, v6

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->width:F

    .line 243
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;->getWidth()F

    move-result v6

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    :cond_4
    :goto_0
    neg-float v6, v2

    add-float/2addr v6, v3

    iget v8, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->horizontalOffset:F

    add-float/2addr v6, v8

    .line 260
    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-nez v8, :cond_5

    if-eqz p2, :cond_5

    iget-object v8, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->contents:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;

    iget v9, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->verticalOffset:F

    .line 262
    invoke-virtual {v8, v6, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->newLineAtOffset(FF)V

    goto :goto_1

    :cond_5
    iget v8, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->verticalOffset:F

    iget-object v9, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->appearanceStyle:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;

    .line 267
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->getLeading()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->verticalOffset:F

    iget-object v8, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->contents:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;

    iget-object v9, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->appearanceStyle:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;

    .line 268
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->getLeading()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v8, v6, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->newLineAtOffset(FF)V

    :goto_1
    add-float/2addr v2, v6

    .line 273
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;->getWords()Ljava/util/List;

    move-result-object v5

    .line 275
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Word;

    iget-object v10, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->contents:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;

    .line 277
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Word;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->showText(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Word;->getAttributes()Ljava/text/AttributedString;

    move-result-object v9

    invoke-virtual {v9}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v9

    sget-object v10, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$TextAttribute;->WIDTH:Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v9, v10}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 279
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v7

    if-eq v8, v10, :cond_6

    iget-object v10, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->contents:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;

    add-float v11, v9, v4

    .line 281
    invoke-virtual {v10, v11, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->newLineAtOffset(FF)V

    add-float/2addr v2, v9

    add-float/2addr v2, v4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    iget p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->horizontalOffset:F

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->horizontalOffset:F

    return-void
.end method


# virtual methods
.method public format()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->textContent:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;

    if-eqz v0, :cond_4

    .line 175
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;->getParagraphs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->textContent:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;

    .line 178
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;->getParagraphs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;

    iget-boolean v4, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->wrapLines:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->appearanceStyle:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;

    .line 183
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->getFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v4

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->appearanceStyle:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;

    .line 184
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->getFontSize()F

    move-result v5

    iget v6, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->width:F

    .line 182
    invoke-virtual {v3, v4, v5, v6}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;->getLines(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;FF)Ljava/util/List;

    move-result-object v3

    .line 187
    invoke-direct {p0, v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->processLines(Ljava/util/List;Z)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->appearanceStyle:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;

    .line 195
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->getFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getStringWidth(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->appearanceStyle:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;

    .line 196
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->getFontSize()F

    move-result v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->width:F

    cmpg-float v5, v4, v5

    const/4 v6, 0x0

    if-gez v5, :cond_3

    .line 200
    sget-object v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$1;->$SwitchMap$com$tom_roush$pdfbox$pdmodel$interactive$form$PlainTextFormatter$TextAlign:[I

    iget-object v7, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->textAlignment:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$TextAlign;->ordinal()I

    move-result v7

    aget v5, v5, v7

    if-eq v5, v1, :cond_2

    const/4 v7, 0x2

    if-eq v5, v7, :cond_1

    goto :goto_1

    :cond_1
    iget v5, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->width:F

    sub-float v6, v5, v4

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->width:F

    sub-float/2addr v5, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v6, v5, v4

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->contents:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;

    iget v5, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->horizontalOffset:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->verticalOffset:F

    .line 214
    invoke-virtual {v4, v5, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->newLineAtOffset(FF)V

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->contents:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;

    .line 215
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->showText(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method
