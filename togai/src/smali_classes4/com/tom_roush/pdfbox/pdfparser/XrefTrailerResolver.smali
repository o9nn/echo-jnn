.class public Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;
.super Ljava/lang/Object;
.source "XrefTrailerResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;,
        Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;
    }
.end annotation


# instance fields
.field private final bytePosToXrefMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;",
            ">;"
        }
    .end annotation
.end field

.field private curXrefTrailerObj:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

.field private resolvedXrefTrailer:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->bytePosToXrefMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->curXrefTrailerObj:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->resolvedXrefTrailer:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    return-void
.end method


# virtual methods
.method public getContainedObjectNumbers(I)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->resolvedXrefTrailer:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 340
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    neg-int p1, p1

    int-to-long v1, p1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->resolvedXrefTrailer:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    .line 343
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->access$200(Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 345
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-nez v4, :cond_1

    .line 347
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSObjectKey;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getCurrentTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->curXrefTrailerObj:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    .line 213
    iget-object v0, v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public final getFirstTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->bytePosToXrefMap:Ljava/util/Map;

    .line 110
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->bytePosToXrefMap:Ljava/util/Map;

    .line 114
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->bytePosToXrefMap:Ljava/util/Map;

    .line 116
    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    iget-object v0, v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public final getLastTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->bytePosToXrefMap:Ljava/util/Map;

    .line 126
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->bytePosToXrefMap:Ljava/util/Map;

    .line 130
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->bytePosToXrefMap:Ljava/util/Map;

    .line 132
    invoke-interface {v1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    iget-object v0, v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->resolvedXrefTrailer:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    :goto_0
    return-object v0
.end method

.method public final getTrailerCount()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->bytePosToXrefMap:Ljava/util/Map;

    .line 142
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getXrefTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSObjectKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->resolvedXrefTrailer:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 318
    :cond_0
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->access$200(Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getXrefType()Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->resolvedXrefTrailer:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->access$100(Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;)Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public nextXrefObj(JLcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;)V
    .locals 2

    .line 152
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;-><init>(Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$1;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->curXrefTrailerObj:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->bytePosToXrefMap:Ljava/util/Map;

    .line 153
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->curXrefTrailerObj:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->curXrefTrailerObj:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    .line 154
    invoke-static {p1, p3}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->access$102(Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;)Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;

    return-void
.end method

.method protected reset()V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->bytePosToXrefMap:Ljava/util/Map;

    .line 359
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    .line 361
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->reset()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->curXrefTrailerObj:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->resolvedXrefTrailer:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    return-void
.end method

.method public setStartxref(J)V
    .locals 5

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->resolvedXrefTrailer:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    const-string v1, "PdfBox-Android"

    if-eqz v0, :cond_0

    const-string p1, "Method must be called only ones with last startxref value."

    .line 234
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 238
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;-><init>(Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$1;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->resolvedXrefTrailer:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    .line 239
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v2, v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->bytePosToXrefMap:Ljava/util/Map;

    .line 241
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    .line 242
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_1

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Did not found XRef object at specified startxref position "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->bytePosToXrefMap:Ljava/util/Map;

    .line 250
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->resolvedXrefTrailer:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    .line 256
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->access$100(Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;)Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->access$102(Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;)Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XRefType;

    .line 259
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_2
    iget-object p1, v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz p1, :cond_5

    .line 262
    iget-object p1, v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->PREV:Lcom/tom_roush/pdfbox/cos/COSName;

    const-wide/16 v3, -0x1

    invoke-virtual {p1, p2, v3, v4}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getLong(Lcom/tom_roush/pdfbox/cos/COSName;J)J

    move-result-wide p1

    cmp-long v0, p1, v3

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->bytePosToXrefMap:Ljava/util/Map;

    .line 268
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    if-nez v0, :cond_4

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Did not found XRef object pointed to by \'Prev\' key at position "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->bytePosToXrefMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    if-lt p1, p2, :cond_2

    .line 283
    :cond_5
    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 287
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->bytePosToXrefMap:Ljava/util/Map;

    .line 289
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    .line 290
    iget-object v0, p2, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->resolvedXrefTrailer:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    .line 292
    iget-object v0, v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iget-object v1, p2, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->addAll(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    :cond_6
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->resolvedXrefTrailer:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    .line 294
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->access$200(Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->access$200(Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public setTrailer(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->curXrefTrailerObj:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    if-nez v0, :cond_0

    const-string p1, "PdfBox-Android"

    const-string v0, "Cannot add trailer because XRef start was not signalled."

    .line 199
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 202
    :cond_0
    iput-object p1, v0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->trailer:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public setXRef(Lcom/tom_roush/pdfbox/cos/COSObjectKey;J)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->curXrefTrailerObj:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    if-nez v0, :cond_0

    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot add XRef entry for \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObjectKey;->getNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' because XRef start was not signalled."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PdfBox-Android"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 183
    :cond_0
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->access$200(Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver;->curXrefTrailerObj:Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;

    .line 185
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;->access$200(Lcom/tom_roush/pdfbox/pdfparser/XrefTrailerResolver$XrefTrailerObj;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
