.class public final Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;
.super Ljava/lang/Object;
.source "FontHelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/rive/runtime/kotlin/fonts/SystemFontsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontHelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontHelpers.kt\napp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,622:1\n1#2:623\n1855#3,2:624\n1864#3,2:626\n1866#3:635\n1549#3:636\n1620#3,3:637\n1855#3:640\n1856#3:648\n372#4,7:628\n372#4,7:641\n*S KotlinDebug\n*F\n+ 1 FontHelpers.kt\napp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion\n*L\n297#1:624,2\n446#1:626,2\n446#1:635\n455#1:636\n455#1:637,3\n480#1:640\n480#1:648\n451#1:628,7\n483#1:641,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J>\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u00070\u000c2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00072\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00072\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J<\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u00070\u000c2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00072\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J!\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\u001f2\u0006\u0010 \u001a\u00020!H\u0000\u00a2\u0006\u0002\u0008\"J\u0010\u0010#\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010$\u001a\u00020%2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u001a\u0010&\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0016\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00072\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010(\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J$\u0010)\u001a\u0016\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u0007\u0018\u00010\u000c2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0016\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00072\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010+\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u001c\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\u001f2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J&\u0010-\u001a\u0004\u0018\u00010\u000f2\u0006\u0010.\u001a\u00020\u00102\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\u001fH\u0002J\u0010\u00100\u001a\u0002012\u0006\u0010\u001c\u001a\u00020\u001dH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R \u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00040\u000c0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;",
        "",
        "()V",
        "FALLBACK_FONTS_XML_PATH",
        "",
        "FONTS_XML_PATH",
        "SYSTEM_FONTS_PATHS",
        "",
        "getSYSTEM_FONTS_PATHS$kotlin_release",
        "()Ljava/util/List;",
        "SYSTEM_FONTS_XML_PATH",
        "fontFilesOrder",
        "Lkotlin/Pair;",
        "Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;",
        "fromFileFonts",
        "Lapp/rive/runtime/kotlin/fonts/Fonts$Family;",
        "Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;",
        "filesList",
        "Lapp/rive/runtime/kotlin/fonts/Fonts$FileFont;",
        "namesList",
        "familyName",
        "fromFontList",
        "fontList",
        "Lapp/rive/runtime/kotlin/fonts/Fonts$Font;",
        "lang",
        "variant",
        "keepReading",
        "",
        "parser",
        "Lorg/xmlpull/v1/XmlPullParser;",
        "parseFontsXML",
        "",
        "xmlFileStream",
        "Ljava/io/InputStream;",
        "parseFontsXML$kotlin_release",
        "readAlias",
        "readAxis",
        "Lapp/rive/runtime/kotlin/fonts/Fonts$Axis;",
        "readFamily",
        "readFileset",
        "readFont",
        "readLegacyFamily",
        "readNameset",
        "readText",
        "readXML",
        "remapAlias",
        "alias",
        "families",
        "skip",
        "",
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

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;-><init>()V

    return-void
.end method

.method private final fromFileFonts(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lkotlin/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$FileFont;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Family;",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;",
            ">;>;"
        }
    .end annotation

    .line 444
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 446
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 627
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lapp/rive/runtime/kotlin/fonts/Fonts$FileFont;

    .line 447
    invoke-static {}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser;->access$getFontFilesOrder$cp()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 448
    invoke-virtual {v3}, Lapp/rive/runtime/kotlin/fonts/Fonts$FileFont;->component1()Ljava/lang/String;

    move-result-object v9

    .line 449
    new-instance v2, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object v6, v2

    move-object v7, v5

    invoke-direct/range {v6 .. v12}, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;-><init>(Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 628
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 451
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 631
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 452
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    .line 455
    :cond_2
    move-object v1, p2

    check-cast v1, Ljava/lang/Iterable;

    .line 636
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 637
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 638
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 456
    new-instance v3, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v3

    move-object/from16 v6, p3

    invoke-direct/range {v4 .. v9}, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;-><init>(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 638
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 639
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 459
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/fonts/Fonts$FileFont;

    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$FileFont;->component2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$FileFont;->component3()Ljava/lang/String;

    move-result-object v1

    .line 461
    new-instance v4, Lkotlin/Pair;

    .line 462
    new-instance v5, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;

    move-object/from16 v6, p3

    invoke-direct {v5, v6, v3, v1, v0}, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 461
    invoke-direct {v4, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private final fromFontList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Font;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Family;",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;",
            ">;>;"
        }
    .end annotation

    .line 477
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 479
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 640
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    .line 481
    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->component1()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    move-result-object v3

    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->component2()Ljava/lang/String;

    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->component3()Ljava/lang/String;

    .line 641
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 483
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 644
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    :cond_0
    check-cast v4, Ljava/util/List;

    .line 484
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 487
    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->getName()Ljava/lang/String;

    move-result-object p1

    .line 489
    new-instance v1, Lkotlin/Pair;

    .line 490
    new-instance v2, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;

    invoke-direct {v2, p1, p3, p2, v0}, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 496
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 489
    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 1

    .line 608
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final readAlias(Lorg/xmlpull/v1/XmlPullParser;)Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;
    .locals 4

    const-string v0, "name"

    const/4 v1, 0x0

    .line 582
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "to"

    .line 583
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "weight"

    .line 585
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 587
    sget-object v1, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->Companion:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;

    invoke-virtual {v1, v3}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;->fromString(Ljava/lang/String;)Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    move-result-object v1

    .line 590
    :cond_0
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 592
    new-instance p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, v0, v2, v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;-><init>(Ljava/lang/String;Ljava/lang/String;Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;)V

    return-object p1
.end method

.method private final readAxis(Lorg/xmlpull/v1/XmlPullParser;)Lapp/rive/runtime/kotlin/fonts/Fonts$Axis;
    .locals 3

    const-string v0, "tag"

    const/4 v1, 0x0

    .line 575
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "stylevalue"

    .line 576
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 577
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 578
    new-instance p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Axis;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, v0, v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Axis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private final readFamily(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lapp/rive/runtime/kotlin/fonts/Fonts$Family;
    .locals 8

    const-string v0, "lang"

    const/4 v1, 0x0

    .line 341
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "variant"

    .line 342
    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ignore"

    .line 343
    invoke-interface {p2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 346
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 348
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 349
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 351
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getName(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "font"

    .line 353
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 354
    invoke-direct {p0, p2}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->readFont(Lorg/xmlpull/v1/XmlPullParser;)Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    move-result-object v5

    .line 355
    invoke-virtual {v5}, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->getWeight()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 356
    invoke-virtual {v5}, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->getWeight()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_1
    invoke-virtual {v5}, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;->getWeight()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_0

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 362
    :cond_2
    invoke-direct {p0, p2}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    const-string/jumbo p2, "true"

    .line 365
    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "1"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    .line 366
    :cond_4
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    :goto_1
    return-object v1

    .line 370
    :cond_6
    new-instance p2, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;

    invoke-direct {p2, p1, v2, v0, v4}, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object p2
.end method

.method private final readFileset(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$FileFont;",
            ">;"
        }
    .end annotation

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 554
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 555
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 557
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    .line 558
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "variant"

    const/4 v2, 0x0

    .line 560
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "lang"

    .line 561
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 563
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 564
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 566
    new-instance v4, Lapp/rive/runtime/kotlin/fonts/Fonts$FileFont;

    invoke-direct {v4, v3, v1, v2}, Lapp/rive/runtime/kotlin/fonts/Fonts$FileFont;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final readFont(Lorg/xmlpull/v1/XmlPullParser;)Lapp/rive/runtime/kotlin/fonts/Fonts$Font;
    .locals 11

    const-string v0, "font"

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 501
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "weight"

    .line 502
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    sget-object v3, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;->Companion:Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;

    invoke-virtual {v3, v0}, Lapp/rive/runtime/kotlin/fonts/Fonts$Weight$Companion;->fromString(Ljava/lang/String;)Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    move-result-object v5

    const-string v0, "style"

    .line 504
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 509
    :goto_0
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 510
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 511
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getText(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_1

    goto :goto_0

    .line 518
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "axis"

    .line 519
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 520
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->readAxis(Lorg/xmlpull/v1/XmlPullParser;)Lapp/rive/runtime/kotlin/fonts/Fonts$Axis;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    :cond_2
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 526
    :cond_3
    new-instance p1, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "toString(...)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lapp/rive/runtime/kotlin/fonts/Fonts$Font;-><init>(Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method private final readLegacyFamily(Lorg/xmlpull/v1/XmlPullParser;)Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Lkotlin/Pair<",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Family;",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;",
            ">;>;"
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 381
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    const-string/jumbo v3, "variant"

    const/4 v4, 0x0

    .line 382
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "lang"

    .line 383
    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 385
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 386
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 388
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getName(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 389
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x32f5fa9a    # -1.447256E8f

    if-eq v7, v8, :cond_5

    const v8, 0x300c4f

    if-eq v7, v8, :cond_3

    const v8, 0x66a331f7

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    const-string v7, "nameset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 398
    :cond_2
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->readNameset(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    .line 397
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    const-string v7, "font"

    .line 389
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    .line 403
    :cond_4
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->readFont(Lorg/xmlpull/v1/XmlPullParser;)Lapp/rive/runtime/kotlin/fonts/Fonts$Font;

    move-result-object v6

    .line 404
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v7, "fileset"

    .line 389
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 407
    :goto_1
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 392
    :cond_6
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->readFileset(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    .line 391
    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 411
    :cond_7
    move-object p1, v2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_8

    .line 412
    invoke-direct {p0, v2, v5, v3}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->fromFontList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 415
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    return-object v4

    .line 417
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapp/rive/runtime/kotlin/fonts/Fonts$FileFont;

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/fonts/Fonts$FileFont;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 418
    :goto_2
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_b

    return-object v4

    .line 420
    :cond_b
    invoke-direct {p0, v1, v0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->fromFileFonts(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final readNameset(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 539
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 542
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    .line 543
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 546
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2

    .line 530
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 531
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getText(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    return-object v0

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private final readXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Family;",
            ">;"
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v1, "familyset"

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 280
    invoke-interface {p1, v2, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 283
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 285
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "getName(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "family"

    .line 287
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v1, "name"

    .line 288
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 289
    sget-object v4, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser;->Companion:Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->readFamily(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lapp/rive/runtime/kotlin/fonts/Fonts$Family;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 290
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-nez v1, :cond_0

    .line 292
    :cond_2
    move-object v1, p0

    check-cast v1, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;

    .line 294
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->readLegacyFamily(Lorg/xmlpull/v1/XmlPullParser;)Lkotlin/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 295
    invoke-virtual {v4}, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    check-cast v1, Ljava/lang/Iterable;

    .line 624
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;

    .line 298
    invoke-direct {p0, v4, v0}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->remapAlias(Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;Ljava/util/Map;)Lapp/rive/runtime/kotlin/fonts/Fonts$Family;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 299
    invoke-virtual {v4}, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 294
    :cond_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_0

    :cond_5
    const-string v4, "alias"

    .line 306
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 307
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;

    move-result-object v1

    .line 308
    invoke-direct {p0, v1, v0}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->remapAlias(Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;Ljava/util/Map;)Lapp/rive/runtime/kotlin/fonts/Fonts$Family;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 309
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 313
    :cond_6
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method private final remapAlias(Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;Ljava/util/Map;)Lapp/rive/runtime/kotlin/fonts/Fonts$Family;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Family;",
            ">;)",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Family;"
        }
    .end annotation

    .line 324
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 327
    :cond_0
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Alias;->getWeight()Lapp/rive/runtime/kotlin/fonts/Fonts$Weight;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    .line 328
    :cond_1
    invoke-virtual {p2}, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;->getFonts()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    return-object p2

    .line 330
    :cond_2
    invoke-virtual {p2}, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;->component1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;->component2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;->component3()Ljava/lang/String;

    move-result-object p2

    .line 332
    new-instance v3, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;

    .line 336
    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 332
    invoke-direct {v3, v1, v2, p2, p1}, Lapp/rive/runtime/kotlin/fonts/Fonts$Family;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v3
.end method

.method private final skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-lez v1, :cond_2

    .line 599
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v0, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final getSYSTEM_FONTS_PATHS$kotlin_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    invoke-static {}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser;->access$getSYSTEM_FONTS_PATHS$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final parseFontsXML$kotlin_release(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lapp/rive/runtime/kotlin/fonts/Fonts$Family;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "xmlFileStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    .line 270
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    .line 271
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 272
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 275
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lapp/rive/runtime/kotlin/fonts/SystemFontsParser$Companion;->readXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
