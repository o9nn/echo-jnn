.class public Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;
.super Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;
.source "PDLayoutAttributeObject.java"


# static fields
.field private static final BACKGROUND_COLOR:Ljava/lang/String; = "BackgroundColor"

.field private static final BASELINE_SHIFT:Ljava/lang/String; = "BaselineShift"

.field private static final BBOX:Ljava/lang/String; = "BBox"

.field private static final BLOCK_ALIGN:Ljava/lang/String; = "BlockAlign"

.field public static final BLOCK_ALIGN_AFTER:Ljava/lang/String; = "After"

.field public static final BLOCK_ALIGN_BEFORE:Ljava/lang/String; = "Before"

.field public static final BLOCK_ALIGN_JUSTIFY:Ljava/lang/String; = "Justify"

.field public static final BLOCK_ALIGN_MIDDLE:Ljava/lang/String; = "Middle"

.field private static final BORDER_COLOR:Ljava/lang/String; = "BorderColor"

.field private static final BORDER_STYLE:Ljava/lang/String; = "BorderStyle"

.field public static final BORDER_STYLE_DASHED:Ljava/lang/String; = "Dashed"

.field public static final BORDER_STYLE_DOTTED:Ljava/lang/String; = "Dotted"

.field public static final BORDER_STYLE_DOUBLE:Ljava/lang/String; = "Double"

.field public static final BORDER_STYLE_GROOVE:Ljava/lang/String; = "Groove"

.field public static final BORDER_STYLE_HIDDEN:Ljava/lang/String; = "Hidden"

.field public static final BORDER_STYLE_INSET:Ljava/lang/String; = "Inset"

.field public static final BORDER_STYLE_NONE:Ljava/lang/String; = "None"

.field public static final BORDER_STYLE_OUTSET:Ljava/lang/String; = "Outset"

.field public static final BORDER_STYLE_RIDGE:Ljava/lang/String; = "Ridge"

.field public static final BORDER_STYLE_SOLID:Ljava/lang/String; = "Solid"

.field private static final BORDER_THICKNESS:Ljava/lang/String; = "BorderThickness"

.field private static final COLOR:Ljava/lang/String; = "Color"

.field private static final COLUMN_COUNT:Ljava/lang/String; = "ColumnCount"

.field private static final COLUMN_GAP:Ljava/lang/String; = "ColumnGap"

.field private static final COLUMN_WIDTHS:Ljava/lang/String; = "ColumnWidths"

.field private static final END_INDENT:Ljava/lang/String; = "EndIndent"

.field private static final GLYPH_ORIENTATION_VERTICAL:Ljava/lang/String; = "GlyphOrientationVertical"

.field public static final GLYPH_ORIENTATION_VERTICAL_180_DEGREES:Ljava/lang/String; = "180"

.field public static final GLYPH_ORIENTATION_VERTICAL_270_DEGREES:Ljava/lang/String; = "270"

.field public static final GLYPH_ORIENTATION_VERTICAL_360_DEGREES:Ljava/lang/String; = "360"

.field public static final GLYPH_ORIENTATION_VERTICAL_90_DEGREES:Ljava/lang/String; = "90"

.field public static final GLYPH_ORIENTATION_VERTICAL_AUTO:Ljava/lang/String; = "Auto"

.field public static final GLYPH_ORIENTATION_VERTICAL_MINUS_180_DEGREES:Ljava/lang/String; = "-180"

.field public static final GLYPH_ORIENTATION_VERTICAL_MINUS_90_DEGREES:Ljava/lang/String; = "-90"

.field public static final GLYPH_ORIENTATION_VERTICAL_ZERO_DEGREES:Ljava/lang/String; = "0"

.field private static final HEIGHT:Ljava/lang/String; = "Height"

.field public static final HEIGHT_AUTO:Ljava/lang/String; = "Auto"

.field private static final INLINE_ALIGN:Ljava/lang/String; = "InlineAlign"

.field public static final INLINE_ALIGN_CENTER:Ljava/lang/String; = "Center"

.field public static final INLINE_ALIGN_END:Ljava/lang/String; = "End"

.field public static final INLINE_ALIGN_START:Ljava/lang/String; = "Start"

.field private static final LINE_HEIGHT:Ljava/lang/String; = "LineHeight"

.field public static final LINE_HEIGHT_AUTO:Ljava/lang/String; = "Auto"

.field public static final LINE_HEIGHT_NORMAL:Ljava/lang/String; = "Normal"

.field public static final OWNER_LAYOUT:Ljava/lang/String; = "Layout"

.field private static final PADDING:Ljava/lang/String; = "Padding"

.field private static final PLACEMENT:Ljava/lang/String; = "Placement"

.field public static final PLACEMENT_BEFORE:Ljava/lang/String; = "Before"

.field public static final PLACEMENT_BLOCK:Ljava/lang/String; = "Block"

.field public static final PLACEMENT_END:Ljava/lang/String; = "End"

.field public static final PLACEMENT_INLINE:Ljava/lang/String; = "Inline"

.field public static final PLACEMENT_START:Ljava/lang/String; = "Start"

.field private static final RUBY_ALIGN:Ljava/lang/String; = "RubyAlign"

.field public static final RUBY_ALIGN_CENTER:Ljava/lang/String; = "Center"

.field public static final RUBY_ALIGN_DISTRIBUTE:Ljava/lang/String; = "Distribute"

.field public static final RUBY_ALIGN_END:Ljava/lang/String; = "End"

.field public static final RUBY_ALIGN_JUSTIFY:Ljava/lang/String; = "Justify"

.field public static final RUBY_ALIGN_START:Ljava/lang/String; = "Start"

.field private static final RUBY_POSITION:Ljava/lang/String; = "RubyPosition"

.field public static final RUBY_POSITION_AFTER:Ljava/lang/String; = "After"

.field public static final RUBY_POSITION_BEFORE:Ljava/lang/String; = "Before"

.field public static final RUBY_POSITION_INLINE:Ljava/lang/String; = "Inline"

.field public static final RUBY_POSITION_WARICHU:Ljava/lang/String; = "Warichu"

.field private static final SPACE_AFTER:Ljava/lang/String; = "SpaceAfter"

.field private static final SPACE_BEFORE:Ljava/lang/String; = "SpaceBefore"

.field private static final START_INDENT:Ljava/lang/String; = "StartIndent"

.field private static final TEXT_ALIGN:Ljava/lang/String; = "TextAlign"

.field public static final TEXT_ALIGN_CENTER:Ljava/lang/String; = "Center"

.field public static final TEXT_ALIGN_END:Ljava/lang/String; = "End"

.field public static final TEXT_ALIGN_JUSTIFY:Ljava/lang/String; = "Justify"

.field public static final TEXT_ALIGN_START:Ljava/lang/String; = "Start"

.field private static final TEXT_DECORATION_COLOR:Ljava/lang/String; = "TextDecorationColor"

.field private static final TEXT_DECORATION_THICKNESS:Ljava/lang/String; = "TextDecorationThickness"

.field private static final TEXT_DECORATION_TYPE:Ljava/lang/String; = "TextDecorationType"

.field public static final TEXT_DECORATION_TYPE_LINE_THROUGH:Ljava/lang/String; = "LineThrough"

.field public static final TEXT_DECORATION_TYPE_NONE:Ljava/lang/String; = "None"

.field public static final TEXT_DECORATION_TYPE_OVERLINE:Ljava/lang/String; = "Overline"

.field public static final TEXT_DECORATION_TYPE_UNDERLINE:Ljava/lang/String; = "Underline"

.field private static final TEXT_INDENT:Ljava/lang/String; = "TextIndent"

.field private static final T_BORDER_STYLE:Ljava/lang/String; = "TBorderStyle"

.field private static final T_PADDING:Ljava/lang/String; = "TPadding"

.field private static final WIDTH:Ljava/lang/String; = "Width"

.field public static final WIDTH_AUTO:Ljava/lang/String; = "Auto"

.field private static final WRITING_MODE:Ljava/lang/String; = "WritingMode"

.field public static final WRITING_MODE_LRTB:Ljava/lang/String; = "LrTb"

.field public static final WRITING_MODE_RLTB:Ljava/lang/String; = "RlTb"

.field public static final WRITING_MODE_TBRL:Ljava/lang/String; = "TbRl"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 356
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;-><init>()V

    const-string v0, "Layout"

    .line 357
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setOwner(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 367
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 2

    .line 844
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "BBox"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    .line 847
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBackgroundColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;
    .locals 1

    const-string v0, "BackgroundColor"

    .line 434
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getColor(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;

    move-result-object v0

    return-object v0
.end method

.method public getBaselineShift()F
    .locals 2

    const-string v0, "BaselineShift"

    const/4 v1, 0x0

    .line 1117
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNumber(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getBlockAlign()Ljava/lang/String;
    .locals 2

    const-string v0, "BlockAlign"

    const-string v1, "Before"

    .line 961
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBorderColors()Ljava/lang/Object;
    .locals 1

    const-string v0, "BorderColor"

    .line 455
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getColorOrFourColors(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBorderStyle()Ljava/lang/Object;
    .locals 2

    const-string v0, "BorderStyle"

    const-string v1, "None"

    .line 486
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNameOrArrayOfName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBorderThickness()Ljava/lang/Object;
    .locals 2

    const-string v0, "BorderThickness"

    const/high16 v1, -0x40800000    # -1.0f

    .line 542
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNumberOrArrayOfNumber(Ljava/lang/String;F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;
    .locals 1

    const-string v0, "Color"

    .line 623
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getColor(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 2

    const-string v0, "ColumnCount"

    const/4 v1, 0x1

    .line 1377
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getColumnGap()Ljava/lang/Object;
    .locals 2

    const-string v0, "ColumnGap"

    const/high16 v1, -0x40800000    # -1.0f

    .line 1399
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNumberOrArrayOfNumber(Ljava/lang/String;F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getColumnWidths()Ljava/lang/Object;
    .locals 2

    const-string v0, "ColumnWidths"

    const/high16 v1, -0x40800000    # -1.0f

    .line 1445
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNumberOrArrayOfNumber(Ljava/lang/String;F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEndIndent()F
    .locals 2

    const-string v0, "EndIndent"

    const/4 v1, 0x0

    .line 745
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNumber(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getGlyphOrientationVertical()Ljava/lang/String;
    .locals 2

    const-string v0, "GlyphOrientationVertical"

    const-string v1, "Auto"

    .line 1343
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()Ljava/lang/Object;
    .locals 2

    const-string v0, "Height"

    const-string v1, "Auto"

    .line 918
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNumberOrName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInlineAlign()Ljava/lang/String;
    .locals 2

    const-string v0, "InlineAlign"

    const-string v1, "Start"

    .line 990
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineHeight()Ljava/lang/Object;
    .locals 2

    const-string v0, "LineHeight"

    const-string v1, "Normal"

    .line 1150
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNumberOrName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPadding()Ljava/lang/Object;
    .locals 2

    const-string v0, "Padding"

    const/4 v1, 0x0

    .line 582
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNumberOrArrayOfNumber(Ljava/lang/String;F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 2

    const-string v0, "Placement"

    const-string v1, "Inline"

    .line 380
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRubyAlign()Ljava/lang/String;
    .locals 2

    const-string v0, "RubyAlign"

    const-string v1, "Distribute"

    .line 1284
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRubyPosition()Ljava/lang/String;
    .locals 2

    const-string v0, "RubyPosition"

    const-string v1, "Before"

    .line 1314
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpaceAfter()F
    .locals 2

    const-string v0, "SpaceAfter"

    const/4 v1, 0x0

    .line 678
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNumber(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getSpaceBefore()F
    .locals 2

    const-string v0, "SpaceBefore"

    const/4 v1, 0x0

    .line 645
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNumber(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getStartIndent()F
    .locals 2

    const-string v0, "StartIndent"

    const/4 v1, 0x0

    .line 711
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNumber(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getTBorderStyle()Ljava/lang/Object;
    .locals 2

    const-string v0, "TBorderStyle"

    const-string v1, "None"

    .line 1017
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNameOrArrayOfName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTPadding()Ljava/lang/Object;
    .locals 2

    const-string v0, "TPadding"

    const/4 v1, 0x0

    .line 1075
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNumberOrArrayOfNumber(Ljava/lang/String;F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTextAlign()Ljava/lang/String;
    .locals 2

    const-string v0, "TextAlign"

    const-string v1, "Start"

    .line 815
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextDecorationColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;
    .locals 1

    const-string v0, "TextDecorationColor"

    .line 1201
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getColor(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;

    move-result-object v0

    return-object v0
.end method

.method public getTextDecorationThickness()F
    .locals 1

    const-string v0, "TextDecorationThickness"

    .line 1223
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNumber(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getTextDecorationType()Ljava/lang/String;
    .locals 2

    const-string v0, "TextDecorationType"

    const-string v1, "None"

    .line 1256
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextIndent()F
    .locals 2

    const-string v0, "TextIndent"

    const/4 v1, 0x0

    .line 779
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNumber(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getWidth()Ljava/lang/Object;
    .locals 2

    const-string v0, "Width"

    const-string v1, "Auto"

    .line 875
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getNumberOrName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWritingMode()Ljava/lang/String;
    .locals 2

    const-string v0, "WritingMode"

    const-string v1, "LrTb"

    .line 409
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAllBorderColors(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V
    .locals 1

    const-string v0, "BorderColor"

    .line 465
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setColor(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V

    return-void
.end method

.method public setAllBorderStyles(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BorderStyle"

    .line 509
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAllBorderThicknesses(F)V
    .locals 1

    const-string v0, "BorderThickness"

    .line 552
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;F)V

    return-void
.end method

.method public setAllBorderThicknesses(I)V
    .locals 1

    const-string v0, "BorderThickness"

    .line 562
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public setAllColumnWidths(F)V
    .locals 1

    const-string v0, "ColumnWidths"

    .line 1455
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;F)V

    return-void
.end method

.method public setAllColumnWidths(I)V
    .locals 1

    const-string v0, "ColumnWidths"

    .line 1465
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public setAllPaddings(F)V
    .locals 1

    const-string v0, "Padding"

    .line 592
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;F)V

    return-void
.end method

.method public setAllPaddings(I)V
    .locals 1

    const-string v0, "Padding"

    .line 602
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public setAllTBorderStyles(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TBorderStyle"

    .line 1040
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAllTPaddings(F)V
    .locals 1

    const-string v0, "TPadding"

    .line 1085
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;F)V

    return-void
.end method

.method public setAllTPaddings(I)V
    .locals 1

    const-string v0, "TPadding"

    .line 1095
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 3

    .line 860
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "BBox"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 861
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 862
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 863
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->potentiallyNotifyChanged(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setBackgroundColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V
    .locals 1

    const-string v0, "BackgroundColor"

    .line 444
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setColor(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V

    return-void
.end method

.method public setBaselineShift(F)V
    .locals 1

    const-string v0, "BaselineShift"

    .line 1128
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;F)V

    return-void
.end method

.method public setBaselineShift(I)V
    .locals 1

    const-string v0, "BaselineShift"

    .line 1139
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public setBlockAlign(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BlockAlign"

    .line 978
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBorderColors(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;)V
    .locals 1

    const-string v0, "BorderColor"

    .line 475
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setFourColors(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;)V

    return-void
.end method

.method public setBorderStyles([Ljava/lang/String;)V
    .locals 1

    const-string v0, "BorderStyle"

    .line 532
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setArrayOfName(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setBorderThicknesses([F)V
    .locals 1

    const-string v0, "BorderThickness"

    .line 572
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setArrayOfNumber(Ljava/lang/String;[F)V

    return-void
.end method

.method public setColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V
    .locals 1

    const-string v0, "Color"

    .line 634
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setColor(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V

    return-void
.end method

.method public setColumnCount(I)V
    .locals 1

    const-string v0, "ColumnCount"

    .line 1388
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setColumnGap(F)V
    .locals 1

    const-string v0, "ColumnGap"

    .line 1410
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;F)V

    return-void
.end method

.method public setColumnGap(I)V
    .locals 1

    const-string v0, "ColumnGap"

    .line 1421
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public setColumnGaps([F)V
    .locals 1

    const-string v0, "ColumnGap"

    .line 1434
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setArrayOfNumber(Ljava/lang/String;[F)V

    return-void
.end method

.method public setColumnWidths([F)V
    .locals 1

    const-string v0, "ColumnWidths"

    .line 1475
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setArrayOfNumber(Ljava/lang/String;[F)V

    return-void
.end method

.method public setEndIndent(F)V
    .locals 1

    const-string v0, "EndIndent"

    .line 756
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;F)V

    return-void
.end method

.method public setEndIndent(I)V
    .locals 1

    const-string v0, "EndIndent"

    .line 767
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public setGlyphOrientationVertical(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GlyphOrientationVertical"

    .line 1366
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeight(F)V
    .locals 1

    const-string v0, "Height"

    .line 938
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;F)V

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    const-string v0, "Height"

    .line 949
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public setHeightAuto()V
    .locals 2

    const-string v0, "Height"

    const-string v1, "Auto"

    .line 927
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInlineAlign(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InlineAlign"

    .line 1006
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLineHeight(F)V
    .locals 1

    const-string v0, "LineHeight"

    .line 1179
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;F)V

    return-void
.end method

.method public setLineHeight(I)V
    .locals 1

    const-string v0, "LineHeight"

    .line 1190
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public setLineHeightAuto()V
    .locals 2

    const-string v0, "LineHeight"

    const-string v1, "Auto"

    .line 1168
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLineHeightNormal()V
    .locals 2

    const-string v0, "LineHeight"

    const-string v1, "Normal"

    .line 1159
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPaddings([F)V
    .locals 1

    const-string v0, "Padding"

    .line 612
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setArrayOfNumber(Ljava/lang/String;[F)V

    return-void
.end method

.method public setPlacement(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Placement"

    .line 398
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRubyAlign(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RubyAlign"

    .line 1302
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRubyPosition(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RubyPosition"

    .line 1331
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSpaceAfter(F)V
    .locals 1

    const-string v0, "SpaceAfter"

    .line 689
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;F)V

    return-void
.end method

.method public setSpaceAfter(I)V
    .locals 1

    const-string v0, "SpaceAfter"

    .line 700
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public setSpaceBefore(F)V
    .locals 1

    const-string v0, "SpaceBefore"

    .line 656
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;F)V

    return-void
.end method

.method public setSpaceBefore(I)V
    .locals 1

    const-string v0, "SpaceBefore"

    .line 667
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public setStartIndent(F)V
    .locals 1

    const-string v0, "StartIndent"

    .line 722
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;F)V

    return-void
.end method

.method public setStartIndent(I)V
    .locals 1

    const-string v0, "StartIndent"

    .line 733
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public setTBorderStyles([Ljava/lang/String;)V
    .locals 1

    const-string v0, "TBorderStyle"

    .line 1063
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setArrayOfName(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setTPaddings([F)V
    .locals 1

    const-string v0, "TPadding"

    .line 1105
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setArrayOfNumber(Ljava/lang/String;[F)V

    return-void
.end method

.method public setTextAlign(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TextAlign"

    .line 833
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextDecorationColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V
    .locals 1

    const-string v0, "TextDecorationColor"

    .line 1212
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setColor(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V

    return-void
.end method

.method public setTextDecorationThickness(F)V
    .locals 1

    const-string v0, "TextDecorationThickness"

    .line 1234
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;F)V

    return-void
.end method

.method public setTextDecorationThickness(I)V
    .locals 1

    const-string v0, "TextDecorationThickness"

    .line 1245
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public setTextDecorationType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TextDecorationType"

    .line 1273
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextIndent(F)V
    .locals 1

    const-string v0, "TextIndent"

    .line 791
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;F)V

    return-void
.end method

.method public setTextIndent(I)V
    .locals 1

    const-string v0, "TextIndent"

    .line 803
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    const-string v0, "Width"

    .line 895
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;F)V

    return-void
.end method

.method public setWidth(I)V
    .locals 1

    const-string v0, "Width"

    .line 906
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public setWidthAuto()V
    .locals 2

    const-string v0, "Width"

    const-string v1, "Auto"

    .line 884
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWritingMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "WritingMode"

    .line 424
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Placement"

    .line 1482
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", Placement="

    .line 1484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getPlacement()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "WritingMode"

    .line 1486
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", WritingMode="

    .line 1488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getWritingMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "BackgroundColor"

    .line 1490
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", BackgroundColor="

    .line 1492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getBackgroundColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "BorderColor"

    .line 1494
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", BorderColor="

    .line 1496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getBorderColors()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "BorderStyle"

    .line 1498
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1500
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getBorderStyle()Ljava/lang/Object;

    move-result-object v1

    const-string v2, ", BorderStyle="

    .line 1501
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1504
    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1508
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_0
    const-string v1, "BorderThickness"

    .line 1511
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1513
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getBorderThickness()Ljava/lang/Object;

    move-result-object v1

    const-string v2, ", BorderThickness="

    .line 1514
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    instance-of v2, v1, [F

    if-eqz v2, :cond_6

    .line 1517
    check-cast v1, [F

    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->arrayToString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1521
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_1
    const-string v1, "Padding"

    .line 1524
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1526
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getPadding()Ljava/lang/Object;

    move-result-object v1

    const-string v2, ", Padding="

    .line 1527
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    instance-of v2, v1, [F

    if-eqz v2, :cond_8

    .line 1530
    check-cast v1, [F

    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->arrayToString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1534
    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_2
    const-string v1, "Color"

    .line 1537
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, ", Color="

    .line 1539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v1, "SpaceBefore"

    .line 1541
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, ", SpaceBefore="

    .line 1543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1544
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getSpaceBefore()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "SpaceAfter"

    .line 1546
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, ", SpaceAfter="

    .line 1548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1549
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getSpaceAfter()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_c
    const-string v1, "StartIndent"

    .line 1551
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, ", StartIndent="

    .line 1553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1554
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getStartIndent()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "EndIndent"

    .line 1556
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, ", EndIndent="

    .line 1558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1559
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getEndIndent()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_e
    const-string v1, "TextIndent"

    .line 1561
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, ", TextIndent="

    .line 1563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1564
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getTextIndent()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_f
    const-string v1, "TextAlign"

    .line 1566
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, ", TextAlign="

    .line 1568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getTextAlign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v1, "BBox"

    .line 1570
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, ", BBox="

    .line 1572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v1, "Width"

    .line 1574
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, ", Width="

    .line 1576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getWidth()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_12
    const-string v1, "Height"

    .line 1578
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, ", Height="

    .line 1580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getHeight()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v1, "BlockAlign"

    .line 1582
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, ", BlockAlign="

    .line 1584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getBlockAlign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v1, "InlineAlign"

    .line 1586
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, ", InlineAlign="

    .line 1588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getInlineAlign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v1, "TBorderStyle"

    .line 1590
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1592
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getTBorderStyle()Ljava/lang/Object;

    move-result-object v1

    const-string v2, ", TBorderStyle="

    .line 1593
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 1596
    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1600
    :cond_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_17
    :goto_3
    const-string v1, "TPadding"

    .line 1603
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1605
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getTPadding()Ljava/lang/Object;

    move-result-object v1

    const-string v2, ", TPadding="

    .line 1606
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    instance-of v2, v1, [F

    if-eqz v2, :cond_18

    .line 1609
    check-cast v1, [F

    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->arrayToString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1613
    :cond_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_19
    :goto_4
    const-string v1, "BaselineShift"

    .line 1616
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, ", BaselineShift="

    .line 1618
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getBaselineShift()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_1a
    const-string v1, "LineHeight"

    .line 1620
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, ", LineHeight="

    .line 1622
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getLineHeight()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string v1, "TextDecorationColor"

    .line 1624
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, ", TextDecorationColor="

    .line 1626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1627
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getTextDecorationColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1c
    const-string v1, "TextDecorationThickness"

    .line 1629
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, ", TextDecorationThickness="

    .line 1631
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1632
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getTextDecorationThickness()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_1d
    const-string v1, "TextDecorationType"

    .line 1634
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, ", TextDecorationType="

    .line 1636
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1637
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getTextDecorationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const-string v1, "RubyAlign"

    .line 1639
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, ", RubyAlign="

    .line 1641
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getRubyAlign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    const-string v1, "RubyPosition"

    .line 1643
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, ", RubyPosition="

    .line 1645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getRubyPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    const-string v1, "GlyphOrientationVertical"

    .line 1647
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, ", GlyphOrientationVertical="

    .line 1649
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1650
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getGlyphOrientationVertical()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    const-string v1, "ColumnCount"

    .line 1652
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, ", ColumnCount="

    .line 1654
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1655
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getColumnCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_22
    const-string v1, "ColumnGap"

    .line 1657
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1659
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getColumnGap()Ljava/lang/Object;

    move-result-object v1

    const-string v2, ", ColumnGap="

    .line 1660
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    instance-of v2, v1, [F

    if-eqz v2, :cond_23

    .line 1663
    check-cast v1, [F

    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->arrayToString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1667
    :cond_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_24
    :goto_5
    const-string v1, "ColumnWidths"

    .line 1670
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1672
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->getColumnWidths()Ljava/lang/Object;

    move-result-object v1

    const-string v2, ", ColumnWidths="

    .line 1673
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    instance-of v2, v1, [F

    if-eqz v2, :cond_25

    .line 1676
    check-cast v1, [F

    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->arrayToString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1680
    :cond_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1683
    :cond_26
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
