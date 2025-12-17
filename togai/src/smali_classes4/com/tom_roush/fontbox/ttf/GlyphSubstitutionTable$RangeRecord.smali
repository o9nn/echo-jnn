.class Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;
.super Ljava/lang/Object;
.source "GlyphSubstitutionTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeRecord"
.end annotation


# instance fields
.field endGlyphID:I

.field startCoverageIndex:I

.field startGlyphID:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;->startGlyphID:I

    .line 774
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;->endGlyphID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;->startCoverageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "RangeRecord[startGlyphID=%d,endGlyphID=%d,startCoverageIndex=%d]"

    .line 773
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
