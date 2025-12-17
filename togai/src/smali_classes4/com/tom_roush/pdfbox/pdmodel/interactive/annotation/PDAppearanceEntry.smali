.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;
.super Ljava/lang/Object;
.source "PDAppearanceEntry.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private entry:Lcom/tom_roush/pdfbox/cos/COSBase;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->entry:Lcom/tom_roush/pdfbox/cos/COSBase;

    return-void
.end method


# virtual methods
.method public getAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->isStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->entry:Lcom/tom_roush/pdfbox/cos/COSBase;

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    return-object v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This entry is not an appearance stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->entry:Lcom/tom_roush/pdfbox/cos/COSBase;

    return-object v0
.end method

.method public getSubDictionary()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->isSubDictionary()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->entry:Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 100
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 103
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 105
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    .line 108
    instance-of v5, v4, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v5, :cond_0

    .line 110
    new-instance v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v5, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 114
    :cond_1
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;-><init>(Ljava/util/Map;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v2

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This entry is not an appearance subdictionary"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isStream()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->entry:Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 71
    instance-of v0, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    return v0
.end method

.method public isSubDictionary()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->entry:Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 63
    instance-of v0, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
