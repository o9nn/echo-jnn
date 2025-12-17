.class Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;
.super Ljava/lang/Object;
.source "PlainText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Line"
.end annotation


# instance fields
.field private lineWidth:F

.field private final words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Word;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;->words:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addWord(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Word;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;->words:Ljava/util/List;

    .line 256
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method calculateWidth(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;->words:Ljava/util/List;

    .line 229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Word;

    .line 232
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Word;->getAttributes()Ljava/text/AttributedString;

    move-result-object v4

    invoke-virtual {v4}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v4

    sget-object v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$TextAttribute;->WIDTH:Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v4, v5}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v1, v4

    .line 233
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Word;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;->words:Ljava/util/List;

    .line 234
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getStringWidth(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, p2

    sub-float/2addr v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method getInterWordSpacing(F)F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;->lineWidth:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;->words:Ljava/util/List;

    .line 251
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method getWidth()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;->lineWidth:F

    return v0
.end method

.method getWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Word;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;->words:Ljava/util/List;

    return-object v0
.end method

.method setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText$Line;->lineWidth:F

    return-void
.end method
