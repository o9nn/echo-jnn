.class public final Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;
.super Ljava/lang/Object;
.source "FontHelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/rive/runtime/kotlin/fonts/FontHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontHelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontHelpers.kt\napp/rive/runtime/kotlin/fonts/FontHelper$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,622:1\n1#2:623\n526#3:624\n511#3,6:625\n453#3:645\n403#3:646\n494#3,7:653\n1054#4:631\n1360#4:632\n1446#4,5:633\n288#4,2:638\n1238#4,2:647\n766#4:649\n857#4,2:650\n1241#4:652\n179#5,2:640\n179#5,2:642\n215#6:644\n216#6:660\n*S KotlinDebug\n*F\n+ 1 FontHelpers.kt\napp/rive/runtime/kotlin/fonts/FontHelper$Companion\n*L\n139#1:624\n139#1:625,6\n217#1:645\n217#1:646\n219#1:653,7\n144#1:631\n147#1:632\n147#1:633,5\n148#1:638,2\n217#1:647,2\n218#1:649\n218#1:650,2\n217#1:652\n170#1:640,2\n201#1:642,2\n215#1:644\n215#1:660\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00062\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J/\u0010\t\u001a\u0004\u0018\u00010\n2\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00062\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0000\u00a2\u0006\u0002\u0008\rJ\u0014\u0010\u000e\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\nJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0012\u001a\u00020\nJ\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "filterNonExistingFonts",
        "",
        "Lapp/rive/runtime/kotlin/fonts/Fonts$Family;",
        "fontFamilies",
        "findMatch",
        "Lapp/rive/runtime/kotlin/fonts/Fonts$Font;",
        "opts",
        "Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;",
        "findMatch$kotlin_release",
        "getFallbackFont",
        "getFallbackFontBytes",
        "",
        "getFontBytes",
        "font",
        "getFontFile",
        "Ljava/io/File;",
        "getSystemFonts",
        "kotlin_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;-><init>()V

    return-void
.end method

.method private final filterNonExistingFonts(Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Family;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Family;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 644
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;

    .line 217
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;->getFonts()Ljava/util/Map;

    move-result-object v3

    .line 645
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    .line 646
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 647
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 648
    check-cast v5, Ljava/util/Map$Entry;

    .line 646
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 217
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 218
    check-cast v5, Ljava/lang/Iterable;

    .line 649
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 650
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    .line 218
    sget-object v10, Lapp/rive/runtime/kotlin/fonts/FontHelper;->Companion:Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;

    invoke-virtual {v10, v9}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;->getFontFile(Lapp/rive/runtime/kotlin/fonts/Fonts$Font;)Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 650
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 651
    :cond_2
    check-cast v7, Ljava/util/List;

    .line 648
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 653
    :cond_3
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 654
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 655
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 219
    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    .line 656
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 659
    :cond_5
    check-cast v3, Ljava/util/Map;

    .line 221
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 222
    new-instance v4, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;

    .line 224
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 225
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;->getLang()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-direct {v4, v2, v5, v1, v3}, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method public static synthetic findMatch$kotlin_release$default(Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;Ljava/util/Map;Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;ILjava/lang/Object;)Lapp/rive/runtime/kotlin/fonts/Fonts$Font;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 126
    :cond_0
    invoke-virtual {p0, p1, p2}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;->findMatch$kotlin_release(Ljava/util/Map;Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;)Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getFallbackFont$default(Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;ILjava/lang/Object;)Lapp/rive/runtime/kotlin/fonts/Fonts$Font;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 115
    :cond_0
    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;->getFallbackFont(Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;)Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getFallbackFontBytes$default(Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;ILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 248
    :cond_0
    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;->getFallbackFontBytes(Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final findMatch$kotlin_release(Ljava/util/Map;Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;)Lapp/rive/runtime/kotlin/fonts/Fonts$Font;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Family;",
            ">;",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;",
            ")",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Font;"
        }
    .end annotation

    const-string v0, "fontFamilies"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 130
    sget-object p2, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->Companion:Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts$Companion;

    invoke-virtual {p2}, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts$Companion;->getDEFAULT()Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;

    move-result-object p2

    .line 136
    :cond_0
    invoke-virtual {p2}, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->component1()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p2}, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->component2()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {p2}, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->component3()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    move-result-object v2

    .line 134
    invoke-virtual {p2}, Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;->component4()Ljava/lang/String;

    move-result-object v3

    .line 624
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 625
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;

    if-eqz v0, :cond_2

    .line 140
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_2
    if-eqz v1, :cond_3

    .line 141
    invoke-virtual {v7}, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;->getLang()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 627
    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_4
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 631
    new-instance v0, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion$findMatch$$inlined$sortedByDescending$1;

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion$findMatch$$inlined$sortedByDescending$1;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 146
    check-cast p1, Ljava/lang/Iterable;

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 633
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 634
    check-cast v1, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;

    .line 147
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;->getFonts()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 634
    :cond_5
    check-cast v1, Ljava/lang/Iterable;

    .line 635
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 637
    :cond_6
    check-cast v0, Ljava/util/List;

    .line 632
    check-cast v0, Ljava/lang/Iterable;

    .line 638
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    .line 148
    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->getStyle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_8
    move-object v0, v1

    :goto_2
    check-cast v0, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    if-nez v0, :cond_9

    .line 150
    move-object p1, p0

    check-cast p1, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getFallbackFont(): failed to find a matching for for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FontHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    move-object v1, v0

    :goto_3
    return-object v1
.end method

.method public final getFallbackFont(Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;)Lapp/rive/runtime/kotlin/fonts/Fonts$Font;
    .locals 3

    .line 116
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;->getSystemFonts()Ljava/util/Map;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "FontHelper"

    const-string v0, "getFallbackFont: no system font found"

    .line 118
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 121
    :cond_0
    invoke-virtual {p0, v0, p1}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;->findMatch$kotlin_release(Ljava/util/Map;Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;)Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    .line 123
    :cond_1
    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;->getFontFile(Lapp/rive/runtime/kotlin/fonts/Fonts$Font;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v2, p1

    :cond_2
    return-object v2
.end method

.method public final getFallbackFontBytes(Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;)[B
    .locals 1

    .line 249
    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;->getFallbackFont(Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;)Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 250
    sget-object v0, Lapp/rive/runtime/kotlin/fonts/FontHelper;->Companion:Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;

    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;->getFontBytes(Lapp/rive/runtime/kotlin/fonts/Fonts$Font;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getFontBytes(Lapp/rive/runtime/kotlin/fonts/Fonts$Font;)[B
    .locals 1

    const-string v0, "font"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;->getFontFile(Lapp/rive/runtime/kotlin/fonts/Fonts$Font;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    invoke-static {p1}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getFontFile(Lapp/rive/runtime/kotlin/fonts/Fonts$Font;)Ljava/io/File;
    .locals 2

    const-string v0, "font"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser;->Companion:Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->getSYSTEM_FONTS_PATHS$kotlin_release()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 168
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 169
    new-instance v1, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion$getFontFile$1;

    invoke-direct {v1, p1}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion$getFontFile$1;-><init>(Lapp/rive/runtime/kotlin/fonts/Fonts$Font;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 640
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/io/File;

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 641
    :goto_0
    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public final getSystemFonts()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Family;",
            ">;"
        }
    .end annotation

    const-string v0, "/system/etc/system_fonts.xml"

    const-string v1, "/system/etc/system_fallback.xml"

    const-string v2, "/system/etc/fonts.xml"

    .line 198
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 200
    sget-object v1, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion$getSystemFonts$validPath$1;->INSTANCE:Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion$getSystemFonts$validPath$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 642
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/io/File;

    .line 201
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_2

    .line 202
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/FileInputStream;

    .line 204
    sget-object v3, Lapp/rive/runtime/kotlin/fonts/FontHelper;->Companion:Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;

    .line 205
    sget-object v4, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser;->Companion:Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v4, v1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->parseFontsXML$kotlin_release(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v1

    .line 204
    invoke-direct {v3, v1}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;->filterNonExistingFonts(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 208
    :cond_2
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :goto_1
    return-object v1
.end method
