.class Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$1;
.super Ljava/lang/Object;
.source "GlyphSubstitutionTable.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->getFeatureRecords(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;

.field final synthetic val$enabledFeatures:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$1;->this$0:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;

    iput-object p2, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$1;->val$enabledFeatures:Ljava/util/List;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;)I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$1;->val$enabledFeatures:Ljava/util/List;

    .line 448
    iget-object p1, p1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;->featureTag:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$1;->val$enabledFeatures:Ljava/util/List;

    .line 449
    iget-object p2, p2, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;->featureTag:Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 444
    check-cast p1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;

    check-cast p2, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$1;->compare(Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;)I

    move-result p1

    return p1
.end method
