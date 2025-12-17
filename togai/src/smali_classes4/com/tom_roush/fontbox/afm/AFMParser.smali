.class public Lcom/tom_roush/fontbox/afm/AFMParser;
.super Ljava/lang/Object;
.source "AFMParser.java"


# static fields
.field public static final ASCENDER:Ljava/lang/String; = "Ascender"

.field private static final BITS_IN_HEX:I = 0x10

.field public static final CAP_HEIGHT:Ljava/lang/String; = "CapHeight"

.field public static final CC:Ljava/lang/String; = "CC"

.field public static final CHARACTERS:Ljava/lang/String; = "Characters"

.field public static final CHARACTER_SET:Ljava/lang/String; = "CharacterSet"

.field public static final CHARMETRICS_B:Ljava/lang/String; = "B"

.field public static final CHARMETRICS_C:Ljava/lang/String; = "C"

.field public static final CHARMETRICS_CH:Ljava/lang/String; = "CH"

.field public static final CHARMETRICS_L:Ljava/lang/String; = "L"

.field public static final CHARMETRICS_N:Ljava/lang/String; = "N"

.field public static final CHARMETRICS_VV:Ljava/lang/String; = "VV"

.field public static final CHARMETRICS_W:Ljava/lang/String; = "W"

.field public static final CHARMETRICS_W0:Ljava/lang/String; = "W0"

.field public static final CHARMETRICS_W0X:Ljava/lang/String; = "W0X"

.field public static final CHARMETRICS_W0Y:Ljava/lang/String; = "W0Y"

.field public static final CHARMETRICS_W1:Ljava/lang/String; = "W1"

.field public static final CHARMETRICS_W1X:Ljava/lang/String; = "W1X"

.field public static final CHARMETRICS_W1Y:Ljava/lang/String; = "W1Y"

.field public static final CHARMETRICS_WX:Ljava/lang/String; = "WX"

.field public static final CHARMETRICS_WY:Ljava/lang/String; = "WY"

.field public static final CHAR_WIDTH:Ljava/lang/String; = "CharWidth"

.field public static final COMMENT:Ljava/lang/String; = "Comment"

.field public static final DESCENDER:Ljava/lang/String; = "Descender"

.field public static final ENCODING_SCHEME:Ljava/lang/String; = "EncodingScheme"

.field public static final END_CHAR_METRICS:Ljava/lang/String; = "EndCharMetrics"

.field public static final END_COMPOSITES:Ljava/lang/String; = "EndComposites"

.field public static final END_FONT_METRICS:Ljava/lang/String; = "EndFontMetrics"

.field public static final END_KERN_DATA:Ljava/lang/String; = "EndKernData"

.field public static final END_KERN_PAIRS:Ljava/lang/String; = "EndKernPairs"

.field public static final END_TRACK_KERN:Ljava/lang/String; = "EndTrackKern"

.field public static final ESC_CHAR:Ljava/lang/String; = "EscChar"

.field public static final FAMILY_NAME:Ljava/lang/String; = "FamilyName"

.field public static final FONT_BBOX:Ljava/lang/String; = "FontBBox"

.field public static final FONT_NAME:Ljava/lang/String; = "FontName"

.field public static final FULL_NAME:Ljava/lang/String; = "FullName"

.field public static final IS_BASE_FONT:Ljava/lang/String; = "IsBaseFont"

.field public static final IS_FIXED_PITCH:Ljava/lang/String; = "IsFixedPitch"

.field public static final IS_FIXED_V:Ljava/lang/String; = "IsFixedV"

.field public static final ITALIC_ANGLE:Ljava/lang/String; = "ItalicAngle"

.field public static final KERN_PAIR_KP:Ljava/lang/String; = "KP"

.field public static final KERN_PAIR_KPH:Ljava/lang/String; = "KPH"

.field public static final KERN_PAIR_KPX:Ljava/lang/String; = "KPX"

.field public static final KERN_PAIR_KPY:Ljava/lang/String; = "KPY"

.field public static final MAPPING_SCHEME:Ljava/lang/String; = "MappingScheme"

.field public static final NOTICE:Ljava/lang/String; = "Notice"

.field public static final PCC:Ljava/lang/String; = "PCC"

.field public static final START_CHAR_METRICS:Ljava/lang/String; = "StartCharMetrics"

.field public static final START_COMPOSITES:Ljava/lang/String; = "StartComposites"

.field public static final START_FONT_METRICS:Ljava/lang/String; = "StartFontMetrics"

.field public static final START_KERN_DATA:Ljava/lang/String; = "StartKernData"

.field public static final START_KERN_PAIRS:Ljava/lang/String; = "StartKernPairs"

.field public static final START_KERN_PAIRS0:Ljava/lang/String; = "StartKernPairs0"

.field public static final START_KERN_PAIRS1:Ljava/lang/String; = "StartKernPairs1"

.field public static final START_TRACK_KERN:Ljava/lang/String; = "StartTrackKern"

.field public static final STD_HW:Ljava/lang/String; = "StdHW"

.field public static final STD_VW:Ljava/lang/String; = "StdVW"

.field public static final UNDERLINE_POSITION:Ljava/lang/String; = "UnderlinePosition"

.field public static final UNDERLINE_THICKNESS:Ljava/lang/String; = "UnderlineThickness"

.field public static final VERSION:Ljava/lang/String; = "Version"

.field public static final V_VECTOR:Ljava/lang/String; = "VVector"

.field public static final WEIGHT:Ljava/lang/String; = "Weight"

.field public static final X_HEIGHT:Ljava/lang/String; = "XHeight"


# instance fields
.field private final input:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/fontbox/afm/AFMParser;->input:Ljava/io/InputStream;

    return-void
.end method

.method private hexToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 663
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    .line 664
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3e

    if-ne v2, v4, :cond_1

    .line 668
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 669
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v1

    new-array v1, v2, [B

    .line 670
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 675
    :try_start_0
    div-int/lit8 v3, v0, 0x2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 679
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing AFM file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_0
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lcom/tom_roush/fontbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    .line 666
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "String should be enclosed by angle brackets \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Expected hex string of length >= 2 not=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isEOL(I)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

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

.method private isWhitespace(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

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

.method private parseCharMetric()Lcom/tom_roush/fontbox/afm/CharMetric;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    new-instance v0, Lcom/tom_roush/fontbox/afm/CharMetric;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/afm/CharMetric;-><init>()V

    .line 753
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 754
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 757
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 759
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v3, "C"

    .line 760
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 762
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 763
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/CharMetric;->setCharacterCode(I)V

    .line 764
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/afm/AFMParser;->verifySemicolon(Ljava/util/StringTokenizer;)V

    goto :goto_0

    :cond_0
    const-string v3, "CH"

    .line 766
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 770
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    .line 771
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/CharMetric;->setCharacterCode(I)V

    .line 772
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/afm/AFMParser;->verifySemicolon(Ljava/util/StringTokenizer;)V

    goto :goto_0

    :cond_1
    const-string v3, "WX"

    .line 774
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 776
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/CharMetric;->setWx(F)V

    .line 777
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/afm/AFMParser;->verifySemicolon(Ljava/util/StringTokenizer;)V

    goto :goto_0

    :cond_2
    const-string v3, "W0X"

    .line 779
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 781
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/CharMetric;->setW0x(F)V

    .line 782
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/afm/AFMParser;->verifySemicolon(Ljava/util/StringTokenizer;)V

    goto :goto_0

    :cond_3
    const-string v3, "W1X"

    .line 784
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 786
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/CharMetric;->setW1x(F)V

    .line 787
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/afm/AFMParser;->verifySemicolon(Ljava/util/StringTokenizer;)V

    goto :goto_0

    :cond_4
    const-string v3, "WY"

    .line 789
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 791
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/CharMetric;->setWy(F)V

    .line 792
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/afm/AFMParser;->verifySemicolon(Ljava/util/StringTokenizer;)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "W0Y"

    .line 794
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 796
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/CharMetric;->setW0y(F)V

    .line 797
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/afm/AFMParser;->verifySemicolon(Ljava/util/StringTokenizer;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "W1Y"

    .line 799
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 801
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/CharMetric;->setW1y(F)V

    .line 802
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/afm/AFMParser;->verifySemicolon(Ljava/util/StringTokenizer;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "W"

    .line 804
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_8

    new-array v1, v6, [F

    .line 807
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v5

    .line 808
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v4

    .line 809
    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/CharMetric;->setW([F)V

    .line 810
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/afm/AFMParser;->verifySemicolon(Ljava/util/StringTokenizer;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "W0"

    .line 812
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-array v1, v6, [F

    .line 815
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v5

    .line 816
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v4

    .line 817
    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/CharMetric;->setW0([F)V

    .line 818
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/afm/AFMParser;->verifySemicolon(Ljava/util/StringTokenizer;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "W1"

    .line 820
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-array v1, v6, [F

    .line 823
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v5

    .line 824
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v4

    .line 825
    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/CharMetric;->setW1([F)V

    .line 826
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/afm/AFMParser;->verifySemicolon(Ljava/util/StringTokenizer;)V

    goto/16 :goto_0

    :cond_a
    const-string v3, "VV"

    .line 828
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-array v1, v6, [F

    .line 831
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v5

    .line 832
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v4

    .line 833
    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/CharMetric;->setVv([F)V

    .line 834
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/afm/AFMParser;->verifySemicolon(Ljava/util/StringTokenizer;)V

    goto/16 :goto_0

    :cond_b
    const-string v3, "N"

    .line 836
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 838
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/CharMetric;->setName(Ljava/lang/String;)V

    .line 839
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/afm/AFMParser;->verifySemicolon(Ljava/util/StringTokenizer;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "B"

    .line 841
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 843
    new-instance v1, Lcom/tom_roush/fontbox/util/BoundingBox;

    invoke-direct {v1}, Lcom/tom_roush/fontbox/util/BoundingBox;-><init>()V

    .line 844
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/fontbox/util/BoundingBox;->setLowerLeftX(F)V

    .line 845
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/fontbox/util/BoundingBox;->setLowerLeftY(F)V

    .line 846
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/fontbox/util/BoundingBox;->setUpperRightX(F)V

    .line 847
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/fontbox/util/BoundingBox;->setUpperRightY(F)V

    .line 848
    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/CharMetric;->setBoundingBox(Lcom/tom_roush/fontbox/util/BoundingBox;)V

    .line 849
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/afm/AFMParser;->verifySemicolon(Ljava/util/StringTokenizer;)V

    goto/16 :goto_0

    :cond_d
    const-string v3, "L"

    .line 851
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 853
    new-instance v1, Lcom/tom_roush/fontbox/afm/Ligature;

    invoke-direct {v1}, Lcom/tom_roush/fontbox/afm/Ligature;-><init>()V

    .line 854
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/fontbox/afm/Ligature;->setSuccessor(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/fontbox/afm/Ligature;->setLigature(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/CharMetric;->addLigature(Lcom/tom_roush/fontbox/afm/Ligature;)V

    .line 857
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/afm/AFMParser;->verifySemicolon(Ljava/util/StringTokenizer;)V

    goto/16 :goto_0

    .line 861
    :cond_e
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown CharMetrics command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    return-object v0

    :catch_0
    move-exception v0

    .line 867
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: Corrupt AFM document:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseComposite()Lcom/tom_roush/fontbox/afm/Composite;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error parsing AFM document:"

    .line 694
    new-instance v1, Lcom/tom_roush/fontbox/afm/Composite;

    invoke-direct {v1}, Lcom/tom_roush/fontbox/afm/Composite;-><init>()V

    .line 695
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 696
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " ;"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CC"

    .line 700
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "\'"

    if-eqz v4, :cond_2

    .line 704
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 705
    invoke-virtual {v1, v2}, Lcom/tom_roush/fontbox/afm/Composite;->setName(Ljava/lang/String;)V

    .line 710
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 718
    new-instance v6, Lcom/tom_roush/fontbox/afm/CompositePart;

    invoke-direct {v6}, Lcom/tom_roush/fontbox/afm/CompositePart;-><init>()V

    .line 719
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PCC"

    .line 720
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 724
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 727
    :try_start_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 728
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 730
    invoke-virtual {v6, v7}, Lcom/tom_roush/fontbox/afm/CompositePart;->setName(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v6, v8}, Lcom/tom_roush/fontbox/afm/CompositePart;->setXDisplacement(I)V

    .line 732
    invoke-virtual {v6, v9}, Lcom/tom_roush/fontbox/afm/CompositePart;->setYDisplacement(I)V

    .line 733
    invoke-virtual {v1, v6}, Lcom/tom_roush/fontbox/afm/Composite;->addPart(Lcom/tom_roush/fontbox/afm/CompositePart;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 737
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 722
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected \'PCC\' actual=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v1

    :catch_1
    move-exception v1

    .line 714
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 702
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected \'CC\' actual=\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseFontMetric(Z)Lcom/tom_roush/fontbox/afm/FontMetrics;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    new-instance v0, Lcom/tom_roush/fontbox/afm/FontMetrics;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/afm/FontMetrics;-><init>()V

    .line 339
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StartFontMetrics"

    .line 340
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\'"

    if-eqz v2, :cond_24

    .line 345
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setAFMVersion(F)V

    const/4 v1, 0x0

    move v2, v1

    .line 348
    :goto_0
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EndFontMetrics"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    const-string v5, "FontName"

    .line 350
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setFontName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v5, "FullName"

    .line 354
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 356
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setFullName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v5, "FamilyName"

    .line 358
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 360
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setFamilyName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v5, "Weight"

    .line 362
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 364
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setWeight(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v5, "FontBBox"

    .line 366
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 368
    new-instance v4, Lcom/tom_roush/fontbox/util/BoundingBox;

    invoke-direct {v4}, Lcom/tom_roush/fontbox/util/BoundingBox;-><init>()V

    .line 369
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tom_roush/fontbox/util/BoundingBox;->setLowerLeftX(F)V

    .line 370
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tom_roush/fontbox/util/BoundingBox;->setLowerLeftY(F)V

    .line 371
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tom_roush/fontbox/util/BoundingBox;->setUpperRightX(F)V

    .line 372
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tom_roush/fontbox/util/BoundingBox;->setUpperRightY(F)V

    .line 373
    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setFontBBox(Lcom/tom_roush/fontbox/util/BoundingBox;)V

    goto :goto_0

    :cond_4
    const-string v5, "Version"

    .line 375
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 377
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setFontVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v5, "Notice"

    .line 379
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 381
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setNotice(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v5, "EncodingScheme"

    .line 383
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 385
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setEncodingScheme(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v5, "MappingScheme"

    .line 387
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 389
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setMappingScheme(I)V

    goto/16 :goto_0

    :cond_8
    const-string v5, "EscChar"

    .line 391
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 393
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setEscChar(I)V

    goto/16 :goto_0

    :cond_9
    const-string v5, "CharacterSet"

    .line 395
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 397
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setCharacterSet(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v5, "Characters"

    .line 399
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 401
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setCharacters(I)V

    goto/16 :goto_0

    :cond_b
    const-string v5, "IsBaseFont"

    .line 403
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 405
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readBoolean()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setIsBaseFont(Z)V

    goto/16 :goto_0

    :cond_c
    const-string v5, "VVector"

    .line 407
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_d

    new-array v4, v6, [F

    .line 410
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v5

    aput v5, v4, v1

    .line 411
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v5

    aput v5, v4, v7

    .line 412
    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setVVector([F)V

    goto/16 :goto_0

    :cond_d
    const-string v5, "IsFixedV"

    .line 414
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 416
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readBoolean()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setIsFixedV(Z)V

    goto/16 :goto_0

    :cond_e
    const-string v5, "CapHeight"

    .line 418
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 420
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setCapHeight(F)V

    goto/16 :goto_0

    :cond_f
    const-string v5, "XHeight"

    .line 422
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 424
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setXHeight(F)V

    goto/16 :goto_0

    :cond_10
    const-string v5, "Ascender"

    .line 426
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 428
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setAscender(F)V

    goto/16 :goto_0

    :cond_11
    const-string v5, "Descender"

    .line 430
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 432
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setDescender(F)V

    goto/16 :goto_0

    :cond_12
    const-string v5, "StdHW"

    .line 434
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 436
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setStandardHorizontalWidth(F)V

    goto/16 :goto_0

    :cond_13
    const-string v5, "StdVW"

    .line 438
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 440
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setStandardVerticalWidth(F)V

    goto/16 :goto_0

    :cond_14
    const-string v5, "Comment"

    .line 442
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 444
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->addComment(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const-string v5, "UnderlinePosition"

    .line 446
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 448
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setUnderlinePosition(F)V

    goto/16 :goto_0

    :cond_16
    const-string v5, "UnderlineThickness"

    .line 450
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 452
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setUnderlineThickness(F)V

    goto/16 :goto_0

    :cond_17
    const-string v5, "ItalicAngle"

    .line 454
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 456
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setItalicAngle(F)V

    goto/16 :goto_0

    :cond_18
    const-string v5, "CharWidth"

    .line 458
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    new-array v4, v6, [F

    .line 461
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v5

    aput v5, v4, v1

    .line 462
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v5

    aput v5, v4, v7

    .line 463
    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setCharWidth([F)V

    goto/16 :goto_0

    :cond_19
    const-string v5, "IsFixedPitch"

    .line 465
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 467
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readBoolean()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setFixedPitch(Z)V

    goto/16 :goto_0

    :cond_1a
    const-string v5, "StartCharMetrics"

    .line 469
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 471
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readInt()I

    move-result v2

    .line 472
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v1

    :goto_1
    if-ge v5, v2, :cond_1b

    .line 475
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->parseCharMetric()Lcom/tom_roush/fontbox/afm/CharMetric;

    move-result-object v6

    .line 476
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 478
    :cond_1b
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "EndCharMetrics"

    .line 479
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 485
    invoke-virtual {v0, v4}, Lcom/tom_roush/fontbox/afm/FontMetrics;->setCharMetrics(Ljava/util/List;)V

    move v2, v7

    goto/16 :goto_0

    .line 481
    :cond_1c
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: Expected \'EndCharMetrics\' actual \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    if-nez p1, :cond_20

    const-string v5, "StartComposites"

    .line 487
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 489
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readInt()I

    move-result v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_1e

    .line 492
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->parseComposite()Lcom/tom_roush/fontbox/afm/Composite;

    move-result-object v6

    .line 493
    invoke-virtual {v0, v6}, Lcom/tom_roush/fontbox/afm/FontMetrics;->addComposite(Lcom/tom_roush/fontbox/afm/Composite;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 495
    :cond_1e
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EndComposites"

    .line 496
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    goto/16 :goto_0

    .line 498
    :cond_1f
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: Expected \'EndComposites\' actual \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    if-nez p1, :cond_21

    const-string v5, "StartKernData"

    .line 502
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 504
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/afm/AFMParser;->parseKernData(Lcom/tom_roush/fontbox/afm/FontMetrics;)V

    goto/16 :goto_0

    :cond_21
    if-eqz p1, :cond_22

    if-eqz v2, :cond_22

    goto :goto_3

    .line 512
    :cond_22
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown AFM key \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    :goto_3
    return-object v0

    .line 342
    :cond_24
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error: The AFM file should start with StartFontMetrics and not \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseKernData(Lcom/tom_roush/fontbox/afm/FontMetrics;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    :goto_0
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EndKernData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "StartTrackKern"

    .line 530
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "\'"

    if-eqz v1, :cond_2

    .line 532
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readInt()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_0

    .line 535
    new-instance v1, Lcom/tom_roush/fontbox/afm/TrackKern;

    invoke-direct {v1}, Lcom/tom_roush/fontbox/afm/TrackKern;-><init>()V

    .line 536
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tom_roush/fontbox/afm/TrackKern;->setDegree(I)V

    .line 537
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tom_roush/fontbox/afm/TrackKern;->setMinPointSize(F)V

    .line 538
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tom_roush/fontbox/afm/TrackKern;->setMinKern(F)V

    .line 539
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tom_roush/fontbox/afm/TrackKern;->setMaxPointSize(F)V

    .line 540
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tom_roush/fontbox/afm/TrackKern;->setMaxKern(F)V

    .line 541
    invoke-virtual {p1, v1}, Lcom/tom_roush/fontbox/afm/FontMetrics;->addTrackKern(Lcom/tom_roush/fontbox/afm/TrackKern;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 543
    :cond_0
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EndTrackKern"

    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 546
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Expected \'EndTrackKern\' actual \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string v1, "StartKernPairs"

    .line 550
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "Error: Expected \'EndKernPairs\' actual \'"

    const-string v5, "EndKernPairs"

    if-eqz v1, :cond_5

    .line 552
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readInt()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 555
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->parseKernPair()Lcom/tom_roush/fontbox/afm/KernPair;

    move-result-object v1

    .line 556
    invoke-virtual {p1, v1}, Lcom/tom_roush/fontbox/afm/FontMetrics;->addKernPair(Lcom/tom_roush/fontbox/afm/KernPair;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 558
    :cond_3
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_0

    .line 561
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string v1, "StartKernPairs0"

    .line 565
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 567
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readInt()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_6

    .line 570
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->parseKernPair()Lcom/tom_roush/fontbox/afm/KernPair;

    move-result-object v1

    .line 571
    invoke-virtual {p1, v1}, Lcom/tom_roush/fontbox/afm/FontMetrics;->addKernPair0(Lcom/tom_roush/fontbox/afm/KernPair;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 573
    :cond_6
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v0

    .line 574
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_0

    .line 576
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    const-string v1, "StartKernPairs1"

    .line 580
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 582
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readInt()I

    move-result v0

    :goto_4
    if-ge v2, v0, :cond_9

    .line 585
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->parseKernPair()Lcom/tom_roush/fontbox/afm/KernPair;

    move-result-object v1

    .line 586
    invoke-virtual {p1, v1}, Lcom/tom_roush/fontbox/afm/FontMetrics;->addKernPair1(Lcom/tom_roush/fontbox/afm/KernPair;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 588
    :cond_9
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_0

    .line 591
    :cond_a
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 597
    :cond_b
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown kerning data type \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    return-void
.end method

.method private parseKernPair()Lcom/tom_roush/fontbox/afm/KernPair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    new-instance v0, Lcom/tom_roush/fontbox/afm/KernPair;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/afm/KernPair;-><init>()V

    .line 612
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KP"

    .line 613
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/KernPair;->setFirstKernCharacter(Ljava/lang/String;)V

    .line 616
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/KernPair;->setSecondKernCharacter(Ljava/lang/String;)V

    .line 617
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/KernPair;->setX(F)V

    .line 618
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/KernPair;->setY(F)V

    goto :goto_0

    :cond_0
    const-string v2, "KPH"

    .line 620
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 622
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/afm/AFMParser;->hexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/KernPair;->setFirstKernCharacter(Ljava/lang/String;)V

    .line 623
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/afm/AFMParser;->hexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/KernPair;->setSecondKernCharacter(Ljava/lang/String;)V

    .line 624
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/KernPair;->setX(F)V

    .line 625
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/KernPair;->setY(F)V

    goto :goto_0

    :cond_1
    const-string v2, "KPX"

    .line 627
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 629
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/KernPair;->setFirstKernCharacter(Ljava/lang/String;)V

    .line 630
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/KernPair;->setSecondKernCharacter(Ljava/lang/String;)V

    .line 631
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/KernPair;->setX(F)V

    .line 632
    invoke-virtual {v0, v3}, Lcom/tom_roush/fontbox/afm/KernPair;->setY(F)V

    goto :goto_0

    :cond_2
    const-string v2, "KPY"

    .line 634
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 636
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/KernPair;->setFirstKernCharacter(Ljava/lang/String;)V

    .line 637
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/KernPair;->setSecondKernCharacter(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0, v3}, Lcom/tom_roush/fontbox/afm/KernPair;->setX(F)V

    .line 639
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/afm/KernPair;->setY(F)V

    :goto_0
    return-object v0

    .line 643
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error expected kern pair command actual=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 903
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v0

    .line 904
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 932
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 914
    invoke-direct {p0}, Lcom/tom_roush/fontbox/afm/AFMParser;->readString()Ljava/lang/String;

    move-result-object v0

    .line 917
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 921
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error parsing AFM document:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/tom_roush/fontbox/afm/AFMParser;->input:Ljava/io/InputStream;

    .line 945
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 946
    :goto_0
    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/afm/AFMParser;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/tom_roush/fontbox/afm/AFMParser;->input:Ljava/io/InputStream;

    .line 948
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0

    :cond_0
    int-to-char v1, v1

    .line 951
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tom_roush/fontbox/afm/AFMParser;->input:Ljava/io/InputStream;

    .line 954
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 955
    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/afm/AFMParser;->isEOL(I)Z

    move-result v2

    if-nez v2, :cond_1

    int-to-char v1, v1

    .line 957
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tom_roush/fontbox/afm/AFMParser;->input:Ljava/io/InputStream;

    .line 958
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_1

    .line 960
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/tom_roush/fontbox/afm/AFMParser;->input:Ljava/io/InputStream;

    .line 974
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 975
    :goto_0
    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/afm/AFMParser;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/tom_roush/fontbox/afm/AFMParser;->input:Ljava/io/InputStream;

    .line 977
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0

    :cond_0
    int-to-char v1, v1

    .line 980
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tom_roush/fontbox/afm/AFMParser;->input:Ljava/io/InputStream;

    .line 983
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 984
    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/afm/AFMParser;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_1

    int-to-char v1, v1

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tom_roush/fontbox/afm/AFMParser;->input:Ljava/io/InputStream;

    .line 987
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_1

    .line 989
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private verifySemicolon(Ljava/util/StringTokenizer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 881
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    .line 884
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 886
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Expected semicolon in stream actual=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 892
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "CharMetrics is missing a semicolon after a command"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public parse()Lcom/tom_roush/fontbox/afm/FontMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 313
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/afm/AFMParser;->parseFontMetric(Z)Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object v0

    return-object v0
.end method

.method public parse(Z)Lcom/tom_roush/fontbox/afm/FontMetrics;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/afm/AFMParser;->parseFontMetric(Z)Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object p1

    return-object p1
.end method
