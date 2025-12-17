.class Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;
.super Ljava/lang/Object;
.source "PlainText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;
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

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;->textContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getLines(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;FF)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;",
            "FF)",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 166
    invoke-static {}, Ljava/text/BreakIterator;->getLineInstance()Ljava/text/BreakIterator;

    move-result-object v3

    iget-object v4, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;->textContent:Ljava/lang/String;

    .line 167
    invoke-virtual {v3, v4}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v4, v2, v4

    .line 171
    invoke-virtual {v3}, Ljava/text/BreakIterator;->first()I

    move-result v5

    .line 172
    invoke-virtual {v3}, Ljava/text/BreakIterator;->next()I

    move-result v6

    .line 175
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;

    invoke-direct {v8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;-><init>()V

    const/4 v9, 0x0

    :goto_0
    const/4 v10, -0x1

    if-eq v6, v10, :cond_5

    iget-object v11, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;->textContent:Ljava/lang/String;

    .line 180
    invoke-virtual {v11, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 181
    invoke-virtual {v1, v11}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getStringWidth(Ljava/lang/String;)F

    move-result v12

    mul-float/2addr v12, v4

    sub-int v13, v6, v5

    add-float/2addr v9, v12

    cmpl-float v14, v9, p3

    const/4 v15, 0x1

    if-ltz v14, :cond_0

    .line 189
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v15

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 191
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v15

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getStringWidth(Ljava/lang/String;)F

    move-result v14

    mul-float/2addr v14, v4

    sub-float/2addr v9, v14

    :cond_0
    cmpl-float v14, v9, p3

    if-ltz v14, :cond_1

    .line 195
    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;->getWords()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 197
    invoke-virtual {v8, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;->calculateWidth(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;->setWidth(F)V

    .line 198
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;

    invoke-direct {v8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;-><init>()V

    .line 200
    invoke-virtual {v1, v11}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getStringWidth(Ljava/lang/String;)F

    move-result v9

    mul-float/2addr v9, v4

    :cond_1
    cmpl-float v14, v12, p3

    const/4 v15, 0x0

    if-lez v14, :cond_3

    .line 203
    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;->getWords()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_2
    add-int/2addr v13, v10

    .line 210
    invoke-virtual {v11, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 211
    invoke-virtual {v1, v9}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getStringWidth(Ljava/lang/String;)F

    move-result v12

    mul-float/2addr v12, v4

    cmpg-float v12, v12, p3

    if-gez v12, :cond_2

    .line 215
    invoke-virtual {v1, v9}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getStringWidth(Ljava/lang/String;)F

    move-result v10

    mul-float v12, v10, v4

    move-object v11, v9

    move v9, v12

    const/4 v15, 0x1

    .line 222
    :cond_3
    new-instance v10, Ljava/text/AttributedString;

    invoke-direct {v10, v11}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 223
    sget-object v14, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$TextAttribute;->WIDTH:Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v14, v12}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 224
    new-instance v12, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Word;

    invoke-direct {v12, v11}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Word;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v12, v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Word;->setAttributes(Ljava/text/AttributedString;)V

    .line 226
    invoke-virtual {v8, v12}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;->addWord(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Word;)V

    if-eqz v15, :cond_4

    add-int/2addr v5, v13

    goto/16 :goto_0

    .line 235
    :cond_4
    invoke-virtual {v3}, Ljava/text/BreakIterator;->next()I

    move-result v5

    move/from16 v16, v6

    move v6, v5

    move/from16 v5, v16

    goto/16 :goto_0

    .line 238
    :cond_5
    invoke-virtual {v8, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;->calculateWidth(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)F

    move-result v1

    invoke-virtual {v8, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Line;->setWidth(F)V

    .line 239
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;->textContent:Ljava/lang/String;

    return-object v0
.end method
