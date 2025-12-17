.class public Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;
.super Lcom/tom_roush/fontbox/ttf/TTFTable;
.source "GlyphSubstitutionTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;,
        Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat2;,
        Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat1;,
        Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTable;,
        Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat2;,
        Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat1;,
        Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupSubTable;,
        Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;,
        Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureTable;,
        Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;,
        Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;,
        Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysRecord;,
        Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;,
        Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptRecord;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GSUB"


# instance fields
.field private featureList:[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;

.field private lastUsedSupportedScript:Ljava/lang/String;

.field private final lookupCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lookupList:[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;

.field private final reverseLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private scriptList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->lookupCache:Ljava/util/Map;

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->reverseLookup:Ljava/util/Map;

    return-void
.end method

.method private applyFeature(Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;I)I
    .locals 6

    .line 484
    iget-object v0, p1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;->featureTable:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureTable;

    iget-object v0, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureTable;->lookupListIndices:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    iget-object v4, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->lookupList:[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;

    .line 486
    aget-object v3, v4, v3

    .line 487
    iget v4, v3, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;->lookupType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 489
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Skipping GSUB feature \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;->featureTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' because it requires unsupported lookup table type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v3, v3, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;->lookupType:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PdfBox-Android"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 493
    :cond_0
    invoke-direct {p0, v3, p2}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->doLookup(Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;I)I

    move-result p2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private containsFeature(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 460
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;

    .line 462
    iget-object v0, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;->featureTag:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private doLookup(Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;I)I
    .locals 4

    .line 500
    iget-object p1, p1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;->subTables:[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupSubTable;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 502
    iget-object v3, v2, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupSubTable;->coverageTable:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTable;

    invoke-virtual {v3, p2}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTable;->getCoverageIndex(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 505
    invoke-virtual {v2, p2, v3}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupSubTable;->doSubstitution(II)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private getFeatureRecords(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;",
            ">;"
        }
    .end annotation

    .line 411
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 415
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;

    .line 418
    iget v2, v1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;->requiredFeatureIndex:I

    const v3, 0xffff

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->featureList:[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;

    .line 419
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 421
    aget-object v2, v3, v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_2
    iget-object v1, v1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;->featureIndices:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    iget-object v5, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->featureList:[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;

    .line 425
    array-length v6, v5

    if-ge v4, v6, :cond_4

    if-eqz p2, :cond_3

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;->featureTag:Ljava/lang/String;

    .line 427
    invoke-interface {p2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->featureList:[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;

    .line 429
    aget-object v4, v5, v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const-string p1, "vrt2"

    .line 436
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->containsFeature(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "vert"

    .line 438
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->removeFeature(Ljava/util/List;Ljava/lang/String;)V

    :cond_6
    if-eqz p2, :cond_7

    .line 441
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_7

    .line 443
    new-instance p1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$1;

    invoke-direct {p1, p0, p2}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$1;-><init>(Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;Ljava/util/List;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_7
    return-object v0
.end method

.method private getLangSysTables(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;",
            ">;"
        }
    .end annotation

    .line 378
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->scriptList:Ljava/util/LinkedHashMap;

    .line 379
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;

    if-eqz p1, :cond_1

    .line 382
    iget-object v0, p1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;->defaultLangSysTable:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;

    if-nez v0, :cond_0

    .line 384
    iget-object p1, p1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;->langSysTables:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 388
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;->langSysTables:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 389
    iget-object p1, p1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;->defaultLangSysTable:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method private removeFeature(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 472
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 473
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;

    iget-object v0, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;->featureTag:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private selectScriptTag([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 346
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 348
    aget-object v0, p1, v2

    const-string v1, "Inherited"

    .line 349
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DFLT"

    .line 350
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->scriptList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->lastUsedSupportedScript:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->scriptList:Ljava/util/LinkedHashMap;

    .line 356
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->lastUsedSupportedScript:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->lastUsedSupportedScript:Ljava/lang/String;

    return-object p1

    .line 363
    :cond_2
    array-length v0, p1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->scriptList:Ljava/util/LinkedHashMap;

    .line 365
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v3, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->lastUsedSupportedScript:Ljava/lang/String;

    return-object v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_4
    aget-object p1, p1, v2

    return-object p1
.end method


# virtual methods
.method public getSubstitution(I[Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->lookupCache:Ljava/util/Map;

    .line 530
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 536
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 538
    :cond_1
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->selectScriptTag([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 539
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->getLangSysTables(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p2

    .line 540
    invoke-direct {p0, p2, p3}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->getFeatureRecords(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 542
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;

    .line 544
    invoke-direct {p0, v0, p3}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->applyFeature(Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;I)I

    move-result p3

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->lookupCache:Ljava/util/Map;

    .line 546
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->reverseLookup:Ljava/util/Map;

    .line 547
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p3
.end method

.method public getUnsubstitution(I)I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->reverseLookup:Ljava/util/Map;

    .line 562
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to un-substitute a never-before-seen gid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 568
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method read(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->getCurrentPosition()J

    move-result-wide v0

    .line 63
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 64
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p1

    .line 65
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v2

    .line 66
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v3

    .line 67
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v4

    int-to-long v5, p1

    const-wide/16 v7, 0x1

    cmp-long p1, v5, v7

    if-nez p1, :cond_0

    .line 72
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    :cond_0
    int-to-long v5, v2

    add-long/2addr v5, v0

    .line 75
    invoke-virtual {p0, p2, v5, v6}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->readScriptList(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->scriptList:Ljava/util/LinkedHashMap;

    int-to-long v2, v3

    add-long/2addr v2, v0

    .line 76
    invoke-virtual {p0, p2, v2, v3}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->readFeatureList(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->featureList:[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;

    int-to-long v2, v4

    add-long/2addr v0, v2

    .line 77
    invoke-virtual {p0, p2, v0, v1}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->readLookupList(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->lookupList:[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;

    return-void
.end method

.method readCoverageTable(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    .line 302
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 319
    new-instance v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat2;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat2;-><init>()V

    .line 320
    iput p2, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat2;->coverageFormat:I

    .line 321
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p2

    .line 322
    new-array v1, p2, [Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;

    iput-object v1, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat2;->rangeRecords:[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;

    :goto_0
    if-ge p3, p2, :cond_0

    .line 325
    iget-object v1, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat2;->rangeRecords:[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;

    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->readRangeRecord(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;

    move-result-object v2

    aput-object v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 332
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown coverage format: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 307
    :cond_2
    new-instance v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat1;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat1;-><init>()V

    .line 308
    iput p2, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat1;->coverageFormat:I

    .line 309
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p2

    .line 310
    new-array v1, p2, [I

    iput-object v1, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat1;->glyphArray:[I

    :goto_1
    if-ge p3, p2, :cond_3

    .line 313
    iget-object v1, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTableFormat1;->glyphArray:[I

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v2

    aput v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method readFeatureList(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    .line 164
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    .line 165
    new-array v1, v0, [Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;

    .line 166
    new-array v2, v0, [I

    const-string v3, ""

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    .line 170
    new-instance v6, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;

    invoke-direct {v6}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;-><init>()V

    const/4 v7, 0x4

    .line 171
    invoke-virtual {p1, v7}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;->featureTag:Ljava/lang/String;

    if-lez v5, :cond_1

    .line 172
    iget-object v7, v6, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;->featureTag:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_1

    .line 176
    iget-object v7, v6, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;->featureTag:Ljava/lang/String;

    const-string v8, "\\w{4}"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    const-string v9, " < "

    const-string v10, "FeatureRecord array not alphabetically sorted by FeatureTag: "

    const-string v11, "PdfBox-Android"

    if-eqz v7, :cond_0

    invoke-virtual {v3, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;->featureTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 185
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v6, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;->featureTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v4, [Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;

    return-object p1

    .line 190
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v3

    aput v3, v2, v5

    .line 191
    aput-object v6, v1, v5

    .line 192
    iget-object v3, v6, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;->featureTag:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v4, v0, :cond_3

    .line 196
    aget-object v3, v1, v4

    aget v5, v2, v4

    int-to-long v5, v5

    add-long/2addr v5, p2

    invoke-virtual {p0, p1, v5, v6}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->readFeatureTable(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureTable;

    move-result-object v5

    iput-object v5, v3, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureRecord;->featureTable:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureTable;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method readFeatureTable(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureTable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    .line 204
    new-instance p2, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureTable;

    invoke-direct {p2}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureTable;-><init>()V

    .line 206
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 207
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p3

    .line 208
    new-array v0, p3, [I

    iput-object v0, p2, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureTable;->lookupListIndices:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 211
    iget-object v1, p2, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$FeatureTable;->lookupListIndices:[I

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method readLangSysTable(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    .line 148
    new-instance p2, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;

    invoke-direct {p2}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;-><init>()V

    .line 150
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    .line 151
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p3

    iput p3, p2, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;->requiredFeatureIndex:I

    .line 152
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p3

    .line 153
    new-array v0, p3, [I

    iput-object v0, p2, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;->featureIndices:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 156
    iget-object v1, p2, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;->featureIndices:[I

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method readLookupList(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    .line 219
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    .line 220
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 223
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    :cond_0
    new-array v3, v0, [Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;

    :goto_1
    if-ge v2, v0, :cond_1

    .line 228
    aget v4, v1, v2

    int-to-long v4, v4

    add-long/2addr v4, p2

    invoke-virtual {p0, p1, v4, v5}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->readLookupTable(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method readLookupSubTable(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupSubTable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    .line 268
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 282
    new-instance v1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat2;

    invoke-direct {v1}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat2;-><init>()V

    .line 283
    iput v0, v1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat2;->substFormat:I

    .line 284
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    .line 285
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v2

    .line 286
    new-array v3, v2, [I

    iput-object v3, v1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat2;->substituteGlyphIDs:[I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 289
    iget-object v4, v1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat2;->substituteGlyphIDs:[I

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    int-to-long v2, v0

    add-long/2addr p2, v2

    .line 291
    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->readCoverageTable(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTable;

    move-result-object p1

    iput-object p1, v1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat2;->coverageTable:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTable;

    return-object v1

    .line 295
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown substFormat: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :cond_2
    new-instance v1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat1;

    invoke-direct {v1}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat1;-><init>()V

    .line 274
    iput v0, v1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat1;->substFormat:I

    .line 275
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    .line 276
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v2

    iput-short v2, v1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat1;->deltaGlyphID:S

    int-to-long v2, v0

    add-long/2addr p2, v2

    .line 277
    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->readCoverageTable(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTable;

    move-result-object p1

    iput-object p1, v1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTypeSingleSubstFormat1;->coverageTable:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$CoverageTable;

    return-object v1
.end method

.method readLookupTable(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    .line 236
    new-instance v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;-><init>()V

    .line 237
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;->lookupType:I

    .line 238
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;->lookupFlag:I

    .line 239
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v1

    .line 240
    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 245
    :cond_0
    iget v4, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;->lookupFlag:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1

    .line 247
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v4

    iput v4, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;->markFilteringSet:I

    .line 249
    :cond_1
    new-array v4, v1, [Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupSubTable;

    iput-object v4, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;->subTables:[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupSubTable;

    .line 250
    iget v4, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;->lookupType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Type "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;->lookupType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " GSUB lookup table is not supported and will be ignored"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PdfBox-Android"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_1
    if-ge v3, v1, :cond_3

    .line 255
    iget-object v4, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupTable;->subTables:[Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupSubTable;

    aget v5, v2, v3

    int-to-long v5, v5

    add-long/2addr v5, p2

    invoke-virtual {p0, p1, v5, v6}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->readLookupSubTable(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LookupSubTable;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0
.end method

.method readRangeRecord(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    new-instance v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;-><init>()V

    .line 574
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;->startGlyphID:I

    .line 575
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;->endGlyphID:I

    .line 576
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p1

    iput p1, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$RangeRecord;->startCoverageIndex:I

    return-object v0
.end method

.method readScriptList(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)Ljava/util/LinkedHashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/fontbox/ttf/TTFDataStream;",
            "J)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    .line 83
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v0

    .line 84
    new-array v1, v0, [Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptRecord;

    .line 85
    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 88
    new-instance v5, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptRecord;

    invoke-direct {v5}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptRecord;-><init>()V

    const/4 v6, 0x4

    .line 89
    invoke-virtual {p1, v6}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptRecord;->scriptTag:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v6

    aput v6, v2, v4

    .line 91
    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_1

    .line 95
    aget-object v5, v1, v4

    aget v6, v2, v4

    int-to-long v6, v6

    add-long/2addr v6, p2

    invoke-virtual {p0, p1, v6, v7}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->readScriptTable(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;

    move-result-object v6

    iput-object v6, v5, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptRecord;->scriptTable:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 97
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    :goto_2
    if-ge v3, v0, :cond_2

    .line 98
    aget-object p2, v1, v3

    .line 100
    iget-object p3, p2, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptRecord;->scriptTag:Ljava/lang/String;

    iget-object p2, p2, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptRecord;->scriptTable:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;

    invoke-virtual {p1, p3, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object p1
.end method

.method readScriptTable(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    .line 108
    new-instance v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;-><init>()V

    .line 109
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v1

    .line 110
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v2

    .line 111
    new-array v3, v2, [Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysRecord;

    .line 112
    new-array v4, v2, [I

    const-string v5, ""

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v2, :cond_2

    .line 116
    new-instance v8, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysRecord;

    invoke-direct {v8}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysRecord;-><init>()V

    const/4 v9, 0x4

    .line 117
    invoke-virtual {p1, v9}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysRecord;->langSysTag:Ljava/lang/String;

    if-lez v7, :cond_1

    .line 118
    iget-object v9, v8, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysRecord;->langSysTag:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "LangSysRecords not alphabetically sorted by LangSys tag: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v8, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysRecord;->langSysTag:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " <= "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v5

    aput v5, v4, v7

    .line 126
    aput-object v8, v3, v7

    .line 127
    iget-object v5, v8, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysRecord;->langSysTag:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    int-to-long v7, v1

    add-long/2addr v7, p2

    .line 131
    invoke-virtual {p0, p1, v7, v8}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->readLangSysTable(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;

    move-result-object v1

    iput-object v1, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;->defaultLangSysTable:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;

    :cond_3
    move v1, v6

    :goto_2
    if-ge v1, v2, :cond_4

    .line 135
    aget-object v5, v3, v1

    aget v7, v4, v1

    int-to-long v7, v7

    add-long/2addr v7, p2

    invoke-virtual {p0, p1, v7, v8}, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;->readLangSysTable(Lcom/tom_roush/fontbox/ttf/TTFDataStream;J)Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;

    move-result-object v7

    iput-object v7, v5, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysRecord;->langSysTable:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 137
    :cond_4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object p1, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;->langSysTables:Ljava/util/LinkedHashMap;

    :goto_3
    if-ge v6, v2, :cond_5

    .line 138
    aget-object p1, v3, v6

    .line 140
    iget-object p2, v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$ScriptTable;->langSysTables:Ljava/util/LinkedHashMap;

    iget-object p3, p1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysRecord;->langSysTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysRecord;->langSysTable:Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable$LangSysTable;

    invoke-virtual {p2, p3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    return-object v0
.end method
