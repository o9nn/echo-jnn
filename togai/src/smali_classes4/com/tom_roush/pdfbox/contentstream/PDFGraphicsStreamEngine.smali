.class public abstract Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;
.super Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;
.source "PDFGraphicsStreamEngine.java"


# instance fields
.field private final page:Lcom/tom_roush/pdfbox/pdmodel/PDPage;


# direct methods
.method protected constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->page:Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    .line 111
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CloseFillNonZeroAndStrokePath;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CloseFillNonZeroAndStrokePath;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 112
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/FillNonZeroAndStrokePath;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/FillNonZeroAndStrokePath;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 113
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CloseFillEvenOddAndStrokePath;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CloseFillEvenOddAndStrokePath;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 114
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/FillEvenOddAndStrokePath;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/FillEvenOddAndStrokePath;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 115
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/BeginInlineImage;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/BeginInlineImage;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 116
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/text/BeginText;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/text/BeginText;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 117
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CurveTo;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CurveTo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 118
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/state/Concatenate;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/state/Concatenate;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 119
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingColorSpace;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingColorSpace;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 120
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetNonStrokingColorSpace;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetNonStrokingColorSpace;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 121
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetLineDashPattern;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetLineDashPattern;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 122
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/DrawObject;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/DrawObject;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 123
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/text/EndText;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/text/EndText;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 124
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/FillNonZeroRule;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/FillNonZeroRule;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 125
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/LegacyFillNonZeroRule;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/LegacyFillNonZeroRule;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 126
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/FillEvenOddRule;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/FillEvenOddRule;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 127
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingDeviceGrayColor;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingDeviceGrayColor;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 128
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetNonStrokingDeviceGrayColor;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetNonStrokingDeviceGrayColor;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 129
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetGraphicsStateParameters;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetGraphicsStateParameters;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 130
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/ClosePath;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/ClosePath;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 131
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetFlatness;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetFlatness;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 132
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetLineJoinStyle;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetLineJoinStyle;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 133
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetLineCapStyle;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetLineCapStyle;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 134
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingDeviceCMYKColor;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingDeviceCMYKColor;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 135
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetNonStrokingDeviceCMYKColor;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetNonStrokingDeviceCMYKColor;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 136
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/LineTo;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/LineTo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 137
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/MoveTo;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/MoveTo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 138
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetLineMiterLimit;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetLineMiterLimit;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 139
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/EndPath;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/EndPath;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 140
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/state/Save;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/state/Save;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 141
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/state/Restore;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/state/Restore;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 142
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/AppendRectangleToPath;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/AppendRectangleToPath;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 143
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingDeviceRGBColor;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingDeviceRGBColor;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 144
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetNonStrokingDeviceRGBColor;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetNonStrokingDeviceRGBColor;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 145
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetRenderingIntent;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetRenderingIntent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 146
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CloseAndStrokePath;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CloseAndStrokePath;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 147
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/StrokePath;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/StrokePath;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 148
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingColor;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingColor;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 149
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetNonStrokingColor;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetNonStrokingColor;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 150
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingColorN;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingColorN;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 151
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetNonStrokingColorN;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetNonStrokingColorN;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 152
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/ShadingFill;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/ShadingFill;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 153
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/text/NextLine;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/text/NextLine;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 154
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetCharSpacing;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetCharSpacing;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 155
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/text/MoveText;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/text/MoveText;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 156
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/text/MoveTextSetLeading;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/text/MoveTextSetLeading;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 157
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetFontAndSize;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetFontAndSize;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 158
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowText;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowText;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 159
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextAdjusted;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextAdjusted;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 160
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetTextLeading;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetTextLeading;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 161
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetMatrix;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetMatrix;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 162
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetTextRenderingMode;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetTextRenderingMode;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 163
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetTextRise;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetTextRise;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 164
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetWordSpacing;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetWordSpacing;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 165
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetTextHorizontalScaling;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetTextHorizontalScaling;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 166
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CurveToReplicateInitialPoint;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CurveToReplicateInitialPoint;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 167
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetLineWidth;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetLineWidth;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 168
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/ClipNonZeroRule;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/ClipNonZeroRule;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 169
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/ClipEvenOddRule;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/ClipEvenOddRule;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 170
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CurveToReplicateFinalPoint;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CurveToReplicateFinalPoint;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 171
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextLine;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextLine;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 172
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextLineAndSpace;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextLineAndSpace;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 173
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/markedcontent/BeginMarkedContentSequence;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/markedcontent/BeginMarkedContentSequence;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 174
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/markedcontent/BeginMarkedContentSequenceWithProperties;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/markedcontent/BeginMarkedContentSequenceWithProperties;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 175
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/markedcontent/EndMarkedContentSequence;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/markedcontent/EndMarkedContentSequence;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    return-void
.end method


# virtual methods
.method public abstract appendRectangle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract clip(Landroid/graphics/Path$FillType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract closePath()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract curveTo(FFFFFF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract endPath()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract fillAndStrokePath(Landroid/graphics/Path$FillType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract fillPath(Landroid/graphics/Path$FillType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCurrentPoint()Landroid/graphics/PointF;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final getPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->page:Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    return-object v0
.end method

.method public abstract lineTo(FF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract moveTo(FF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract shadingFill(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract strokePath()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
