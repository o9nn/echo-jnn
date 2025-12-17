.class public Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;
.super Lcom/tom_roush/fontbox/ttf/TTFTable;
.source "OS2WindowsMetricsTable.java"


# static fields
.field public static final FAMILY_CLASS_CLAREDON_SERIFS:I = 0x4

.field public static final FAMILY_CLASS_FREEFORM_SERIFS:I = 0x7

.field public static final FAMILY_CLASS_MODERN_SERIFS:I = 0x3

.field public static final FAMILY_CLASS_NO_CLASSIFICATION:I = 0x0

.field public static final FAMILY_CLASS_OLDSTYLE_SERIFS:I = 0x1

.field public static final FAMILY_CLASS_ORNAMENTALS:I = 0x9

.field public static final FAMILY_CLASS_SANS_SERIF:I = 0x8

.field public static final FAMILY_CLASS_SCRIPTS:I = 0xa

.field public static final FAMILY_CLASS_SLAB_SERIFS:I = 0x5

.field public static final FAMILY_CLASS_SYMBOLIC:I = 0xc

.field public static final FAMILY_CLASS_TRANSITIONAL_SERIFS:I = 0x2

.field public static final FSTYPE_BITMAP_ONLY:S = 0x200s

.field public static final FSTYPE_EDITIBLE:S = 0x8s

.field public static final FSTYPE_NO_SUBSETTING:S = 0x100s

.field public static final FSTYPE_PREVIEW_AND_PRINT:S = 0x4s

.field public static final FSTYPE_RESTRICTED:S = 0x2s

.field public static final TAG:Ljava/lang/String; = "OS/2"

.field public static final WEIGHT_CLASS_BLACK:I = 0x384

.field public static final WEIGHT_CLASS_BOLD:I = 0x2bc

.field public static final WEIGHT_CLASS_EXTRA_BOLD:I = 0x320

.field public static final WEIGHT_CLASS_LIGHT:I = 0x12c

.field public static final WEIGHT_CLASS_MEDIUM:I = 0x1f4

.field public static final WEIGHT_CLASS_NORMAL:I = 0x190

.field public static final WEIGHT_CLASS_SEMI_BOLD:I = 0x258

.field public static final WEIGHT_CLASS_THIN:I = 0x64

.field public static final WEIGHT_CLASS_ULTRA_LIGHT:I = 0xc8

.field public static final WIDTH_CLASS_CONDENSED:I = 0x3

.field public static final WIDTH_CLASS_EXPANDED:I = 0x7

.field public static final WIDTH_CLASS_EXTRA_CONDENSED:I = 0x2

.field public static final WIDTH_CLASS_EXTRA_EXPANDED:I = 0x8

.field public static final WIDTH_CLASS_MEDIUM:I = 0x5

.field public static final WIDTH_CLASS_SEMI_CONDENSED:I = 0x4

.field public static final WIDTH_CLASS_SEMI_EXPANDED:I = 0x6

.field public static final WIDTH_CLASS_ULTRA_CONDENSED:I = 0x1

.field public static final WIDTH_CLASS_ULTRA_EXPANDED:I = 0x9


# instance fields
.field private achVendId:Ljava/lang/String;

.field private averageCharWidth:S

.field private codePageRange1:J

.field private codePageRange2:J

.field private familyClass:I

.field private firstCharIndex:I

.field private fsSelection:I

.field private fsType:S

.field private lastCharIndex:I

.field private panose:[B

.field private sCapHeight:I

.field private strikeoutPosition:S

.field private strikeoutSize:S

.field private subscriptXOffset:S

.field private subscriptXSize:S

.field private subscriptYOffset:S

.field private subscriptYSize:S

.field private superscriptXOffset:S

.field private superscriptXSize:S

.field private superscriptYOffset:S

.field private superscriptYSize:S

.field private sxHeight:I

.field private typoAscender:I

.field private typoDescender:I

.field private typoLineGap:I

.field private unicodeRange1:J

.field private unicodeRange2:J

.field private unicodeRange3:J

.field private unicodeRange4:J

.field private usBreakChar:I

.field private usDefaultChar:I

.field private usMaxContext:I

.field private version:I

.field private weightClass:I

.field private widthClass:I

.field private winAscent:I

.field private winDescent:I


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 2

    .line 224
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    const/16 p1, 0xa

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->panose:[B

    const-string p1, "XXXX"

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->achVendId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->codePageRange1:J

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->codePageRange2:J

    return-void
.end method


# virtual methods
.method public getAchVendId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->achVendId:Ljava/lang/String;

    return-object v0
.end method

.method public getAverageCharWidth()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->averageCharWidth:S

    return v0
.end method

.method public getBreakChar()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->usBreakChar:I

    return v0
.end method

.method public getCapHeight()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->sCapHeight:I

    return v0
.end method

.method public getCodePageRange1()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->codePageRange1:J

    return-wide v0
.end method

.method public getCodePageRange2()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->codePageRange2:J

    return-wide v0
.end method

.method public getDefaultChar()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->usDefaultChar:I

    return v0
.end method

.method public getFamilyClass()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->familyClass:I

    return v0
.end method

.method public getFirstCharIndex()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->firstCharIndex:I

    return v0
.end method

.method public getFsSelection()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->fsSelection:I

    return v0
.end method

.method public getFsType()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->fsType:S

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->sxHeight:I

    return v0
.end method

.method public getLastCharIndex()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->lastCharIndex:I

    return v0
.end method

.method public getMaxContext()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->usMaxContext:I

    return v0
.end method

.method public getPanose()[B
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->panose:[B

    return-object v0
.end method

.method public getStrikeoutPosition()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->strikeoutPosition:S

    return v0
.end method

.method public getStrikeoutSize()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->strikeoutSize:S

    return v0
.end method

.method public getSubscriptXOffset()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->subscriptXOffset:S

    return v0
.end method

.method public getSubscriptXSize()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->subscriptXSize:S

    return v0
.end method

.method public getSubscriptYOffset()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->subscriptYOffset:S

    return v0
.end method

.method public getSubscriptYSize()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->subscriptYSize:S

    return v0
.end method

.method public getSuperscriptXOffset()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->superscriptXOffset:S

    return v0
.end method

.method public getSuperscriptXSize()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->superscriptXSize:S

    return v0
.end method

.method public getSuperscriptYOffset()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->superscriptYOffset:S

    return v0
.end method

.method public getSuperscriptYSize()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->superscriptYSize:S

    return v0
.end method

.method public getTypoAscender()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->typoAscender:I

    return v0
.end method

.method public getTypoDescender()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->typoDescender:I

    return v0
.end method

.method public getTypoLineGap()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->typoLineGap:I

    return v0
.end method

.method public getUnicodeRange1()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->unicodeRange1:J

    return-wide v0
.end method

.method public getUnicodeRange2()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->unicodeRange2:J

    return-wide v0
.end method

.method public getUnicodeRange3()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->unicodeRange3:J

    return-wide v0
.end method

.method public getUnicodeRange4()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->unicodeRange4:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->version:I

    return v0
.end method

.method public getWeightClass()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->weightClass:I

    return v0
.end method

.method public getWidthClass()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->widthClass:I

    return v0
.end method

.method public getWinAscent()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->winAscent:I

    return v0
.end method

.method public getWinDescent()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->winDescent:I

    return v0
.end method

.method read(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "PdfBox-Android"

    .line 794
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->version:I

    .line 795
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->averageCharWidth:S

    .line 796
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->weightClass:I

    .line 797
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->widthClass:I

    .line 798
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->fsType:S

    .line 799
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->subscriptXSize:S

    .line 800
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->subscriptYSize:S

    .line 801
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->subscriptXOffset:S

    .line 802
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->subscriptYOffset:S

    .line 803
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->superscriptXSize:S

    .line 804
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->superscriptYSize:S

    .line 805
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->superscriptXOffset:S

    .line 806
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->superscriptYOffset:S

    .line 807
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->strikeoutSize:S

    .line 808
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->strikeoutPosition:S

    .line 809
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->familyClass:I

    const/16 v0, 0xa

    .line 810
    invoke-virtual {p2, v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->panose:[B

    .line 811
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->unicodeRange1:J

    .line 812
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->unicodeRange2:J

    .line 813
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->unicodeRange3:J

    .line 814
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->unicodeRange4:J

    const/4 v0, 0x4

    .line 815
    invoke-virtual {p2, v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->achVendId:Ljava/lang/String;

    .line 816
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->fsSelection:I

    .line 817
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->firstCharIndex:I

    .line 818
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->lastCharIndex:I

    const/4 v0, 0x1

    .line 821
    :try_start_0
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v1

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->typoAscender:I

    .line 822
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v1

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->typoDescender:I

    .line 823
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v1

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->typoLineGap:I

    .line 824
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->winAscent:I

    .line 825
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->winDescent:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    iget v1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->version:I

    if-lt v1, v0, :cond_0

    .line 837
    :try_start_1
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->codePageRange1:J

    .line 838
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->codePageRange2:J
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 v1, 0x0

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->version:I

    const-string v1, "Could not read all expected parts of version >= 1, setting version to 0"

    .line 843
    invoke-static {p1, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 844
    iput-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->initialized:Z

    return-void

    :cond_0
    :goto_0
    iget v1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->version:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 852
    :try_start_2
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v1

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->sxHeight:I

    .line 853
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v1

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->sCapHeight:I

    .line 854
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->usDefaultChar:I

    .line 855
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->usBreakChar:I

    .line 856
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p2

    iput p2, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->usMaxContext:I
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->version:I

    const-string v1, "Could not read all expected parts of version >= 2, setting version to 1"

    .line 861
    invoke-static {p1, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 862
    iput-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->initialized:Z

    return-void

    .line 866
    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->initialized:Z

    return-void

    :catch_2
    const-string p2, "EOF, probably some legacy TrueType font"

    .line 829
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iput-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->initialized:Z

    return-void
.end method

.method public setAchVendId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->achVendId:Ljava/lang/String;

    return-void
.end method

.method public setAverageCharWidth(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->averageCharWidth:S

    return-void
.end method

.method public setCodePageRange1(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->codePageRange1:J

    return-void
.end method

.method public setCodePageRange2(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->codePageRange2:J

    return-void
.end method

.method public setFamilyClass(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->familyClass:I

    return-void
.end method

.method public setFirstCharIndex(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->firstCharIndex:I

    return-void
.end method

.method public setFsSelection(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->fsSelection:I

    return-void
.end method

.method public setFsType(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->fsType:S

    return-void
.end method

.method public setLastCharIndex(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->lastCharIndex:I

    return-void
.end method

.method public setPanose([B)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->panose:[B

    return-void
.end method

.method public setStrikeoutPosition(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->strikeoutPosition:S

    return-void
.end method

.method public setStrikeoutSize(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->strikeoutSize:S

    return-void
.end method

.method public setSubscriptXOffset(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->subscriptXOffset:S

    return-void
.end method

.method public setSubscriptXSize(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->subscriptXSize:S

    return-void
.end method

.method public setSubscriptYOffset(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->subscriptYOffset:S

    return-void
.end method

.method public setSubscriptYSize(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->subscriptYSize:S

    return-void
.end method

.method public setSuperscriptXOffset(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->superscriptXOffset:S

    return-void
.end method

.method public setSuperscriptXSize(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->superscriptXSize:S

    return-void
.end method

.method public setSuperscriptYOffset(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->superscriptYOffset:S

    return-void
.end method

.method public setSuperscriptYSize(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->superscriptYSize:S

    return-void
.end method

.method public setTypoAscender(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->typoAscender:I

    return-void
.end method

.method public setTypoDescender(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->typoDescender:I

    return-void
.end method

.method public setTypoLineGap(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->typoLineGap:I

    return-void
.end method

.method public setUnicodeRange1(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->unicodeRange1:J

    return-void
.end method

.method public setUnicodeRange2(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->unicodeRange2:J

    return-void
.end method

.method public setUnicodeRange3(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->unicodeRange3:J

    return-void
.end method

.method public setUnicodeRange4(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->unicodeRange4:J

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->version:I

    return-void
.end method

.method public setWeightClass(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->weightClass:I

    return-void
.end method

.method public setWidthClass(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->widthClass:I

    return-void
.end method

.method public setWinAscent(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->winAscent:I

    return-void
.end method

.method public setWinDescent(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->winDescent:I

    return-void
.end method
