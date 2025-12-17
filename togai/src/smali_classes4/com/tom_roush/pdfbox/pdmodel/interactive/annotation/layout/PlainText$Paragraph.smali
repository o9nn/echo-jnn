.class Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Paragraph;
.super Ljava/lang/Object;
.source "PlainText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Paragraph"
.end annotation


# instance fields
.field private final textContent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Paragraph;->textContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getLines(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;FF)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;",
            "FF)",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-static {}, Ljava/text/BreakIterator;->getLineInstance()Ljava/text/BreakIterator;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Paragraph;->textContent:Ljava/lang/String;

    .line 159
    invoke-virtual {v0, v1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v1, p2, v1

    .line 163
    invoke-virtual {v0}, Ljava/text/BreakIterator;->first()I

    move-result v2

    .line 164
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v3

    .line 167
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 168
    new-instance v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;

    invoke-direct {v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;-><init>()V

    const/4 v6, 0x0

    :goto_0
    move v10, v3

    move v3, v2

    move v2, v10

    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    iget-object v7, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Paragraph;->textContent:Ljava/lang/String;

    .line 172
    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getStringWidth(Ljava/lang/String;)F

    move-result v7

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    cmpl-float v8, v6, p3

    if-ltz v8, :cond_0

    .line 178
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 180
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getStringWidth(Ljava/lang/String;)F

    move-result v8

    mul-float/2addr v8, v1

    sub-float/2addr v6, v8

    :cond_0
    cmpl-float v8, v6, p3

    if-ltz v8, :cond_1

    .line 186
    invoke-virtual {v5, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;->calculateWidth(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;->setWidth(F)V

    .line 187
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;

    invoke-direct {v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;-><init>()V

    .line 189
    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getStringWidth(Ljava/lang/String;)F

    move-result v6

    mul-float/2addr v6, v1

    .line 192
    :cond_1
    new-instance v8, Ljava/text/AttributedString;

    invoke-direct {v8, v3}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 193
    sget-object v9, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$TextAttribute;->WIDTH:Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 194
    new-instance v7, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Word;

    invoke-direct {v7, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Word;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v7, v8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Word;->setAttributes(Ljava/text/AttributedString;)V

    .line 196
    invoke-virtual {v5, v7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;->addWord(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Word;)V

    .line 198
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v3

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {v5, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;->calculateWidth(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)F

    move-result p1

    invoke-virtual {v5, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;->setWidth(F)V

    .line 201
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4
.end method

.method getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Paragraph;->textContent:Ljava/lang/String;

    return-object v0
.end method
