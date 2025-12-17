.class public final Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 4 MediaLibraryModule.kt\nexpo/modules/medialibrary/MediaLibraryModule\n*L\n1#1,505:1\n8#2,4:506\n449#3:510\n270#4,29:511\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6\n*L\n220#1:506,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u00012\u0010\u0010\u0003\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00050\u0004H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P0",
        "<name for destructuring parameter 0>",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$OnStartObserving$$inlined$AsyncFunction$3"
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

    iput-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$3;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 219
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$3;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 219
    aget-object p1, p1, v0

    .line 221
    check-cast p1, Ljava/lang/String;

    iget-object p1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$3;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 511
    invoke-static {p1}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$getImagesObserver$p(Lexpo/modules/medialibrary/MediaLibraryModule;)Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 518
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$3;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 519
    invoke-static {v0}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$getContext(Lexpo/modules/medialibrary/MediaLibraryModule;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$3;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 522
    new-instance v2, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;

    iget-object v3, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$3;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    const/4 v4, 0x1

    invoke-direct {v2, v3, p1, v4}, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;-><init>(Lexpo/modules/medialibrary/MediaLibraryModule;Landroid/os/Handler;I)V

    .line 525
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 527
    move-object v5, v2

    check-cast v5, Landroid/database/ContentObserver;

    .line 524
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 521
    invoke-static {v1, v2}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$setImagesObserver$p(Lexpo/modules/medialibrary/MediaLibraryModule;Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;)V

    iget-object v1, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$3;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    .line 531
    new-instance v2, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;

    iget-object v3, p0, Lexpo/modules/medialibrary/MediaLibraryModule$definition$lambda$46$$inlined$OnStartObserving$3;->this$0:Lexpo/modules/medialibrary/MediaLibraryModule;

    const/4 v5, 0x3

    invoke-direct {v2, v3, p1, v5}, Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;-><init>(Lexpo/modules/medialibrary/MediaLibraryModule;Landroid/os/Handler;I)V

    .line 534
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 536
    move-object v3, v2

    check-cast v3, Landroid/database/ContentObserver;

    .line 533
    invoke-virtual {v0, p1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 531
    invoke-static {v1, v2}, Lexpo/modules/medialibrary/MediaLibraryModule;->access$setVideosObserver$p(Lexpo/modules/medialibrary/MediaLibraryModule;Lexpo/modules/medialibrary/MediaLibraryModule$MediaStoreContentObserver;)V

    .line 510
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
