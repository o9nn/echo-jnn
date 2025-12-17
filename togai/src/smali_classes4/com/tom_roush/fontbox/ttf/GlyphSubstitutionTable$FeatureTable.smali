.class Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureTable;
.super Ljava/lang/Object;
.source "GlyphSubstitutionTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeatureTable"
.end annotation


# instance fields
.field lookupListIndices:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureTable;->lookupListIndices:[I

    .line 650
    array-length v0, v0

    .line 651
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FeatureTable[lookupListIndiciesCount=%d]"

    .line 650
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
