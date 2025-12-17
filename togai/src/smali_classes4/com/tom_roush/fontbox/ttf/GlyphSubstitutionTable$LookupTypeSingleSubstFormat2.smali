.class Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat2;
.super Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupSubTable;
.source "GlyphSubstitutionTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LookupTypeSingleSubstFormat2"
.end annotation


# instance fields
.field substituteGlyphIDs:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 696
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupSubTable;-><init>()V

    return-void
.end method


# virtual methods
.method doSubstitution(II)I
    .locals 0

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat2;->substituteGlyphIDs:[I

    .line 703
    aget p1, p1, p2

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 709
    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat2;->substFormat:I

    .line 711
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat2;->substituteGlyphIDs:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "LookupTypeSingleSubstFormat2[substFormat=%d,substituteGlyphIDs=%s]"

    .line 709
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
