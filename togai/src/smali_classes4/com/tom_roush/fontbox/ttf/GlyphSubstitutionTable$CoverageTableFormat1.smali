.class Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat1;
.super Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTable;
.source "GlyphSubstitutionTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CoverageTableFormat1"
.end annotation


# instance fields
.field glyphArray:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 722
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTable;-><init>()V

    return-void
.end method


# virtual methods
.method getCoverageIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat1;->glyphArray:[I

    .line 729
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 735
    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat1;->coverageFormat:I

    .line 736
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat1;->glyphArray:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CoverageTableFormat1[coverageFormat=%d,glyphArray=%s]"

    .line 735
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
