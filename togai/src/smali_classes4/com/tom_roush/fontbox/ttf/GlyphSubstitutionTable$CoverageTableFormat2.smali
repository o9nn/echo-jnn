.class Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat2;
.super Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTable;
.source "GlyphSubstitutionTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CoverageTableFormat2"
.end annotation


# instance fields
.field rangeRecords:[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 740
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTable;-><init>()V

    return-void
.end method


# virtual methods
.method getCoverageIndex(I)I
    .locals 5

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat2;->rangeRecords:[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;

    .line 747
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 749
    iget v4, v3, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;->startGlyphID:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;->endGlyphID:I

    if-gt p1, v4, :cond_0

    .line 751
    iget v0, v3, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;->startCoverageIndex:I

    add-int/2addr v0, p1

    iget p1, v3, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;->startGlyphID:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 760
    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat2;->coverageFormat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CoverageTableFormat2[coverageFormat=%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
