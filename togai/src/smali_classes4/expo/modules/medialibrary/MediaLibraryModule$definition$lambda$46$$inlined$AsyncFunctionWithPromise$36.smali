.class public final Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$36;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/medialibrary/MediaLibraryModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "[",
        "Ljava/lang/Object;",
        "Lexpo/modules/kotlin/Promise;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 MediaLibraryModule.kt\nexpo/modules/medialibrary/MediaLibraryModule\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,505:1\n8#2,4:506\n209#3,6:510\n215#3:519\n217#3,14:522\n232#3,18:550\n250#3,2:572\n766#4:516\n857#4,2:517\n1477#4:536\n1502#4,3:537\n1505#4,3:547\n1549#4:568\n1620#4,3:569\n37#5,2:520\n372#6,7:540\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10\n+ 2 MediaLibraryModule.kt\nexpo/modules/medialibrary/MediaLibraryModule\n*L\n246#1:506,4\n214#2:516\n214#2:517,2\n230#2:536\n230#2:537,3\n230#2:547,3\n249#2:568\n249#2:569,3\n215#2:520,2\n230#2:540,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "P0",
        "<name for destructuring parameter 0>",
        "",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "invoke",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$10"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/medialibrary/MediaLibraryModule;


# direct methods
.method public constructor <init>(Lexpo/modules/medialibrary/MediaLibraryModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$36;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 248
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, Lexpo/modules/kotlin/Promise;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$36;->invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V
    .locals 7

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 245
    aget-object p1, p1, v0

    .line 247
    check-cast p1, Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$36;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 514
    invoke-static {v1}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$getContext(Lexpo/modules/medialibrary/MediaLibraryModule;)Landroid/content/Context;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lexpo/modules/medialibrary/albums/AlbumUtilsKt;->getAssetsInAlbums(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 516
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 517
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 515
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 517
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 518
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 516
    check-cast v1, Ljava/util/Collection;

    new-array p1, v0, [Ljava/lang/String;

    .line 521
    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 519
    check-cast p1, [Ljava/lang/String;

    .line 522
    array-length v1, p1

    if-nez v1, :cond_3

    goto/16 :goto_3

    .line 526
    :cond_3
    sget-object v1, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    iget-object v2, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$36;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 527
    invoke-static {v2}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$getContext(Lexpo/modules/medialibrary/MediaLibraryModule;)Landroid/content/Context;

    move-result-object v2

    .line 528
    new-instance v3, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v3, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 526
    invoke-virtual {v1, v2, p1}, Lexpo/modules/medialibrary/MediaLibraryUtils;->getAssetsById(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 532
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 536
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 537
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 538
    move-object v5, v4

    check-cast v5, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;

    .line 535
    invoke-virtual {v5}, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 540
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    .line 539
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 543
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_4
    check-cast v6, Ljava/util/List;

    .line 547
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 550
    :cond_5
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 555
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;

    invoke-virtual {v0}, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 556
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$36;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 560
    new-instance v3, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$15$action$1;

    iget-object v4, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$36;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    invoke-direct {v3, v4, p1, v0, p2}, Lexpo/modules/medialibrary/MediaLibraryModule$definition$1$15$action$1;-><init>(Lexpo/modules/medialibrary/MediaLibraryModule;Ljava/util/List;Ljava/io/File;Lexpo/modules/kotlin/Promise;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, p2, v3}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$actionIfUserGrantedPermission(Lexpo/modules/medialibrary/MediaLibraryModule;Lexpo/modules/kotlin/Promise;Lkotlin/jvm/functions/Function0;)Lexpo/modules/medialibrary/MediaLibraryModule$Action;

    move-result-object p1

    .line 568
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 569
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 570
    check-cast v1, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;

    .line 567
    invoke-virtual {v1}, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;->getAssetId()Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 571
    :cond_7
    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$AsyncFunctionWithPromise$36;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 572
    invoke-static {v0, p2, p1}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$runActionWithPermissions(Lexpo/modules/medialibrary/MediaLibraryModule;Ljava/util/List;Lexpo/modules/medialibrary/MediaLibraryModule$Action;)V

    :goto_3
    return-void

    .line 555
    :cond_8
    new-instance p1, Lexpo/modules/medialibrary/AlbumPathException;

    invoke-direct {p1}, Lexpo/modules/medialibrary/AlbumPathException;-><init>()V

    throw p1

    .line 552
    :cond_9
    new-instance p1, Lexpo/modules/medialibrary/EmptyAlbumException;

    invoke-direct {p1}, Lexpo/modules/medialibrary/EmptyAlbumException;-><init>()V

    throw p1
.end method
