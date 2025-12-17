.class public Lcom/tom_roush/fontbox/ttf/SubstitutingCmapLookup;
.super Ljava/lang/Object;
.source "SubstitutingCmapLookup.java"

# interfaces
.implements Lcom/tom_roush/fontbox/ttf/CmapLookup;


# instance fields
.field private final cmap:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

.field private final enabledFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gsub:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;


# direct methods
.method public constructor <init>(Lcom/tom_roush/fontbox/ttf/CmapSubtable;Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/fontbox/ttf/CmapSubtable;",
            "Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/SubstitutingCmapLookup;->cmap:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    iput-object p2, p0, Lcom/tom_roush/fontbox/ttf/SubstitutingCmapLookup;->gsub:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;

    iput-object p3, p0, Lcom/tom_roush/fontbox/ttf/SubstitutingCmapLookup;->enabledFeatures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCharCodes(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/SubstitutingCmapLookup;->cmap:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/SubstitutingCmapLookup;->gsub:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;

    .line 51
    invoke-virtual {v1, p1}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->getUnsubstitution(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getCharCodes(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getGlyphId(I)I
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/SubstitutingCmapLookup;->cmap:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    .line 43
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getGlyphId(I)I

    move-result v0

    .line 44
    invoke-static {p1}, Lcom/tom_roush/fontbox/ttf/OpenTypeScript;->getScriptTags(I)[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/SubstitutingCmapLookup;->gsub:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/SubstitutingCmapLookup;->enabledFeatures:Ljava/util/List;

    .line 45
    invoke-virtual {v1, v0, p1, v2}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->getSubstitution(I[Ljava/lang/String;Ljava/util/List;)I

    move-result p1

    return p1
.end method
