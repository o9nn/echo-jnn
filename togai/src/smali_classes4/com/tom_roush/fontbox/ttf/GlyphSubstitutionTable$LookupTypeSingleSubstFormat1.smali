.class Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat1;
.super Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupSubTable;
.source "GlyphSubstitutionTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LookupTypeSingleSubstFormat1"
.end annotation


# instance fields
.field deltaGlyphID:S


# direct methods
.method constructor <init>()V
    .locals 0

    .line 678
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupSubTable;-><init>()V

    return-void
.end method


# virtual methods
.method doSubstitution(II)I
    .locals 0

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-short p2, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat1;->deltaGlyphID:S

    add-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 691
    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat1;->substFormat:I

    .line 692
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-short v1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat1;->deltaGlyphID:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "LookupTypeSingleSubstFormat1[substFormat=%d,deltaGlyphID=%d]"

    .line 691
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
