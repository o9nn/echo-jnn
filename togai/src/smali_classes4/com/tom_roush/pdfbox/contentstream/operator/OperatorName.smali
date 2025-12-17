.class public final Lcom/tom_roush/pdfbox/contentstream/operator/OperatorName;
.super Ljava/lang/Object;
.source "OperatorName.java"


# static fields
.field public static final APPEND_RECT:Ljava/lang/String; = "re"

.field public static final BEGIN_COMPATIBILITY_SECTION:Ljava/lang/String; = "BX"

.field public static final BEGIN_INLINE_IMAGE:Ljava/lang/String; = "BI"

.field public static final BEGIN_INLINE_IMAGE_DATA:Ljava/lang/String; = "ID"

.field public static final BEGIN_MARKED_CONTENT:Ljava/lang/String; = "BMC"

.field public static final BEGIN_MARKED_CONTENT_SEQ:Ljava/lang/String; = "BDC"

.field public static final BEGIN_TEXT:Ljava/lang/String; = "BT"

.field public static final CLIP_EVEN_ODD:Ljava/lang/String; = "W*"

.field public static final CLIP_NON_ZERO:Ljava/lang/String; = "W"

.field public static final CLOSE_AND_STROKE:Ljava/lang/String; = "s"

.field public static final CLOSE_FILL_EVEN_ODD_AND_STROKE:Ljava/lang/String; = "b*"

.field public static final CLOSE_FILL_NON_ZERO_AND_STROKE:Ljava/lang/String; = "b"

.field public static final CLOSE_PATH:Ljava/lang/String; = "h"

.field public static final CONCAT:Ljava/lang/String; = "cm"

.field public static final CURVE_TO:Ljava/lang/String; = "c"

.field public static final CURVE_TO_REPLICATE_FINAL_POINT:Ljava/lang/String; = "y"

.field public static final CURVE_TO_REPLICATE_INITIAL_POINT:Ljava/lang/String; = "v"

.field public static final DRAW_OBJECT:Ljava/lang/String; = "Do"

.field public static final ENDPATH:Ljava/lang/String; = "n"

.field public static final END_COMPATIBILITY_SECTION:Ljava/lang/String; = "EX"

.field public static final END_INLINE_IMAGE:Ljava/lang/String; = "EI"

.field public static final END_MARKED_CONTENT:Ljava/lang/String; = "EMC"

.field public static final END_TEXT:Ljava/lang/String; = "ET"

.field public static final FILL_EVEN_ODD:Ljava/lang/String; = "f*"

.field public static final FILL_EVEN_ODD_AND_STROKE:Ljava/lang/String; = "B*"

.field public static final FILL_NON_ZERO:Ljava/lang/String; = "f"

.field public static final FILL_NON_ZERO_AND_STROKE:Ljava/lang/String; = "B"

.field public static final LEGACY_FILL_NON_ZERO:Ljava/lang/String; = "F"

.field public static final LINE_TO:Ljava/lang/String; = "l"

.field public static final MARKED_CONTENT_POINT:Ljava/lang/String; = "MP"

.field public static final MARKED_CONTENT_POINT_WITH_PROPS:Ljava/lang/String; = "DP"

.field public static final MOVE_TEXT:Ljava/lang/String; = "Td"

.field public static final MOVE_TEXT_SET_LEADING:Ljava/lang/String; = "TD"

.field public static final MOVE_TO:Ljava/lang/String; = "m"

.field public static final NEXT_LINE:Ljava/lang/String; = "T*"

.field public static final NON_STROKING_CMYK:Ljava/lang/String; = "k"

.field public static final NON_STROKING_COLOR:Ljava/lang/String; = "sc"

.field public static final NON_STROKING_COLORSPACE:Ljava/lang/String; = "cs"

.field public static final NON_STROKING_COLOR_N:Ljava/lang/String; = "scn"

.field public static final NON_STROKING_GRAY:Ljava/lang/String; = "g"

.field public static final NON_STROKING_RGB:Ljava/lang/String; = "rg"

.field public static final RESTORE:Ljava/lang/String; = "Q"

.field public static final SAVE:Ljava/lang/String; = "q"

.field public static final SET_CHAR_SPACING:Ljava/lang/String; = "Tc"

.field public static final SET_FLATNESS:Ljava/lang/String; = "i"

.field public static final SET_FONT_AND_SIZE:Ljava/lang/String; = "Tf"

.field public static final SET_GRAPHICS_STATE_PARAMS:Ljava/lang/String; = "gs"

.field public static final SET_LINE_CAPSTYLE:Ljava/lang/String; = "J"

.field public static final SET_LINE_DASHPATTERN:Ljava/lang/String; = "d"

.field public static final SET_LINE_JOINSTYLE:Ljava/lang/String; = "j"

.field public static final SET_LINE_MITERLIMIT:Ljava/lang/String; = "M"

.field public static final SET_LINE_WIDTH:Ljava/lang/String; = "w"

.field public static final SET_MATRIX:Ljava/lang/String; = "Tm"

.field public static final SET_RENDERINGINTENT:Ljava/lang/String; = "ri"

.field public static final SET_TEXT_HORIZONTAL_SCALING:Ljava/lang/String; = "Tz"

.field public static final SET_TEXT_LEADING:Ljava/lang/String; = "TL"

.field public static final SET_TEXT_RENDERINGMODE:Ljava/lang/String; = "Tr"

.field public static final SET_TEXT_RISE:Ljava/lang/String; = "Ts"

.field public static final SET_WORD_SPACING:Ljava/lang/String; = "Tw"

.field public static final SHADING_FILL:Ljava/lang/String; = "sh"

.field public static final SHOW_TEXT:Ljava/lang/String; = "Tj"

.field public static final SHOW_TEXT_ADJUSTED:Ljava/lang/String; = "TJ"

.field public static final SHOW_TEXT_LINE:Ljava/lang/String; = "\'"

.field public static final SHOW_TEXT_LINE_AND_SPACE:Ljava/lang/String; = "\""

.field public static final STROKE_PATH:Ljava/lang/String; = "S"

.field public static final STROKING_COLOR:Ljava/lang/String; = "SC"

.field public static final STROKING_COLORSPACE:Ljava/lang/String; = "CS"

.field public static final STROKING_COLOR_CMYK:Ljava/lang/String; = "K"

.field public static final STROKING_COLOR_GRAY:Ljava/lang/String; = "G"

.field public static final STROKING_COLOR_N:Ljava/lang/String; = "SCN"

.field public static final STROKING_COLOR_RGB:Ljava/lang/String; = "RG"

.field public static final TYPE3_D0:Ljava/lang/String; = "d0"

.field public static final TYPE3_D1:Ljava/lang/String; = "d1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
